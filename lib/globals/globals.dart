import 'package:firebase_auth/firebase_auth.dart';
import 'package:stock_predictor/models/symbols_models.dart';

User? user;
List<Company> companies = [];
Map<String, String> companySymbols = {};

createSymbolsMap(List<Company> companies) {
  companies.forEach((company) {
    companySymbols.addEntries({company.symbol: company.name}.entries);
  });
}
