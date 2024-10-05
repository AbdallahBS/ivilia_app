import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ovilia/pages/travel_home.dart';

import '../models/onboard_model.dart';

class TravelOnBoardingScreen extends StatefulWidget {
  const TravelOnBoardingScreen({super.key});

  @override
  State<TravelOnBoardingScreen> createState() => _TravelOnBoardingScreenState();
}

class _TravelOnBoardingScreenState extends State<TravelOnBoardingScreen> {
  int currentIndex = 0;

  Widget dotIndicator(int index){
    return AnimatedContainer(
        duration:const Duration(milliseconds: 400),
       margin: const EdgeInsets.only(right: 6),
      width: 30,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index == currentIndex ?  Colors.white : Colors.white54
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        PageView.builder(
        itemCount: onboarding.length,
        onPageChanged:(value){
        setState((){
          currentIndex = value;
        });
    },
        itemBuilder: (context,index) {
          return Image.network(onboarding[index].image , fit: BoxFit.cover, );
        } ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end
            ,
            children: [
              const SizedBox(height: 40,),
              GestureDetector(onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> const TravelHomeScreen()
                ), (route) => false);
              },
              child: Visibility(child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white54
                  ),
                  borderRadius:  BorderRadius.circular(10),
                ),
                child: const Text(
                  "Skip" ,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ) ,
                ),
              )
              ),
              ),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(onboarding[currentIndex].name ,
                  style: const TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    height: 1
                  ),
                  ),
                  const SizedBox( height: 20,),
                  const Text(
                    "We travelin are ready to help you on  vacation around Tunisia",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                ],
              )
            ],
          ),

        ),
        Align(
          alignment:  Alignment.bottomCenter,
          child:
          SizedBox(
            height: 245,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(onboarding.length , dotIndicator),
                ),
                const SizedBox( height: 20),
                ClipRRect(
                  borderRadius : BorderRadius.only(topRight: Radius.circular(35) , topLeft: Radius.circular(35)),
                  child: Container(
                    padding: const EdgeInsets.all(45),
                    color: Colors.white,

                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const TravelHomeScreen()
                            ), (route) => false);
                          },
                          child:
                          Container(
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const  [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  spreadRadius : 15,
                                  blurRadius: 15,
                                )
                              ],
                              color : Colors.black
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    "Lets get Started",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        const Text.rich(TextSpan(
                          children : [
                            TextSpan(text: "Already have account" , style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16
                            ) ),
                            TextSpan(text: " Login " , style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ) )
                          ]
                        ))
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}
