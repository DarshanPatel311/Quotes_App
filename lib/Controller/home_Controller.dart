
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:quotes_app/helper/api_helper.dart';

import '../helper/db_helper.dart';

class HomeController extends GetxController {

  static final DatabaseHelper _instance = DatabaseHelper();
  var isLoding = true.obs;
  var quotesList = [].obs;
  var favouriteList = [].obs;
  final ApiService apiService=ApiService();


  RxInt _currentIndex = 0.obs;

  void changeIndex(int index)
  {
    print(index);
    _currentIndex.value = index;
    print(_currentIndex);
  }
  RxInt get currentIndex => _currentIndex;



  void fetchFavorites() async {
    favouriteList.value = await _instance.getFavorites();
  }

  void addFavorite(Map<String, dynamic> quote) async {
    await _instance.insertFavorite(quote);
    favouriteList.add(quote);
  }

  void removeFavorite(Map<String, dynamic> quote) async {
    await _instance.removeFavorite(quote['id']);
    favouriteList.removeWhere((element) => element['id'] == quote['id']);
  }

  void toggleFavorite(Map<String, dynamic> quote) {
    if (isFavorite(quote)) {
      removeFavorite(quote);
    } else {
      addFavorite(quote);
    }
  }

  bool isFavorite(Map<String, dynamic> quote) {
    return favouriteList.any((element) => element['quote'] == quote['quote']);
  }




}