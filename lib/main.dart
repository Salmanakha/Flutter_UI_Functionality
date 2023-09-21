import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
void main()
{
  runApp(myApp());
}
// ignore: camel_case_types
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHome(),
    );
  }
}
class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 81, 139),
      body: myBody(),
    );
  }
}
class myBody extends StatefulWidget {
  const myBody({super.key});

  @override
  State<myBody> createState() => _myBodyState();
}

class _myBodyState extends State<myBody> {
  int page=0;
  PageController pageController=PageController();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      child: PageView(
        onPageChanged: (index)
        {
          setState(() {
            index=page;
          });

        },
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Your holiday',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                SizedBox(height: 10,),
                Text('shopping',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                SizedBox(height: 10,),
                Text('delivered to Screen',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                Container(
                  child: Row(
                    children: [
                      Text('one',style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                      SizedBox(width: 20,),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image(
                            image: AssetImage('images/home.png')
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('There is something for everyone to enjoy with Sweet Shop Favourite Screen 1',style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w200
                ),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    page==0?
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey,
                      ),
                      height: 2,
                      width: 20,

                    ):Container(
                      height: 3,
                      width: 35,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 8,),
                    page==0?
                    Container(
                      height: 3,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                    ):
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey,
                      ),
                      height: 2,
                      width: 20,

                    )

                  ],
                ),
                SizedBox(height: 25,),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('images/DJ-party-bro.png'),
                    ),
                  ),
                ),

                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homeMain(),));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Get Started',style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),),

                        Icon(Icons.arrow_forward_rounded)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Your holiday',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                SizedBox(height: 10,),
                Text('shopping',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                SizedBox(height: 10,),
                Text('delivered to Screen',style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white
                ),),
                Container(
                  child: Row(
                    children: [
                      Text('one',style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                      SizedBox(width: 20,),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image(
                            image: AssetImage('images/home.png'),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('There is something for everyone to enjoy with Sweet Shop Favourite Screen 1',style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w200
                ),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    page==1?
                     Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey,
                        ),
                        height: 2,
                        width: 20,


                    ):Container(
                      height: 3,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8,),
                    page==1?
                    Container(
                      height: 3,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                    ):
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey,
                      ),
                      height: 2,
                      width: 20,

                    )

                  ],
                ),
                SizedBox(height: 25,),
                Expanded(
                  child: Container(

                    width: double.infinity,
                    child: Image(
                      image: AssetImage('images/DJ-party-bro.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homeMain(),));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Get Started',style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),),

                        Icon(Icons.arrow_forward_rounded)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}