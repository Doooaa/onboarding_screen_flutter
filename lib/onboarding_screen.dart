
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:IntroductionScreen(
            showNextButton: true,
            next:const Icon(Icons.arrow_forward_ios),
          done: const Text("Next", style: TextStyle(fontWeight: FontWeight.bold)),
           onDone: (){},
           pages:[
               PageViewModel(
                 image:getImage('assets/images/img.png'),
                 title: "Order",
                 body:"Best restaurants delivering to your doorstep. Browse menus and build your order in seconds",
                 decoration: getPageDecoration()
               ),
             PageViewModel(
               image:getImage('assets/images/img_2.png'),
               title: "Search",
               body:"Discover restaurants by type of meal ",
               decoration: getPageDecoration()
             ),
             PageViewModel(
               image:getImage('assets/images/img_1.png'),
               title: "Eat",
               body:"Explore curated lists of top restaurants, cafes. pubs, and bars in Mumbai, based on trends",
               decoration: getPageDecoration()
             ),
            ]
        )
    );
  }
}
Widget getImage(String path) {
  return Center(child:Image.asset(path,width: 700,));
}
PageDecoration getPageDecoration() {
   return  const PageDecoration(
       pageColor:Colors.white,
      titleTextStyle: TextStyle(fontSize: 28,fontWeight:FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 25),
      bodyPadding:EdgeInsets.fromLTRB(0, 5, 10, 10),
      imagePadding: EdgeInsets.only(top: 100),
   );
}
