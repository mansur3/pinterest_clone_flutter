


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// class Search extends StatefulWidget {
//   const Search({Key? key}) : super(key: key);
//
//   @override
//   State<Search> createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text("This is the search page"),
//       ),
//     );
//   }
// }

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StatefulSearchPage(),
    );
  }
}



class StatefulSearchPage extends StatefulWidget {
  const StatefulSearchPage({Key? key}) : super(key: key);

  @override
  State<StatefulSearchPage> createState() => _StatefulSearchPageState();
}

class _StatefulSearchPageState extends State<StatefulSearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 0),
          child: Column(
            children: [
              Container(
                height: 40,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child:  TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    labelText: 'Search for ideas',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.camera_alt,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: ScrollView(),
              ),

            ],
          )
        )
      ),
    );
  }
}


class ScrollView extends StatefulWidget {
  const ScrollView({Key? key}) : super(key: key);

  @override
  State<ScrollView> createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
  final ScrollController _controllerOne = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _controllerOne,
      child: Column(
          children : [
            Text("This is the name of the file"),
            // GridView.builder(
            //   itemCount: 120,
            //   gridDelegate:
            //   const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   itemBuilder: (BuildContext context, int index) {
            //     return Center(
            //       child: Text('item $index'),
            //     );
            //   },
            // )

          ]
      ),
    );
  }
}

