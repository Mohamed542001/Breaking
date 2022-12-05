import 'package:bloc/bloc.dart';
import 'package:breaking/models/quotes_model/quotes_model.dart';
import 'package:breaking/repositories/quotes_repository/quotes_repository.dart';
import 'package:flutter/material.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {

  final QuotesRepository quotesRepository;

  List<QuotesModel> quotes = [];

  QuotesCubit(this.quotesRepository) : super(QuotesInitial());


  List<QuotesModel> getCharacterQuotes(String charName){
    quotesRepository.getCharacterQuotes(charName).then((quotes) {
      emit(QuotesLoaded(quotes));
      this.quotes = quotes;
    });

    return quotes;
  }

}
