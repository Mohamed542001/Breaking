import 'package:breaking/models/quotes_model/quotes_model.dart';
import 'package:breaking/utilities/dio_helper/dio_helper.dart';

class QuotesRepository{
  final DioHelper dioHelper;

  QuotesRepository(this.dioHelper);


  Future<List<QuotesModel>> getCharacterQuotes(String charName) async {
    final quotes = await dioHelper.getCharacterQuotes(charName);
    return quotes.map((charQuotes)=> QuotesModel.fromJson(charQuotes)).toList();
  }
}