## Map and Annotation Components

## How to use:

## Map
Map(map).load(latitude: latitude, longitude: longitude, delta: 0.01)

## Annotation

### creating one
lastAnnotation = Annotation(map).add(latitude: latitude, longitude: longitude, title: "New Point")

### deleting one
Annotation(map).remove(lastAnnotation)
