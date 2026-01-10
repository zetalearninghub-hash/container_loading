# container_loading

Loading container shows shimmer or progress indicator until content loads..


## Features

 - Container loader
 - delay and loading Container
 - Can change container design

## Getting started

To use this package, add container_loading as a dependency in your pubspec.yaml file.

## Usage

Minimal example:

```dart
    ContainerLoading()
```

Custom settings:

```dart
  ContainerLoading(
              loaderColor: Colors.red,
              backgroundColor: Colors.yellow,
              height: 300,
              width: 500,
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("hai"),
            ),
```

## See also
