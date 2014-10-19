{union, subtraction, intersection, exclusion, pathArrToStr} = require './raphael.boolean'


rect = (x, y, width, height, r = 0) ->
  {type: 'rect', x, y, width, height, r}

path = (pathStr) ->
  type: 'path',
  path: pathStr

circle = (cx, cy, r) ->
  {type: 'circle', cx, cy, r}

ellipse = (cx, cy, rx, ry) ->
  {type: 'ellipse', cx, cy, rx, ry}

ellipseFromBounds = (x, y, width, height) ->
  cx = x + width / 2
  cy = y + height / 2

  rx = width / 2
  ry = height / 2

  ellipse(cx, cy, rx, ry)


module.exports = {
  rect, path, circle, ellipse, ellipseFromBounds
  union, subtraction, intersection, exclusion, pathArrToStr
}
