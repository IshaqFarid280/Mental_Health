
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/Assessment/Assessment.dart';
import 'package:mental_health/Auth/login_screen.dart';
import 'package:mental_health/Feedback/feedback.dart';
import 'package:mental_health/Setting/SettingScreen.dart';
import 'package:mental_health/resource/library.dart';
import 'package:mental_health/widget/Appcolor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.solightblue,
      appBar: AppBar(
          backgroundColor:AppColors.ecogreen,
        title: Text(
          'Home Screen',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Container(
        color: Colors.white,
        width: 255,
        child: ListView(
          children: [
            Container(
              color: AppColors.ecogreen,
              height: 150.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                  child: Image.asset(
                      "assets/images/logo.jpeg",
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(height: 1,color: AppColors.gerytext,thickness: 1,),
            SizedBox(height: 12.0,),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
              child: ListTile(
                leading: Icon(Icons.person,color: AppColors.ecogreen,),
                title: Text("Profile",style: TextStyle(fontSize: 15, fontFamily: 'Nunito'),),
              ),
            ),

            /*GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
              },
              child: ListTile(
                leading: Icon(Icons.credit_card,color: blue,),
                title: Text("Payments",style: TextStyle(fontSize: 15, fontFamily: 'Nunito'),),
              ),
            ),*/
            GestureDetector(
              onTap: (){
                // FirebaseAuth.instance.signOut();
                firebaseAuth.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) =>  LogInScreen()),
                        (route) => false);
                //Navigator.pushNamedAndRemoveUntil(context, login.idScreen, (route) => false);
              },
              child: ListTile(
                leading: Icon(Icons.exit_to_app,color: AppColors.ecogreen,),
                title: Text("Logout",style: TextStyle(fontSize: 15, fontFamily: 'Nunito'),),
              ),
            ),


          ],
        ),
      ),

      body: Stack(
        children: <Widget>
        [
          /* Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .35,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),  child: Lottie.asset('assets/images/bus.json',height: 200),
          ),*/
          Container(
            // Here the height of the container is 45% of our total height
            height:230,
            width: double.infinity,
            decoration: BoxDecoration(
              color:AppColors.ecogreen,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(90,50),
                bottomRight: Radius.elliptical(90,50),
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                      child: Image.asset(
                        "assets/images/logo.jpeg",
                      )
                  )
                ],
              ),
            ),

          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 260,
                    width: 10,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .95,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        Container(
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),


                          ),
                          child: MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Assessment()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/satisfaction.png"),
                                  ),
                                  Spacer(),
                                  Text("Assessment",
                                    style: new TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito'
                                    ),

                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>LibararyScreen()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/library.png"),
                                  ),
                                  Spacer(),
                                  Text("Resource library",
                                    style: new TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito'
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: MaterialButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailFormScreen()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/chat.png"),
                                  ),
                                  Spacer(),
                                  Text("Feedback",
                                    style: new TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito'
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/settings.png"),
                                  ),
                                  Spacer(),
                                  Text("Setting",
                                    style: new TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito'
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: MaterialButton(onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Request()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/helpdesk.png"),
                                  ),
                                  Spacer(),
                                  Text("Help & Support",
                                    style: new TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito'
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
