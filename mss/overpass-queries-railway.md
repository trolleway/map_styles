Main railways

```
[out:json][timeout:25];
// gather results
(
  // query part for: “railway=rail and service!=*”

  way["railway"="rail"]["service"!~".*"]({{bbox}});

);
// print results
out body;
>;
out skel qt;
```
