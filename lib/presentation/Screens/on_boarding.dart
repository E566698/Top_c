import'package:flutter/material.dart';

import 'package:project_grad/component/color.dart';
import 'package:project_grad/presentation/Screens/before_login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class BoardingModel{
  final String image;
  final String body;
  final String title;
  var size;
  BoardingModel({
    required this.image,
    required this.body,
    required this.title,
    required this.size
  });
}
class  OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardController = PageController();
  var indexBoarding=0;

  List<BoardingModel> boarding=[
    BoardingModel(
         title:"Get a doctor easily for your disease",
        body:  "You will find a great doctors,Every doctor here is with MBBS,All types of patients are served",
        image:'assets/img/onb2.jpeg',
      size: 2.5,
    ),
    BoardingModel(
        title: "You can easily know the result of the chest x-ray",
        body:"You will upload the chest x-ray images then know the result of your x-ray and the doctor will see it",
        image:'assets/img/onb2.jpeg',
      size: 3,
    ),
    BoardingModel(
        title: "Easly know about your disease",
        body:" Learn about chest disease such as pneumonia anh everything new about the disease",
        image:'assets/img/onb2.jpeg',
      size: 2.5,

    ),
  ];
  bool isLast =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: boardController,
                // onPageChanged: (int index){
                //   if(index ==boarding.length-1){
                //     setState(() {
                //       isLast=true;
                //     });
                //   }else{
                //     setState(() {
                //       isLast=false;
                //     });
                //   }
                // },
                onPageChanged: (index){
                  indexBoarding=index;
                },
                itemBuilder:(context,index){
                  return BuildBoardingItem(
                      boarding[index]);},
                itemCount:boarding.length,
              ),
            ),
           Expanded(
             flex: 1,
               child:  SmoothPageIndicator(controller: boardController,
                   effect: ExpandingDotsEffect(
                       dotColor: Colors.grey,
                       activeDotColor: defaultColor,
                       dotHeight: 10,
                       dotWidth: 10,
                       expansionFactor: 3,
                       spacing: 5
                   ),
                   count: boarding.length),
           ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.grey,
                  child:Text('Skip',
                    style:TextStyle(
                        color: Colors.white
                    ),),
                  onPressed:(){
                    navigateAndFinish(context,Try());
                  },),
                FloatingActionButton(
                  backgroundColor: defaultColor,
                    child: Icon(Icons.arrow_forward_ios),
                    onPressed:(){
                      navigateAndFinish(context,Try());
                },),

                // Stack(
                //   alignment: Alignment.center,
                //   children: [
                //     CircleAvatar(
                //       radius: 40,
                //       backgroundColor: Colors.grey.shade200,
                //     ),
                //     // InkWell(
                //     //   onTap: () {
                //     //     // Navigator.pushReplacementNamed(context, LoginScreen());
                //     //     navigateAndFinish(context){
                //     //       return MaterialPageRoute(builder: LoginScreen());
                //     //     }
                //     //   },
                //     //   child: CircleAvatar(
                //     //     radius: 34,
                //     //     backgroundColor: Colors.grey,
                //     //     child: Text(
                //     //       "Skip",
                //     //       style: TextStyle(
                //     //         color: Colors.white,
                //     //         fontSize: 15
                //     //       ),
                //     //     ),
                //     //   ),
                //     // ),
                //   ],
                // ),
                // Stack(
                //   alignment: Alignment.center,
                //   children: [
                //     CircleAvatar(
                //       radius: 40,
                //       backgroundColor: defaultColor,
                //     ),
                //     InkWell(
                //       onTap: () {
                //         if (indexBoarding == boarding.length - 1) {
                //         //  Navigator.pushReplacementNamed(context, LoginScreen());
                //         }
                //         boardController.nextPage(
                //             duration: Duration(
                //               milliseconds: 750,
                //             ),
                //             curve: Curves.fastLinearToSlowEaseIn);
                //       },
                //       child: CircleAvatar(
                //         radius: 34,
                //         backgroundColor: defaultColor,
                //         child: Icon(
                //           Icons.arrow_forward_ios_outlined,
                //           color: Colors.white,
                //           size: 20,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ]),
          ]),
      ),);

  }


  }

  Widget BuildBoardingItem(BoardingModel model)=>Column(
    children: [
      Image(
          image: AssetImage( '${model.image}')),
      SizedBox(height: 20,),
      Text('${model.title}'),
      SizedBox(height: 20,),
      Text('${model.body}')
    ],
  );

  void navigateAndFinish(context , widget) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>widget,),
          (route) => false,);
  }