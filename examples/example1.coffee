{pathArrToStr, rect, path, ellipseFromBounds, exclusion} = require '../lib/main'

log = (res) ->
  console.log("""
    <svg height="2000" version="1.1" width="2000" xmlns="http://www.w3.org/2000/svg">
      <path fill="#0000aa" stroke="none" d="#{res}"></path>
    </svg>
    """)


shape1 = rect(304, 226, 328, 328)

shape2 = path('M 213.5,239 L 476.5,279 L 716,233.5 L 469, 74 Z')

res = path(exclusion(shape1, shape2))

shape3 = rect(174, 128, 309, 251, 2)

res = path(exclusion(res, shape3))

shape4 = rect(318, 148, 302, 302)

res = path(exclusion(res, shape4))

shape5 = ellipseFromBounds(344, 209, 257, 223)

res = exclusion(res, shape5, true)

log(pathArrToStr(res))
