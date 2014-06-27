<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>settlement-point</se:Name>
    <UserStyle>
      <se:Name>settlement-point</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>Большой город</se:Name>
          <se:Description>
            <se:Title>Большой город</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>PLACE</ogc:PropertyName>
                <ogc:Literal>city</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>2.4</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#000000</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>0.5</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Маленький город</se:Name>
          <se:Description>
            <se:Title>Маленький город</se:Title>
            <se:Abstract>town</se:Abstract>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>PLACE</ogc:PropertyName>
                <ogc:Literal>town</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>2.2</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Село</se:Name>
          <se:Description>
            <se:Title>Село</se:Title>
            <se:Abstract>village</se:Abstract>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>PLACE</ogc:PropertyName>
                <ogc:Literal>village</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:MinScaleDenominator>362656</se:MinScaleDenominator>
          <se:MaxScaleDenominator>1</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>2.2</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Деревня</se:Name>
          <se:Description>
            <se:Title>Деревня</se:Title>
            <se:Abstract>Деревня</se:Abstract>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>PLACE</ogc:PropertyName>
                <ogc:Literal>hamlet</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:MinScaleDenominator>362656</se:MinScaleDenominator>
          <se:MaxScaleDenominator>1</se:MaxScaleDenominator>
          <se:PointSymbolizer>
            <se:Graphic>
              <se:Mark>
                <se:WellKnownName>circle</se:WellKnownName>
                <se:Fill>
                  <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                </se:Fill>
                <se:Stroke>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                </se:Stroke>
              </se:Mark>
              <se:Size>1.2</se:Size>
            </se:Graphic>
          </se:PointSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
