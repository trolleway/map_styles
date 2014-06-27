<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>railway-line</se:Name>
    <UserStyle>
      <se:Name>railway-line</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>разобранные</se:Name>
          <se:Description>
            <se:Title>разобранные</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>abandoned</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.4</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:GraphicStroke>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>line</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#ff0000</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>0.5</se:Size>
                  <se:Rotation>
                    <ogc:Filter>
                      <ogc:Literal>45</ogc:Literal>
                    </ogc:Filter>
                  </se:Rotation>
                </se:Graphic>
                <se:Gap>
                  <ogc:Filter>
                    <ogc:Literal>2</ogc:Literal>
                  </ogc:Filter>
                </se:Gap>
              </se:GraphicStroke>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>строящиеся</se:Name>
          <se:Description>
            <se:Title>строящиеся</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>construction</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">5 1</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>перекрёстки</se:Name>
          <se:Description>
            <se:Title>перекрёстки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>crossing</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#2525ff</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.26</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>лёгкий жд транспорт</se:Name>
          <se:Description>
            <se:Title>лёгкий жд транспорт</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>light_rail</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#969696</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>узкоколейка</se:Name>
          <se:Description>
            <se:Title>узкоколейка</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>narrow_gauge</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.3</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:GraphicStroke>
                <se:Graphic>
                  <se:Mark>
                    <se:WellKnownName>line</se:WellKnownName>
                    <se:Fill>
                      <se:SvgParameter name="fill">#ff0000</se:SvgParameter>
                    </se:Fill>
                    <se:Stroke>
                      <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                    </se:Stroke>
                  </se:Mark>
                  <se:Size>1</se:Size>
                </se:Graphic>
                <se:Gap>
                  <ogc:Filter>
                    <ogc:Literal>3</ogc:Literal>
                  </ogc:Filter>
                </se:Gap>
              </se:GraphicStroke>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>платформы</se:Name>
          <se:Description>
            <se:Title>платформы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>platform</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>рельсы</se:Name>
          <se:Description>
            <se:Title>рельсы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>rail</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#000000</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>боковые пути</se:Name>
          <se:Description>
            <se:Title>боковые пути</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>siding</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#919191</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>метро</se:Name>
          <se:Description>
            <se:Title>метро</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>subway</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#9b9b9b</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">round</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">round</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">1 2</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>трамваи</se:Name>
          <se:Description>
            <se:Title>трамваи</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>RAILWAY</ogc:PropertyName>
                <ogc:Literal>tram</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#919191</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
