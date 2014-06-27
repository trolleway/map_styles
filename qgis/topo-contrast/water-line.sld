<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>water-line</se:Name>
    <UserStyle>
      <se:Name>water-line</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name></se:Name>
          <se:Description>
            <se:Title>WATERWAY is ''</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>WATERWAY</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#b5d2d6</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>каналы</se:Name>
          <se:Description>
            <se:Title>каналы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>WATERWAY</ogc:PropertyName>
                <ogc:Literal>canal</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#1f63b0</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:GraphicStroke>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>line</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#1f63b0</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#1f63b0</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>0.5</se:Size>
                </se:Graphic>
                <se:Gap>
                  <ogc:Filter>
                    <ogc:Literal>2</ogc:Literal>
                  </ogc:Filter>
                </se:Gap>
              </se:GraphicStroke>
            </se:Stroke>
            <se:PerpendicularOffset>0.5</se:PerpendicularOffset>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>дренажные каналы</se:Name>
          <se:Description>
            <se:Title>дренажные каналы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>WATERWAY</ogc:PropertyName>
                <ogc:Literal>drain</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#1f63b0</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.15</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>реки</se:Name>
          <se:Description>
            <se:Title>реки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>WATERWAY</ogc:PropertyName>
                <ogc:Literal>river</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#1f63b0</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.7</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#2edafc</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>ручьи</se:Name>
          <se:Description>
            <se:Title>ручьи</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>WATERWAY</ogc:PropertyName>
                <ogc:Literal>stream</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#1f63b0</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
