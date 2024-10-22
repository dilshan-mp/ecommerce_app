import 'dart:convert';

import 'package:ecommerce_app/views/detailsPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});
  @override
  State<PopularPage> createState() => _PopularPageState();
}

List? DataResponse;
List<bool> isFavoriteList = List.filled(10, false);
List<int> favoriteItems = [];

class _PopularPageState extends State<PopularPage> {
  int columns = 2;

  Future apiCall() async {
    http.Response response;
    response = await http.get(
      Uri.parse("https://fakestoreapi.com/products/"),
    );
    if (response.statusCode == 200) {
      setState(() {
        DataResponse = json.decode(response.body);
        isFavoriteList = List.filled(DataResponse?.length ?? 0, false);
      });
    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 112,
                height: 20,
                margin: const EdgeInsets.only(
                  top: 48,
                  left: 29,
                ),
                child: const Text(
                  'FILTER & SORT',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                width: 18,
                height: 18,
                margin: const EdgeInsets.only(left: 170, top: 48),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(18, 18),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/images/Grid View.png',
                    width: 18,
                    height: 18,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 18,
                height: 18,
                margin: const EdgeInsets.only(left: 10, top: 48, right: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(18, 18),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/images/Full View.png',
                    width: 18,
                    height: 18,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 33),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 10,
                  childAspectRatio: 170 / 276,
                ),
                itemCount: DataResponse == null ? 0 : DataResponse!.length,
                itemBuilder: (context, index) {
                  var item = DataResponse?[index];
                  return SizedBox(
                    width: 170,
                    height: 276,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              image: item?['image'],
                              title: item?['title'],
                              description: item?['description'],
                              price: item?['price'],
                              category: item?['category'],
                            ),
                          ),
                        );
                      },
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              width: 170,
                              height: 208,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xFFF1F4FB),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 18,
                                        left: 110,
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isFavoriteList[index] =
                                                !isFavoriteList[index];
                                            if (isFavoriteList[index]) {
                                              favoriteItems.add(index);
                                            } else {
                                              favoriteItems.remove(index);
                                            }
                                          });
                                        },
                                        icon: Icon(
                                          isFavoriteList[index]
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          size: 30,
                                          color: isFavoriteList[index]
                                              ? Colors.pink[400]
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 92,
                                      height: 131,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(56),
                                      ),
                                      child: Image.network(
                                        item?['image'] ?? '',
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 145,
                              height: 15,
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                item?['title'] ?? 'No title',
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    height: 0.937),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: 145,
                              height: 14,
                              margin: const EdgeInsets.only(
                                top: 8,
                              ),
                              child: Text(
                                '\$${item?['price'] ?? '0.00'} USD',
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    height: 1,
                                    color: Color(0xFFA1A1A1)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
