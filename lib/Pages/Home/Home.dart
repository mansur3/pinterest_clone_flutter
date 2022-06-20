import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest/Pages/Add/Add.dart';
import 'package:pinterest/Pages/Message/Message.dart';
import 'package:pinterest/Pages/Profile/Profile.dart';
import 'package:pinterest/Pages/Search/Search.dart';



import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     int _selectedIndex = 0;
//
//
//        List<Widget> widgetOptions = <Widget>[
//       HomePage(),
//       Search(),
//       Add(),
//       MessagePage(),
//       Profile(),
//
//     ];
//
//     void _onItemTapped(int index) {
//       setState(() {
//         _selectedIndex = index;
//       });
//       print(_selectedIndex);
//
//     }
//
//
//
//
//
//     return Scaffold(
//
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Center(
//
//
//           child: Container(
//             width: 150,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                     "Browse",
//                   style: TextStyle(
//                     textBaseline:TextBaseline.alphabetic,
//                     color: Colors.black,
//                   )
//                 ),
//                 Text(
//                     "Watch",
//                   style: TextStyle(
//                     color: Colors.black,
//                   )
//                 ),
//               ],
//             ),
//           ),
//         ),
//           automaticallyImplyLeading : false,
//       ),
//       body: Container(
//         child: widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//
//       items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home_filled,
//               color: Colors.grey,
//               size: 30,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.search,
//                 color: Colors.grey,
//                 size: 30,
//               ),
//               label: "Search",
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.add,
//                 color: Colors.grey,
//                 size: 30,
//               ),
//               label: "Add",
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.message,
//                 color: Colors.grey,
//                 size: 30,
//               ),
//               label: "message",
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.account_circle_sharp,
//                 color: Colors.grey,
//                 size: 30,
//               ),
//               label: "account",
//           ),
//         ],
//         onTap: _onItemTapped,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.black,
//       ),
//     );
//   }
// }
//

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 3,
          pattern: [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => GestureDetector(
                onTap: () => {
                  setState(() => {
                    number = index,
                  }),
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ShowOneImage({number})),
                  )
                },
                child: new Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/500/500?random=$index'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}



class ShowOneImage extends StatefulWidget {
  // const ShowOneImage({Key? key, index}) : super(key: key);
  var index;
  ShowOneImage(Set<int> set, {@required this.index});


  @override
  State<ShowOneImage> createState() => _ShowOneImageState();
}

class _ShowOneImageState extends State<ShowOneImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
          child: Column(
            children: [
              Container(
                height: 400.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/1/237/200/300'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Text("This is the name of the file"),
            ],
          )
        ),
      ),
    );
  }
}


// Container(
// child: StaggeredGridView.countBuilder(
// crossAxisCount: 4,
// itemCount: 15,
// itemBuilder: (BuildContext context, int index) => new Container(
// height: 120.0,
// width: 120.0,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: NetworkImage('https://picsum.photos/500/500?random=$index'),
// fit: BoxFit.fill,
// ),
// shape: BoxShape.rectangle,
// ),
// ),
// staggeredTileBuilder: (int index) =>
// StaggeredTile.count(2, index.isEven ? 3 : 2),
// mainAxisSpacing: 4.0,
// crossAxisSpacing: 4.0,
// ),
// ),



// void main() => runApp(const MyApp());



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    Add(),
    MessagePage(),
    Profile(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.grey,
              size: 30,
            ),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
              size: 30,
            ),
            label: "message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Colors.grey,
              size: 30,
            ),
            label: "account",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
