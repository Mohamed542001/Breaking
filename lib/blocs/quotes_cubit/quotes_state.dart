part of 'quotes_cubit.dart';

@immutable
abstract class QuotesState {}

class QuotesInitial extends QuotesState {}
class QuotesLoaded extends QuotesState {
  final List<QuotesModel> quotes;

  QuotesLoaded(this.quotes);
}