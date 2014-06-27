<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns:se="http://www.opengis.net/se">
  <NamedLayer>
    <se:Name>landuse-polygon</se:Name>
    <UserStyle>
      <se:Name>landuse-polygon</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name>садоводческие товарищества</se:Name>
          <se:Description>
            <se:Title>садоводческие товарищества</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>allotments</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>бассейны водостока</se:Name>
          <se:Description>
            <se:Title>бассейны водостока</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>basin</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b5d2d6</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>районы под новую застройку</se:Name>
          <se:Description>
            <se:Title>районы под новую застройку</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>brownfield</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#9c9e6b</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>кладбища</se:Name>
          <se:Description>
            <se:Title>кладбища</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>cemetery</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#adc8ad</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#8ca28c</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.26</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:GraphicFill>
                <se:Graphic>
                  <se:ExternalGraphic>
                    <se:OnlineResource xlink:type="simple" xlink:href="file:///landuse/cemetery.svg"/>
                    <se:Format>image/svg+xml</se:Format>
                  </se:ExternalGraphic>
                  <se:Size>3</se:Size>
                  <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                  <se:SvgParameter name="stroke-width">0.3</se:SvgParameter>
                </se:Graphic>
              </se:GraphicFill>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>деловые районы</se:Name>
          <se:Description>
            <se:Title>деловые районы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>commercial</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>стройки</se:Name>
          <se:Description>
            <se:Title>стройки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>construction</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#9c9e6b</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>фермы</se:Name>
          <se:Description>
            <se:Title>фермы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>farm</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#efdbbd</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>фермы</se:Name>
          <se:Description>
            <se:Title>фермы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>farmland</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#efdbbd</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>сельскохозяйственные дворы</se:Name>
          <se:Description>
            <se:Title>сельскохозяйственные дворы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>farmyard</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>гаражи</se:Name>
          <se:Description>
            <se:Title>гаражи</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>garages</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#96916e</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.25</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>пастбища</se:Name>
          <se:Description>
            <se:Title>пастбища</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>grass</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ceefad</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>районы под застройку</se:Name>
          <se:Description>
            <se:Title>районы под застройку</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>greenfield</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#9c9e6b</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>теплицы</se:Name>
          <se:Description>
            <se:Title>теплицы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>greenhouse_horticulture</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ceefad</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#84996f</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.5</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>промышленные территории</se:Name>
          <se:Description>
            <se:Title>промышленные территории</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>industrial</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>свалки</se:Name>
          <se:Description>
            <se:Title>свалки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>landfill</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#9c9e6b</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>луга</se:Name>
          <se:Description>
            <se:Title>луга</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>meadow</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ceefad</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>автостоянки</se:Name>
          <se:Description>
            <se:Title>автостоянки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>parking</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f7efb5</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>карьеры</se:Name>
          <se:Description>
            <se:Title>карьеры</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>quarry</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#c6c3c6</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#807e80</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.26</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>под нужды ж/д</se:Name>
          <se:Description>
            <se:Title>под нужды ж/д</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>railway</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ded3d6</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>зоны отдыха</se:Name>
          <se:Description>
            <se:Title>зоны отдыха</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>recreation_ground</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#31cf9c</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>искуственные водоёмы</se:Name>
          <se:Description>
            <se:Title>искуственные водоёмы</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>reservoir</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#b5d2d6</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>жилая застройка</se:Name>
          <se:Description>
            <se:Title>жилая застройка</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>residential</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ff5500</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>торговля</se:Name>
          <se:Description>
            <se:Title>торговля</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>retail</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#f7dbde</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#f78390</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.25</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>соляные выработки</se:Name>
          <se:Description>
            <se:Title>соляные выработки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>salt_pond</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#efead4</se:SvgParameter>
            </se:Fill>
            <se:Stroke>
              <se:SvgParameter name="stroke">#7d7d7d</se:SvgParameter>
              <se:SvgParameter name="stroke-width">0.26</se:SvgParameter>
            </se:Stroke>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>минипарки</se:Name>
          <se:Description>
            <se:Title>минипарки</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>village_green</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ceefad</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>виноградники</se:Name>
          <se:Description>
            <se:Title>виноградники</se:Title>
          </se:Description>
          <ogc:Filter>
            <ogc:Filter>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>LANDUSE</ogc:PropertyName>
                <ogc:Literal>vineyard</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Filter>
          </ogc:Filter>
          <se:PolygonSymbolizer>
            <se:Fill>
              <se:SvgParameter name="fill">#ceefad</se:SvgParameter>
            </se:Fill>
          </se:PolygonSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
