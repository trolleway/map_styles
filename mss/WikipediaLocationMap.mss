/*
Style for tilemill for generate https://en.wikipedia.org/wiki/Template:Location_map
It will be in another projection, but with recomended colors.
Styles conventions: https://en.wikipedia.org/wiki/Wikipedia:WikiProject_Maps/Conventions/Exchanges_maps
*/

Map {
  background-color: #C6ECFF;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #E0E0E0;
 [NAME='Russia'] {
    polygon-fill: #FEFEE9;
    }
}

#boundary-lines {
  line-width:1;
  line-color:#A08070;
}

#railways {
  ::line {
    line-width: 1;
    line-color: #000000;
  }
}

