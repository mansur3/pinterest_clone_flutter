import 'package:flutter/material.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                   image:  DecorationImage(
                        image: AssetImage("assets/images/login_page_image.jpg")
                    ),
                  ),

                  child: Text(""),
                ),
                // Image.asset(
                //     "assets/images/login_page_image.jpg",
                //   // height: 110,
                //   width: double.infinity,
                // ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Image.asset(
                          "assets/images/logo_pinterest.png",
                        width: 150,
                        height: 150,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                            "Welcome to Pinterest",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height : 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email Address",
                            hintStyle: TextStyle(fontSize : 17, fontWeight: FontWeight.bold),
                            contentPadding: EdgeInsets.all(13),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed : () {
                          Navigator.pushNamed(context, '/Home');
                        },
                        style: ElevatedButton.styleFrom(
                          primary : Colors.red,
                          minimumSize: Size.fromHeight(40),
                          shape: StadiumBorder(),

                        ),
                        child: Text(
                          "Continue"
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        child: ListTile(
                          title: Text(
                            "Continue with google",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            )
                          ),
                          leading: ImageIcon(
                            AssetImage("assets/images/google-icon.png")
                          )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: ListTile(
                            title: Text(
                                "Continue with google",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            leading: ImageIcon(
                                AssetImage("assets/images/fb.png")
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                          "By continuing, you agree to Pinterest's Terms of Service and acknowledge that you've read our Privacy Policy.",
                        textAlign: TextAlign.center,

                      ),
                    ],
                  )
                ),

              ],
            )
          )
        ),
      ),
    );
  }
}
