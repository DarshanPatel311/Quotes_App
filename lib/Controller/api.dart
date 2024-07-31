import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiController extends GetxController {
  var isLoading = true.obs;
  var quotesList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    fetchQuotes();
    super.onInit();

  }

  void fetchQuotes() async {
    try {
      final response = await http.get(Uri.parse('https://sheetdb.io/api/v1/48zwv1lgh0bke'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        quotesList.value = List<Map<String, dynamic>>.from(data);
      }
    } finally {
      isLoading.value = false;
    }
  }
}