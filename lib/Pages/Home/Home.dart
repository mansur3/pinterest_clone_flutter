import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinterest/Pages/Add/Add.dart';
import 'package:pinterest/Pages/Message/Message.dart';
import 'package:pinterest/Pages/Profile/Profile.dart';
import 'package:pinterest/Pages/Search/Search.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is the Home page"),
    );
  }
}





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
