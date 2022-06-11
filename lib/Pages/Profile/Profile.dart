import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    print("Click in share button");
                  },
                  icon: Icon(Icons.share),

                ),

                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    print("Click in Menu button");
                    showModalBottomSheet<void>(

                      // context and builder are
                      // required properties in this widget
                      context: context,
                      builder: (BuildContext context) {

                        // we set up a container inside which
                        // we create center column and display text
                        return Container(
                          height: 500,
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                          ),
                          child: Container(
                            height: 500,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft : Radius.circular(40), topRight:Radius.circular(40)),
                            ),
                           child: Padding(
                             padding: EdgeInsets.all(20),
                             child: Column(
                               children: [
                                 ListTile(
                                   title: Text("Profile"),

                                 ),
                                 ListTile(
                                   title : Text(
                                       "Settings",
                                     style: TextStyle(
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                     )
                                   )
                                 ),
                                 ListTile(
                                   title : Text(
                                       "Edit public profile",
                                       style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       )
                                   )
                                 ),
                                 ListTile(
                                     title : Text(
                                         "Copy profile link",
                                         style: TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold,
                                         )
                                     )
                                 ),
                                 ListTile(
                                   title : Text(
                                       "Share",
                                       style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       )
                                   ),
                                 ),
                                 RaisedButton(
                                   textColor: Colors.black,
                                   color: Colors.grey[300],
                                   child: Text(
                                       "Close",
                                     style: TextStyle(
                                       fontSize: 20,
                                     )
                                   ),
                                   onPressed: () {},
                                   shape: new RoundedRectangleBorder(
                                     borderRadius: new BorderRadius.circular(30.0),
                                   ),
                                 ),

                               ],
                             )
                           )
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.menu),

                ),

                // )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(150),
              ),
              child: Center(
                  child: Text(
                      "A",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    )
                  ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ali hossen Dewan",
              style: TextStyle(
                fontSize: 30,
                fontWeight : FontWeight.bold,
              )
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "@alihossend",
              style: TextStyle(
                fontSize: 18,
               color: Colors.grey[700],
              )
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "0 followers . 0 following"
            ),
            SizedBox(
              height: 7,
            ),
            BottomCreatedSaved(),
          ],
        )
      ),
    );
  }
}


class BottomCreatedSaved extends StatefulWidget {
  const BottomCreatedSaved({Key? key}) : super(key: key);

  @override
  State<BottomCreatedSaved> createState() => _BottomCreatedSavedState();
}

class _BottomCreatedSavedState extends State<BottomCreatedSaved> {

  bool onCreated = true;
  bool onSaved = false;




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    border: onCreated? Border(

                      bottom: BorderSide(width: 2.0, color: Colors.black),
                    ): null,

                  ),
                  child: TextButton(
                      onPressed: () {

                        setState(() {
                          onSaved = false;
                          onCreated = true;
                        });

                      },
                      child: Text(
                          "Created",
                          style: TextStyle(
                            color: Colors.grey[800],
                          )
                      )
                  )
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    border: onSaved? Border(

                      bottom: BorderSide(width: 2.0, color: Colors.black),
                    ) : null,

                  ),
                  child: TextButton(
                      onPressed: () {
                            setState(() {
                              onSaved = true;
                              onCreated = false;
                            });
                      },
                      child: Text(
                          "Saved",

                          style: TextStyle(
                            color: Colors.grey[800],
                          )
                      )
                  )
              ),
            ],
          ),
          Container(
            child: onCreated == true && onSaved == false ? Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Text(
                        "Inspire with an Idea Pin",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    RaisedButton(
                      textColor: Colors.black,
                      color: Colors.red,
                      child: Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.white,
                          )
                      ),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ],
                ),
              )
            ) : Container(
              child: Center(
                child: Column(
                  children: [

                    Text("This is the Save field"),
                  ],
                )
              )
            ),
          ),
        ],
      )
    );
  }
}




class CreatedComponent extends StatefulWidget {
  const CreatedComponent({Key? key}) : super(key: key);

  @override
  State<CreatedComponent> createState() => _CreatedComponentState();
}

class _CreatedComponentState extends State<CreatedComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class SavedComponent extends StatefulWidget {
  const SavedComponent({Key? key}) : super(key: key);

  @override
  State<SavedComponent> createState() => _SavedComponentState();
}

class _SavedComponentState extends State<SavedComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:  [
          Row(
            children: [
              Container(

                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  children: [

                    TextField(
                      decoration: InputDecoration(
                        suffixIcon:  Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        border: InputBorder.none,
                        hintText: "Email Address",
                        hintStyle: TextStyle(fontSize : 17, fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(13),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}





class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is the user details field"),
      )
    );
  }
}


