
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

#stations {

  marker-fill:#b02430;
  marker-line-color:#000;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-width: 8;

  text-name: [label];
  text-face-name: 'Verdana Regular';
  
  text-fill: #000;
  text-size: 10;
  text-halo-fill: fadeout(white, 30%);
  text-halo-radius: 2.5;
  //text-placement-type: simple;
  text-dx: 9px;
  text-avoid-edges : true;
  text-allow-overlap : true;
  
  text-wrap-width: 300;
  text-wrap-before: true;
  
  [position='right'] {
  text-placement-type : simple;
  text-placements: "E";
    }
   [position='left'] {
  text-placement-type : simple;
  text-placements: "W";
    } 
  }
  

#orientirs {
  text-name: [name];
  text-face-name: 'Verdana Bold';
    text-size: 17;
  text-halo-fill: fadeout(white, 30%);
  text-halo-radius: 2.5;
    text-fill: #25687c;
}


#railwaysclosed  {
  ::line {
    line-width: 3;
    line-color: #717171;
  }
  ::dash {
    line-color: #ffffff;
    line-width: 1;
    line-dasharray: 6, 1;
  }
}


#railwaysproposed {
  ::line {
    line-width: 2;
    line-color: #ff0000;
  }
 
}
