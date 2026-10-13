import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 217, 202),
      appBar: AppBar(
        leading: Icon(Icons.notification_add_outlined,
        color: const Color.fromARGB(255, 226, 194, 159),
        ),
         actions: [
          Icon(Icons.settings,
          color: const Color.fromARGB(255, 226, 194, 159),
          ),
        ],
        title: Text("HOME PAGE",
        style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 226, 194, 159),
        ),
        ),
        centerTitle: true,
        backgroundColor:  const Color.fromARGB(255, 1, 2, 40),
      ),

      
      body:  SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
                bottom:20,
              ), 
          
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("asset/images/image.jpg"),
            
          ),
         
Align(
  alignment: Alignment.topRight,
  child: SizedBox(
    width: 320,
    height: 45,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle:  TextStyle(
          color: Colors.white70,
        ),
        prefixIcon:  Icon(
          Icons.search,
          color: Colors.white,
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 92, 93, 102),
        contentPadding:  EdgeInsets.symmetric(
          vertical: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: Colors.white),
    ),
  ),
),

          SizedBox(height: 25,),


              Column(
                children: [

                  Card(
                    color: const Color.fromARGB(255, 146, 147, 192),
                    elevation: 4,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(20),
                      side: BorderSide(color: const Color.fromARGB(255, 7, 18, 36)),
                    ),
                    child:Padding(
                      padding:EdgeInsets.all(50),
                      child:Expanded(
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("heyyy! Welcome to Weather App",
                            style:TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            ),
                            SizedBox(height: 6,),
                          Text("this app will help you to survive in any weather condition",
                            style:TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                    )
                   
                    ),
                  ),
                  SizedBox(height: 20,),


          Card(
            color: const Color.fromARGB(255, 1, 2, 40),
            elevation:4,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20),
              side:BorderSide(
                color:Colors.white,
              ),
            ),
            child: Padding(
              padding:EdgeInsets.all(20),
              child: Row(
                children:[
                  Icon(Icons.wb_sunny_outlined,
                  size:40,
                  color: Colors.white
                  ),
                  SizedBox(width: 15,),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(" SUNNY DAY",
                        style:TextStyle(
                          fontSize:20,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(height: 6,),
                        Text(" Tips to survive the sunny day",
                        style:TextStyle(
                          fontSize:14,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Colors.white,
                    ),
                ],
              ),
            ),
          ),
            SizedBox(height: 10,),

          Card(
            color: const Color.fromARGB(255, 1, 2, 40),
            elevation:4,
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20),
              side:BorderSide(
                color:Colors.white,
              ),
            ),
            child: Padding(
              padding:EdgeInsets.all(20),
              child: Row(
                children:[
                  Icon(Icons.water_drop_outlined,
                  size:40,
                  color: Colors.white
                  ),
                  SizedBox(width: 15,),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("RAINY DAY",
                        style:TextStyle(
                          fontSize:20,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(height: 6,),
                        Text(" Tips to survive the rainy day",
                        style:TextStyle(
                          fontSize:14,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                 ),
                ),
             ),
             SizedBox(height: 10,),

             Card(
              color:  const Color.fromARGB(255, 1, 2, 40),
              elevation:4,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side:BorderSide(
                  color:Colors.white,
                ),
              ),
              child: Padding(
              padding:EdgeInsets.all(20),
              child: Row(
                children:[
                  Icon(Icons.water_outlined,
                  size:40,
                  color: Colors.white
                  ),
                  SizedBox(width: 15,),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("FREEZING DAY",
                        style:TextStyle(
                          fontSize:20,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(height: 6,),
                        Text(" Tips to survive the freezing day",
                        style:TextStyle(
                          fontSize:14,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Colors.white,
                    ),
                ],
             ),
              ),
             ),
             SizedBox(height: 10,),
             Card(
              color:  const Color.fromARGB(255, 1, 2, 40),
              elevation:4,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side:BorderSide(
                  color:Colors.white,
                ),
              ),
              child: Padding(
              padding:EdgeInsets.all(20),
              child: Row(
                children:[
                  Icon(Icons.cloud_queue_outlined,
                  size:40,
                  color: Colors.white
                  ),
                  SizedBox(width: 15,),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("CLOUDY DAY",
                        style:TextStyle(
                          fontSize:20,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(height: 6,),
                        Text("Features of cloudy day",
                        style:TextStyle(
                          fontSize:14,
                          color: Colors.white,
                        ),
                        ),
                      ],
                    ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 20,
                      color: Colors.white,
                    ),
                ],
             ),
              ),
             ),
                ],
                  ),
         
                ],
              ),
            ),
      ),
      );
  }
}
