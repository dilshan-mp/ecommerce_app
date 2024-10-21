import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  final String? image;
  const MyCartPage({super.key, this.image});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Color(0xFFF1F4FB),
            width: 354,
            height: 146,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  width: 87,
                  height: 77,
                  margin: const EdgeInsets.only(
                    left: 21,
                    top: 21,
                    bottom: 47,
                  ),
                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1675186049366-64a655f8f537?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2xvdGhlc3xlbnwwfHwwfHx8MA%3D%3D',
                    fit: BoxFit.cover,
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 13),
                      child: Text(
                        'Printed Shirt',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF6342E8)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 13),
                      child: Text(
                        'GEETA COLLECTION',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFA1A1A1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$48',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'USD',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                //IconButton(onPressed: (){}, icon: Icon())
              ],
            ),
          );
        },
      ),
    );
  }
}
