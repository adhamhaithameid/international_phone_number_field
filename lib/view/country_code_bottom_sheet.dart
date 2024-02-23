import 'package:flutter/material.dart';

import '../models/country_code_model.dart';
import '../models/dialog_config.dart';
import 'country_widget.dart';
import 'rixa_textfield.dart';

class CountryCodeBottomSheet extends StatefulWidget {
  final List<CountryCodeModel> countries;
  final Function(CountryCodeModel countryCodeModel) onSelected;
  final CountryCodeModel? selected;
  final DialogConfig dialogConfig;
  const CountryCodeBottomSheet(
      {super.key,
      required this.countries,
      required this.onSelected,
      this.selected,
      required this.dialogConfig});

  @override
  State<CountryCodeBottomSheet> createState() => _CountryCodeBottomSheetState();
}

class _CountryCodeBottomSheetState extends State<CountryCodeBottomSheet> {
  late List<CountryCodeModel> mainCountries, searchCountries;
  final TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    mainCountries = widget.countries;
    searchCountries = widget.countries.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: Container(
                height: 5,
                width: 145,
                decoration: BoxDecoration(
                    color: widget.dialogConfig.topBarColor,
                    borderRadius: BorderRadius.circular(30)),
              )),
              const SizedBox(height: 25),
              Text(
                widget.dialogConfig.title,
                style: widget.dialogConfig.titleStyle,
              ),
              const SizedBox(height: 14),
              RixaTextField(
                hintText: widget.dialogConfig.searchHintText,
                controller: searchController,
                textStyle: widget.dialogConfig.searchBoxTextStyle,
                hintStyle: widget.dialogConfig.searchBoxHintStyle,
                radius: widget.dialogConfig.searchBoxRadius,
                enabledColor: Colors.transparent,
                focusedColor: Colors.transparent,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 24),
                  child: Icon(
                    Icons.search,
                    color: widget.dialogConfig.searchBoxIconColor,
                    size: 20,
                  ),
                ),
                onChanged: (value) {
                  search(value);
                },
                isUnderline: false,
                noInputBorder: true,
                backgroundColor: widget.dialogConfig.searchBoxBackgroundColor,
              ),
            ]),
          ),
          Expanded(
            child: ListView(
              children: [
                if (widget.selected != null &&
                    searchCountries.any(
                        (element) => element.code == widget.selected?.code))
                  TextButton(
                      onPressed: () {
                        widget.onSelected(widget.selected!);
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: CountryWidget(
                          countryCodeModel: widget.selected!,
                          isSelected: true,
                          dialogConfig: widget.dialogConfig)),
                for (var country in searchCountries
                    .where((element) => element.code != widget.selected?.code))
                  TextButton(
                      onPressed: () {
                        widget.onSelected(country);
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: CountryWidget(
                          countryCodeModel: country,
                          isSelected: false,
                          dialogConfig: widget.dialogConfig))
              ],
            ),
          )
        ],
      ),
    );
  }

  void search(String search) {
    searchCountries = mainCountries
        .where((element) =>
            element.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    setState(() {});
  }
}
