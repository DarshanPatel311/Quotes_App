import 'package:get/get.dart';
import 'package:quotes_app/helper/api_helper.dart';

class HomeController extends GetxController {

  var isLoding = true.obs;
  var quotesList = [].obs;
  final ApiService apiService=ApiService();


  RxInt _currentIndex = 0.obs;

  void changeIndex(int index)
  {
    print(index);
    _currentIndex.value = index;
    print(_currentIndex);
  }
  RxInt get currentIndex => _currentIndex;









}