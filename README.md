# Accordion

This Flutter package allows developer to use **Accordion** that can be customized easily

## Features
* Easily create accordion-style UI in your Flutter app.
* Customizable appearance to match your app's design.
* Support for expanding/collapsing content.

## Getting Started
You have to add dependency to use this package into your Flutter app.
Run this command:

With Dart:
```
dart pub add clean_accordions
```

With Flutter:

```
flutter pub add clean_accordions
```
 
This will add a line like this to your package's pubspec.yaml 

OR add it manually

```dart
dependencies:
  clean_accordions: ^1.0.0
```
Run an implicit `dart pub get`

Add this line at the beginning of the dart file:
```
import 'package:clean_accordions/clean_accordions.dart';
```
## Usage
Here is the Simple use of the Accordion:

```dart
Accordion(
  title: Text('Hey there'),
  subTitle: [
    Text('Welcome'),
    Text('Back')
  ]
)
```

