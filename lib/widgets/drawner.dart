import 'package:flutter/material.dart';

class PageDrawer extends StatelessWidget {
  PageController _pageController;
  PageDrawer(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(30)),
          Text(
            "Menu",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Divider(
            color: Colors.white,
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
              if (_pageController.hasClients) {
                _pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
            icon: Icon(
              Icons.accessibility,
              color: Colors.white,
            ),
            label: Text("Pagina 1",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            color: Colors.green,
            //disabledColor: Colors.red,
          ),
          RaisedButton.icon(
            
            onPressed: () {
              Navigator.of(context).pop();
              if (_pageController.hasClients) {
                _pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
            icon: Image.asset("images/person.png",
            height: 30,
            width: 30,),
            label: Text("Pagina 2",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            color: Colors.blue,
            //disabledColor: Colors.red,
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
              if (_pageController.hasClients) {
                _pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
            icon: Icon(
              Icons.security,
              color: Colors.white,
            ),
            label: Text("Pagina 3",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            color: Colors.yellow,
            //disabledColor: Colors.red,
          )
        ],
      ),
    );
  }
}
