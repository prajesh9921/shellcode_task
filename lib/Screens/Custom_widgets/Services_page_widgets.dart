import 'package:flutter/material.dart';
import 'package:shellcode_task/constant.dart';

class Servicing_card extends StatelessWidget {
  String label;
  Servicing_card({this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10.0),
      elevation: 1.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.0,vertical: 9.0),
        child: Stack(
          children: [
            Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Kheading_text_style,),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Image.asset("images/Star.png"),
                  SizedBox(width: 3.5,),
                  Text("4.5", style: Krating_font,),
                  SizedBox(width: 11.5,),
                  Text("23k ratings", style: Kleading_rating_font,),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  CircleAvatar(radius: 3.0, backgroundColor: Colors.black,),
                  SizedBox(width: 5.0,),
                  Text("Lorem ipsum dolor sit amet", style: Klorem_font,),
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  CircleAvatar(radius: 3.0, backgroundColor: Colors.black,),
                  SizedBox(width: 5.0,),
                  Text("sed do eiusmod tempor incididunt ", style: Klorem_font,),
                ],
              ),
              SizedBox(height: 12.0,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFDADADA)
                    ),
                    child: Text("Split AC Service", style: Ksmall_font,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22.0),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFDADADA)
                    ),
                    child: Text("Split AC Service", style: Ksmall_font,),
                  )
                ],
              )


            ],
          ),
            Positioned(
              top: 18.0,
              right: 1.0,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 13.0)),
                    backgroundColor: MaterialStateProperty.all(Color(0xFFC9002B))
                  ),
                  child: Text("Book Now", style: Kbtn_font,)),
            )
          ],
        ),
      ),
    );
  }
}

//------------------------------------------------------------------------------------------------------//

class FAQ_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 5.0),
      elevation: 0.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD2D2D2)),
          borderRadius: BorderRadius.circular(5.0),
          ),
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 250.0,
              child: Text("Do I need to procure any parts needed or will the professional get them?"
              , style: Kfaq_text_style,),
            ),
            Spacer(),
            Image.asset("images/down_arrow.png"),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------------------------//

class TM_card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(bottom: 15.0),
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: (
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("images/comma.png"),
                SizedBox(width: 2.0,),
                Image.asset("images/comma.png"),
              ],
            ),
            Row(
              children: [
                CircleAvatar(radius: 30.0, backgroundImage: AssetImage("images/profile.png"),),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dolor Sit Amet", style: Ktm_head_style,),
                      SizedBox(height: 8.0,),
                      Text("Mumbai, 2 weeks ago", style: Ktm_sub_style,),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0,),
            Container(
              width: MediaQuery.of(context).size.width/1.4,
              child: Text(
              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
              style: Ktm_small_style,
            ),),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 75.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("images/Star 4.png"),
                      Image.asset("images/Star 4.png"),
                      Image.asset("images/Star 4.png"),
                      Image.asset("images/Star 4.png"),
                      SizedBox(width: 5.0,),
                      Text("4.5", style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 11.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFFEBE1A)
                      ),)
                    ],
                  ),
                )

              ],
            )
          ],
        )
        ),

      ),
    );
  }
}