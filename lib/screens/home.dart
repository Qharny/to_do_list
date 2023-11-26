import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';
import 'package:to_do_list/widgets/items.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text(
                        'TO DOs...',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                    items(),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          height: 30,
          width: 30,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/icon/avatar.jpg')),
        )
      ]),
    );
  }
}