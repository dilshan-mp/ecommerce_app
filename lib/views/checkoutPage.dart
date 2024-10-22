import 'package:ecommerce_app/views/successPage.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Credit/Debit card',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 374,
            height: 240,
            decoration: const BoxDecoration(
                //color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/card1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            // color: Color(),
            width: 34,
            height: 29,
            margin: const EdgeInsets.only(
              top: 37,
            ),
            child: Image.asset('assets/images/Take a photo icon.png'),
          ),
          Container(
            //color: Colors.amber,
            width: 103,
            height: 22,
            margin: const EdgeInsets.only(
              top: 50,
              right: 250,
              left: 20,
            ),
            child: const Text(
              'Name On Card',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              width: 354, // Set width to 354 pixels
              height: 48, // Set height to 48 pixels
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color: const Color(0xFFD2D2D2), // Border color
                  width: 1, // Border width
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none, // No border shown
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 10), // Padding inside the text field
                  hintText: 'Enter Card Name', // Placeholder text (optional)
                ),
              ),
            ),
          ),
          Container(
            //color: Colors.amber,
            width: 103,
            height: 22,
            margin: const EdgeInsets.only(
              top: 24,
              right: 250,
              left: 20,
            ),
            child: const Text(
              'Card Number',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              width: 354, // Set width to 354 pixels
              height: 48, // Set height to 48 pixels
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color: const Color(0xFFD2D2D2), // Border color
                  width: 1, // Border width
                ),
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none, // No border shown
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10), // Padding inside the text field
                      hintText:
                          'Enter Card Number', // Placeholder text (optional)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/mc_symbol 1 (1).png'),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 22),
                child: Container(
                  width: 168,
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          color: Colors.white,
                          width: 103,
                          height: 22,
                          child: const Text(
                            'Expiry Date',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      // Add the TextFormField below the label
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                        ), // Padding for space between label and text field
                        child: Container(
                          width: 166, // Set width to 166 pixels
                          height: 48, // Set height to 48 pixels
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)), // Border radius
                            border: Border.all(
                              color: const Color(0xFFD2D2D2),
                              width: 1,
                            ),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              hintText: 'MM/YY',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(), // Spacer between the two columns
              Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  right: 25,
                ),
                child: SizedBox(
                  width: 168,
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          color: Colors.white,
                          width: 103,
                          height: 22,
                          child: const Text(
                            'CVC',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      // Add the TextFormField below the label
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          right: 5,
                        ), // Padding for space between label and text field
                        child: Container(
                          width: 166, // Set width to 166 pixels
                          height: 48, // Set height to 48 pixels
                          decoration: BoxDecoration(
                            color: Colors.white, // Background color
                            borderRadius: const BorderRadius.all(
                                Radius.circular(8)), // Border radius
                            border: Border.all(
                              color: const Color(0xFFD2D2D2), // Border color
                              width: 1, // Border width
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none, // No border shown
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal:
                                          10), // Padding inside the text field
                                  hintText: '474', // Placeholder text
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/Hint.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomButton(
            buttonText: 'USE THIS CARD',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuccessPage(),
                ),
              );
            },
            margin: EdgeInsets.only(top: 20),
          )
        ],
      ),
    );
  }
}
