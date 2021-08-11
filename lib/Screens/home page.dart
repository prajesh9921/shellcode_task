import 'package:flutter/material.dart';
import 'package:shellcode_task/constant.dart';
import 'package:shellcode_task/Screens/Custom_widgets/Services_page_widgets.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("images/clean_ac.jpg"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 110.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Servicing_card(label: "AC Servicing",),
                    Servicing_card(label: "AC repair",),
                    Servicing_card(label: "Installation & uninstallation",),
                    SizedBox(height: 20.0,),
                    // Doc Poster
                    Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 150.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          overflow: Overflow.clip,
                          children: [
                            Positioned(
                                top: 40.0,
                                right: -70.0,
                                child: CircleAvatar(radius: 90.0,backgroundColor: Colors.purple,)),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage("images/doc.png"),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5.0, top: 45.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Expert Technicians", style: TextStyle(color: Color(0xFF0D176E), fontSize: 18.0, fontFamily: 'Lato', fontWeight: FontWeight.w700),),
                                  SizedBox(height: 10.0,),
                                  Text("Trained, Experienced,Trusted", style: TextStyle(color: Color(0xFF0D176E), fontSize: 11.0, fontFamily: 'Lato', fontWeight: FontWeight.w500),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    // FAQ Text
                    Center(
                        child: Text("FAQs", style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                        ),)),

                    // FAQ Cards
                    FAQ_card(),
                    FAQ_card(),
                    FAQ_card(),
                    FAQ_card(),

                    SizedBox(height: 40.0,),

                    Text("Testimonials", style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Lato'
                    ),),

                    SizedBox(height: 12.0,),

                    TM_card(),
                    TM_card(),
                    TM_card(),
                    TM_card(),


                  ],
                ),
              )
            ],
          ),
        )

      ),
    );
  }
}






