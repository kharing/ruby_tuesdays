## Exercise #1

Write a class `Rectangle` and a class `Triangle`. Both classes should inherit from a class that is called `Shape`.  All
shapes have the attribute `color`. In addition, a triangle has a `base` and a `height` whereas a rectangle has
the attributes `length` and `width`. All classes (`Shape`, `Rectangle`, `Triangle`) should have a instance method
`inspect` printing out information about its attributes, e.g., "Shape of color=green". Rectangles and triangle compute
their `area` differently. Implement a method `area` for both which computes it.

## Exercise #2

Write a class `Circle` and a class `Cylinder`. A circle is also a `Shape` (see exercise above) and `Cylinder` inherits
from `Circle`. A circle has a `radius`. In addition, a cylinder has a `height`. Both classes have a instance method
`inspect` printing out the details of the shape. A circle and a cylinder both can compute their `area` but do these
slightly differently. Only a cylinder has a method `volume` which computes its volume.

## Exercise #3

Write a class `Point`. A point has a x- and a y-coordinate. It has a method `inspect` printing out these coordinates.
Write a class `MovablePoint` that inherits from `Point`. It has the methods `move_up`, `move_down`, `move_left`,
`move_right`. When these methdods are called on a movable point the coordinates should change accordingly.
