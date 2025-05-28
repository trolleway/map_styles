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
</style>
'''

def simplify_svg(input_path):
    # Parse SVG
    ET.register_namespace('', "http://www.w3.org/2000/svg")
    tree = ET.parse(input_path)
    root = tree.getroot()

    # Insert CSS at the beginning
    style_elem = ET.fromstring(CSS_DEFINITION)
    root.insert(0, style_elem)

    # Replace <text> elements
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
        'x': str(width * 0.02),
        'y': str(height - 20)
    })
    copyright_text.text = 'Map data: (c) Openstreetmap'
    root.append(copyright_text)

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