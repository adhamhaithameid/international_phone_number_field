
# International Phone Number Field

International Phone Number Field is a Flutter package that simplifies the creation of phone number input fields in Flutter applications. It provides an easy-to-use interface for users to input phone numbers in international format.

## Features

- Simple integration with Flutter widgets.
- Automatically formats phone numbers as users type.
- Supports country code selection.
- Customizable styling and behavior to suit your application's needs.
- Lightweight and easy to use.

## Installation

You can install the International Phone Number Field package by adding it to your `pubspec.yaml` file:

```yaml
dependencies:
  international_phone_number_field: ^1.0.0
```

Then, run `flutter pub get` to install the package.

## Usage

To use the Package, simply import it in your Dart code and include it in your widget tree:

```dart
import 'package:flutter/material.dart';
import 'package:international_phone_number_field/international_phone_number_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('International Phone Number Field Example'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Enter your phone number:',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 16.0),
                InternationalPhoneNumberField(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
## Available Parameters
```dart
InternationalPhoneNumberInput({
    Key key,
      this.selectorConfig = const SelectorConfig(),
      @required this.onInputChanged,
      this.onInputValidated,
      this.onSubmit,
      this.onFieldSubmitted,
      this.validator,
      this.onSaved,
      this.textFieldController,
      this.keyboardAction,
      this.keyboardType = TextInputType.phone,
      this.initialValue,
      this.hintText = 'Phone number',
      this.errorMessage = 'Invalid phone number',
      this.selectorButtonOnErrorPadding = 24,
      this.spaceBetweenSelectorAndTextField = 12,
      this.maxLength = 15,
      this.isEnabled = true,
      this.formatInput = true,
      this.autoFocus = false,
      this.autoFocusSearch = false,
      this.autoValidateMode = AutovalidateMode.disabled,
      this.ignoreBlank = false,
      this.countrySelectorScrollControlled = true,
      this.locale,
      this.textStyle,
      this.selectorTextStyle,
      this.inputBorder,
      this.inputDecoration,
      this.searchBoxDecoration,
      this.textAlign = TextAlign.start,
      this.textAlignVertical = TextAlignVertical.center,
      this.scrollPadding = const EdgeInsets.all(20.0),
      this.focusNode,
      this.cursorColor,
      this.autofillHints,
      this.countries
    });

```dart
SelectorConfig({
    this.selectorType = PhoneInputSelectorType.DROPDOWN,
    this.showFlags = true,
    this.useEmoji = false,
    this.backgroundColor,
    this.countryComparator,
    this.setSelectorButtonAsPrefixIcon = false,
});
```
