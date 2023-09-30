import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  String url = 'https://dummyjson.com/products';
  Dio client = Dio();

  final response = await client.get(url);

  Map<String, dynamic> jsonData = response.data;

  List<dynamic> products = jsonData['products'];

  double sum = 0.0;

  products.forEach((p) {
    var rating = p['rating'];
    sum += rating;
  });
  double average = sum / products.length;
  print('average rating: $average');
}
