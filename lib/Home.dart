import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_ui/util/widgets/GridItem.dart';



class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  final List<Map<String, dynamic>> items = [

    {"imagePath": "images/ic_cash_in.png", "title": "এম টু পি"},
    {"imagePath": "images/ic_b2b.png", "title": "সেটেলমেন্ট"},
    {"imagePath": "images/ic_sadhin.jpg", "title": "স্বাধীন"},
    {"imagePath": "images/ic_registration.png", "title": "নিবন্ধন"},
    {"imagePath": "images/ic_transaction_history.png", "title": "বিবরণী"},
    {"imagePath": "images/ic_bill.jpg", "title": "বিল পে"},
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(

            child: Stack(
              children: [
                // 🖼️ Background image container

                Image.asset(
                  height: 200.0,
                  width: double.infinity,
                  "images/dashboard_bg.png",
                  fit: BoxFit.cover,
                ),

                Container(
                  height: double.infinity,
                  width: double.infinity,

                ),

                // 📍 Icons and card inside Positioned
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      // 🔼 Icons Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.notifications, color: Colors.white),

                            Column(
                              children: [
                                SizedBox(height: 20),
                                Text("নগদ", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30

                                ),)
                              ],
                            ),

                            Icon(Icons.menu, color: Colors.white),
                          ],
                        ),
                      ),

                      SizedBox(height: 30), // আইকনের নিচে স্পেস

                      // 🟨 Card view under icons
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70.0),
                        child: Card(
                          
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 10 ),
                            child: Row(
                              children: [
 
                                Image.asset("images/unnamed.png", width: 20, height: 20,),

                                SizedBox(width: 20),

                                Text("ব্যালেন্স জানতে ট্যাপ করুন", style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),)
                                
                                
                                
                                
                              ],
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 30), // আইকনের নিচে স্পেস

                      // 🟨 Card view under icons

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:5),
                        child: Card(
                          margin: EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.grey, width: 1)
                          ),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: items.length,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.1,
                            ),
                            itemBuilder: (context, index) {
                              bool isLastColumn = (index % 2 == 1);
                              bool isLastRow = (index >= items.length - 2);

                              return Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: isLastColumn
                                        ? BorderSide.none
                                        : BorderSide(color: Colors.grey.shade300, width: 1),
                                    bottom: isLastRow
                                        ? BorderSide.none
                                        : BorderSide(color: Colors.grey.shade300, width: 1),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0), // ⬅️ এখানে padding, যাতে content border থেকে দূরে থাকে
                                  child: GridItem(
                                    imagePath: items[index]["imagePath"],
                                    title: items[index]["title"],
                                  ),
                                ),
                              );
                            },
                          ),
                        )


                      ),



                    ],
                  ),
                ),
              ],
            )




          )
          ),
      )
    );



  }
}
