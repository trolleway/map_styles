import argparse
import os
import re
from xml.etree import ElementTree as ET

CSS_DEFINITION = '''<style type="text/css">
.regular_label {
    font-family: sans;
    font-weight: 400;
    font-size: 42px;
    fill:black;
}
.copyright {
    font-family: sans;
    font-size: 28px;
    fill: #888;
}
.stroked_label {
    font-family: sans;
    font-weight: 400;
    font-size: 42px;
    fill:black;
    stroke:white;
    stroke-width: 10px;
    paint-order: stroke fill;
    stroke-linejoin: round;
}
</style>
'''

def extract_transform_translation(g_element):
    ''' get X Y position from transform'''
    transform = g_element.get('transform')
    if transform:
        match = re.match(r'matrix\(([^)]+)\)', transform)
        if match:
            parts = match.group(1).split(',')
            if len(parts) == 6:
                tx = float(parts[4].strip())
                ty = float(parts[5].strip())
                return tx, ty
    return None, None
    
def simplify_svg(input_path):
    # Parse SVG
    ET.register_namespace('', "http://www.w3.org/2000/svg")
    tree = ET.parse(input_path)
    root = tree.getroot()

    # Insert CSS at the beginning
    style_elem = ET.fromstring(CSS_DEFINITION)
    root.insert(0, style_elem)

    # Replace <text> elements v1
    for elem in root.iter():
        if elem.tag.endswith('text'):
            # Only replace if it matches the pattern
            attrib = elem.attrib
            if (
                'font-family' in attrib and
                attrib.get('font-family') == 'Bahnschrift' and
                attrib.get('font-weight') == '400' and
                attrib.get('font-size') == '42'
            ):
                # Save x, y
                x = attrib.get('x', '0')
                y = attrib.get('y', '0')
                text_content = elem.text
                elem.attrib.clear()
                elem.set('class', 'regular_label')
                elem.set('x', x)
                elem.set('y', y)
                elem.text = text_content
                
    # Replace <text> elements v2
    ns = {'svg': "http://www.w3.org/2000/svg"}
    labels = []
    for g in root.findall('.//svg:g', ns):
        text_elem = g.find('svg:text', ns)
        if text_elem is not None:
            x, y = extract_transform_translation(g)
            content = text_elem.text
            if x is not None and y is not None:
                labels.append({'x': x, 'y': y, 'text': content})
                print(x,y,content)

                # Remove <g> element from its parent
                for parent in root.iter():
                    if g in list(parent):
                        parent.remove(g)
                        break
    
    # Get SVG canvas size
    width = root.attrib.get('width')
    height = root.attrib.get('height')
    if width is None or height is None:
        # Try viewBox
        viewbox = root.attrib.get('viewBox')
        if viewbox:
            _, _, width, height = viewbox.split()
        else:
            width, height = '1000', '1000'
    try:
        width = float(re.sub('[^0-9.]', '', width))
        height = float(re.sub('[^0-9.]', '', height))
    except Exception:
        width, height = 1000, 1000

    # Add copyright text at bottom
    copyright_text = ET.Element('text', {
        'class': 'copyright',
        'x': str(round(width * 0.02)),
        'y': str(round(height - 20))
    })
    copyright_text.text = 'Map data: © Openstreetmap, labels transliterated'
    root.append(copyright_text)
    
    for label in labels:
        labelobj=ET.Element('text', {
        'class': 'stroked_label',
        'x': str(label['x']),
        'y': str(label['y'])})
        labelobj.text=label['text']
        root.append(labelobj)

    return ET.tostring(root, encoding='unicode')

def main():
    parser = argparse.ArgumentParser(description='Simplify SVG for Wikimedia.')
    parser.add_argument('svg_path', help='Path to SVG file')
    args = parser.parse_args()

    input_path = args.svg_path
    out_dir = os.path.join(os.path.dirname(input_path), 'svg4wikimedia')
    os.makedirs(out_dir, exist_ok=True)
    out_path = os.path.join(out_dir, os.path.basename(input_path))

    simplified_svg = simplify_svg(input_path)
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(simplified_svg)
    print(f'Simplified SVG saved to {out_path}')

if __name__ == '__main__':
    main()