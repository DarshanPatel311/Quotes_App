import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiController extends GetxController {
  var favoritesList = <String>[].obs;
  var love=false.obs;// Change this line to store strings
  var Affirmation=false.obs;// Change this line to store strings
  var Motivation=false.obs;// Change this line to store strings

  void addCart(String quote) { // Change parameter to String
    favoritesList.add(quote);
    print(favoritesList);
  }

  void loveistrue(int index){
    if(favoritesList[index]=="Love"){

      love=true.obs;

    }





  }
  void Affirmationistrue(int index){

    if(favoritesList[index]=="Affirmation"){

      Affirmation=true.obs;
      print(Affirmation);

    }



  }
  void Motivationistrue(int index){


    if(favoritesList[index]=="Motivation"){

      Motivation=true.obs;

    }


  }

  var isLoading = true.obs;
  var quotesList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    fetchQuotes();
    super.onInit();
  }

  void fetchQuotes() async {
    try {
      final response = await http
          .get(Uri.parse('https://sheetdb.io/api/v1/48zwv1lgh0bke'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        quotesList.value = List<Map<String, dynamic>>.from(data);
        print("API Done-----------------------------");
      }
    } finally {
      isLoading.value = false;
    }
  }
}
