Design package of the navigation application using the Atomic Design method.

## Features

* Input, buttons, images, selects, among other Widgets customized and adapted for the Navigation application

## Getting started

* The only requirement is to have a Flutter version higher than 3.8.0
* To integrate the package to your project you must add the url of the repository to your pubspec.yaml file in your flutter project.

```yaml
dependencies:
    flutter:
        sdk: flutter
    navigation_design:
        git:
            url: https://github.com/jlamilla/navigation_design.git
```

## Usage

* A simple example of using this package is to compare the default Flutter Text Widget and the one implemented in this package.

```dart
//default text widget in flutter
Text( 'Example',
        style: TextStyle(
          color: Color(0xFF1F1A62),
          fontSize: 18,
          fontWeight: 2,
          fontFamily: 'RobotoMono',
        ),
        textAlign: TextAlign.center,
        maxLines: 4,
    );

//modified text widget
NormalText('Example');

```