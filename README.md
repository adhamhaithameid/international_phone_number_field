
# intl_phone_number_field

A customised Flutter TextFormField to input international phone number along with the country code.

<img src="https://raw.githubusercontent.com/FlutterWay/files/main/intl_phone_number_field/intl_phone_number_slayt_new.png"/>

# Usage
InternationalPhoneNumberInput

## Available Parameters

```dart
InternationalPhoneNumberInput(
  height: 60,
  controller: controller,
  inputFormatters: const [],
  formatter: MaskedInputFormatter('### ### ## ##'),
  initCountry: CountryCodeModel(
      name: "United States", dial_code: "+1", code: "US"),
  betweenPadding: 23,
  onInputChanged: (phone) {
    print(phone.code);
    print(phone.dial_code);
    print(phone.number);
    print(phone.rawFullNumber);
    print(phone.rawNumber);
    print(phone.rawDialCode);
  },
  loadFromJson: loadFromJson,
  dialogConfig: DialogConfig(
    backgroundColor: const Color(0xFF444448),
    searchBoxBackgroundColor: const Color(0xFF56565a),
    searchBoxIconColor: const Color(0xFFFAFAFA),
    countryItemHeight: 55,
    topBarColor: const Color(0xFF1B1C24),
    selectedItemColor: const Color(0xFF56565a),
    selectedIcon: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Image.asset(
        "assets/check.png",
        width: 20,
        fit: BoxFit.fitWidth,
      ),
    ),
    textStyle: TextStyle(
        color: const Color(0xFFFAFAFA).withOpacity(0.7),
        fontSize: 14,
        fontWeight: FontWeight.w600),
    searchBoxTextStyle: TextStyle(
        color: const Color(0xFFFAFAFA).withOpacity(0.7),
        fontSize: 14,
        fontWeight: FontWeight.w600),
    titleStyle: const TextStyle(
        color: Color(0xFFFAFAFA),
        fontSize: 18,
        fontWeight: FontWeight.w700),
    searchBoxHintStyle: TextStyle(
        color: const Color(0xFFFAFAFA).withOpacity(0.7),
        fontSize: 14,
        fontWeight: FontWeight.w600),
  ),
  countryConfig: CountryConfig(
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: const Color(0xFF3f4046)),
        borderRadius: BorderRadius.circular(8),
      ),
      noFlag: false,
      textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600)),
  validator: (number) {
    if (number.number.isEmpty) {
      return "The phone number cannot be left emptyssss";
    }
    return null;
  },
  phoneConfig: PhoneConfig(
    focusedColor: const Color(0xFF6D59BD),
    enabledColor: const Color(0xFF6D59BD),
    errorColor: const Color(0xFFFF5494),
    labelStyle: null,
    labelText: null,
    floatingLabelStyle: null,
    focusNode: null,
    radius: 8,
    hintText: "Phone Number",
    borderWidth: 2,
    backgroundColor: Colors.transparent,
    decoration: null,
    popUpErrorText: true,
    autoFocus: false,
    showCursor: false,
    textInputAction: TextInputAction.done,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    errorTextMaxLength: 2,
    errorPadding: const EdgeInsets.only(top: 14),
    errorStyle: const TextStyle(
        color: Color(0xFFFF5494), fontSize: 12, height: 1),
    textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400),
    hintStyle: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 16,
        fontWeight: FontWeight.w400),
  ),
)
```

| Parameter                           | Datatype                                 |             Initial Value             |
|---------------------------------    |----------------------------------        |---------------------------------------|
| controller                          | TextEditingController                    |        TextEditingController()        |
| height                              | double                                   |                  60                   |
| inputFormatters                     | List<TextInputFormatter>                 |                  []                   |
| formatter                           | MaskedInputFormatter                     | MaskedInputFormatter('### ### ## ##') |
| initCountry                         | CountryCodeModel                         | CountryCodeModel(name: "United States", dial_code: "+1", code: "US") |
| betweenPadding                      | double                                   |                  23                   |
| onInputChanged                      | Function(IntPhoneNumber number)          |                 null                  |
| loadFromJson                        | Future<String?> Function()               |                 null                  |
| dialogConfig                        | DialogConfig                             |            DialogConfig()             |
| countryConfig                       | CountryConfig                            |            CountryConfig()            |
| phoneConfig                         | PhoneConfig                              |            PhoneConfig()              |
| validator                           | String? Function(IntPhoneNumber number)? |                 null                  |
 

## Easy Usage Validator
Display your error message using the validator function. This is very simple to do

```dart
InternationalPhoneNumberInput(
  validator: (number) {
    if (number.number.isEmpty) {
      return "The phone number cannot be left emptyssss";
    }
    return null;
  },
)
```

### Error Configuration

```dart
PhoneConfig(
  errorColor: const Color(0xFFFF5494),
  popUpErrorText: true,
  autovalidateMode: AutovalidateMode.onUserInteraction,
  errorTextMaxLength: 2,
  errorPadding: const EdgeInsets.only(top: 14),
  errorStyle: const TextStyle(
      color: Color(0xFFFF5494), fontSize: 12, height: 1)
)
```

### What is popUpErrorText for?
If you set popUpErrorText to 'true', no field is allocated for the error message. Therefore the height of InternationalPhoneNumberInput will be increased when the error appears. But if you set popUpErrorText to 'false', the space for the error message is allocated automatically. Therefore, the error message will not cause a height difference in your design


<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <table>
                 <tr>
                 	<h2>popUpErrorText=true</h2>
                    <img src="https://raw.githubusercontent.com/FlutterWay/files/main/intl_phone_number_field/popup_error_text_true.gif"  />
                  </tr>
                </table>
            </td>   
            <td style="text-align: center">
                <table>
                 <tr>
                 	<h2>popUpErrorText=false</h2>
                    <img src="https://raw.githubusercontent.com/FlutterWay/files/main/intl_phone_number_field/popup_error_text_false.gif" />
                  </tr>
                </table>
            </td>   
        </tr> 
    </table>
</div>

## IntPhoneNumber
Function "onInputChanged" will return an object with IntPhoneNumber type to you. <br></br>
IntPhoneNumber:
```dart
print(phone.code);          //US
print(phone.dial_code);     //+1
print(phone.number);        //553 142 88 74
print(phone.rawFullNumber); //15531428874
print(phone.rawNumber);     //5531428874
print(phone.rawDialCode);   //1
```

## Load JSON data
You can fetch the country codes from your own json file and upload them to the package.<br></br>
For that, you must fill your json file with a certain format. Example on this:

```json
[
    {
        "name": "Aland Islands",
        "dial_code": "+358",
        "code": "AX"
    },
    {
        "name": "Albania",
        "dial_code": "+355",
        "code": "AL"
    },
    {
        "name": "Algeria",
        "dial_code": "+213",
        "code": "DZ"
    }
]
```


```dart
InternationalPhoneNumberInput(loadFromJson: loadFromJson)
Future<String> loadFromJson() async {
   return await rootBundle.loadString('assets/countries/country_list.json');
 }
```

See the `example` file for a more detailed example


## To Contribute
* If you **found a bug** or **have a feature request**, open an issue.
* If you **want to contribute**, submit a pull request.