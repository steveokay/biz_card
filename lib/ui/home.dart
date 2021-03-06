
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  // const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business Card"),

      ),

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        ),
      ),

    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(47.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(14.5)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("James Bond",
            style: TextStyle(fontSize: 20.9,
              fontWeight: FontWeight.w500,
              color: Colors.blue
            ),
          ),

          Text("buildappswithpaulo.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("Twitter: @buildappswithme")
            ],
          )
        ],
      ),
    );
  }

  _getAvatar() {
    return Container(
      width:100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover)
      ),
    );
  }
}



class ScaffoldExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade900,
        child: Icon(Icons.account_circle),
        onPressed: () => debugPrint("Action pressed !!!!"),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second")),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Third")),
          BottomNavigationBarItem(icon: Icon(Icons.backup_outlined), title: Text("Fourth")),
          BottomNavigationBarItem(icon: Icon(Icons.email), title: Text("Fifth")),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent.shade700,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.lightGreenAccent,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text("Hello Again!"),
            backgroundColor: Colors.amberAccent.shade700,
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },

        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(8.0)
          ),

          child: Text("Button"),
        )
    );
  }
}

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text("Hello Flutter!", textDirection: TextDirection.ltr,), // Text
    // );

    return Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text(
              "Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic
              )
          )),
    );
  }
}