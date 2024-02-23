import '../models/country_code_model.dart';
import 'country_list.dart';

class GeneralUtil {
 
  static Future<List<CountryCodeModel>> loadJson() async {
    List<CountryCodeModel> listCountryCodeModel =
        List<CountryCodeModel>.from(countries.map((model) => CountryCodeModel.fromJson(model)));

    return listCountryCodeModel;
  }
}