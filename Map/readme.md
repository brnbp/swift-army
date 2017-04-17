## Map and Annotation Components

### How to use:

# Map
Map(map).load(lat: latitude, lon: longitude, delta: 0.01)

# Annotation

### creating one
lastAnnotation = Annotation(map).add(lat: latitude, lon: longitude, title: "New Point")

### deleting one
Annotation(map).remove(lastAnnotation)
