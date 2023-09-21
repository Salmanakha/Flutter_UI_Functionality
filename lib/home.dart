import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class homeMain extends StatefulWidget {
  const homeMain({super.key});

  @override
  State<homeMain> createState() => _homeMainState();
}

class _homeMainState extends State<homeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Hello Halal"),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_bag),
          onPressed: () {},
        )
        
          
      ],
      backgroundColor: Color.fromARGB(255, 10, 81, 139)      
      ),
      body: mainHomeBody(),
    );
  }
}
class mainHomeBody extends StatefulWidget {
  const mainHomeBody({super.key});

  @override
  State<mainHomeBody> createState() => _mainHomeBodyState();
}

class _mainHomeBodyState extends State<mainHomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,


                  scrollDirection: Axis.horizontal,

                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)
                    ),

                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image(
                            width: 100,
                            image: AssetImage('images/galleryImage.png'),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Get',style: GoogleFonts.poppins(
                                  fontSize: 18,
                                color: Colors.white,
                              ),),
                              Text('50% OFF',style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              )),
                              Text('On first 03 order',style: GoogleFonts.poppins(
                                  fontSize: 18,
                                color: Colors.white,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },),
              ),
              SizedBox(height: 20,),
              Text('Recommended',style: GoogleFonts.poppins(
                fontSize: 30,

              ),),
              SizedBox(height: 10,),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),

                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                    ),

                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 90,

                          child: Image(
                            image: AssetImage('images/lemon.jpg'),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text('Fresh Lemon',style: GoogleFonts.poppins(
                            fontSize: 16
                        ),),
                        Text('Organinc',style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w200
                        ),),
                        SizedBox(height: 5,),
                        Container(
                          width: 100,
                          padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Unit',style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200
                                  ),),
                                  SizedBox(width: 3,),
                                  Text('\$12',style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  ),),
                                ],
                              ),
                              Container(

                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )


                            ],
                          ),
                        )


                      ],
                    ),
                  );
                },),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: 100,
                      
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                    child: Text('$index',style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 30
                    ),),
                  ));
                },),
              ),
              SizedBox(height: 20,),
              Container(width: double.infinity,
              height: 300,
              child: Image(
                image: AssetImage('images/lemon.jpg'),
              ),
              )
            ],
          ),
        ),

      ),
    
    );
    
  }
}
