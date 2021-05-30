import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Login to Continue')),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 678) {
                return LargerScreen();
              } else {
                return SmallerScreen();
              }
            },
          )),
    );
  }
}

class LargerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    return Wrap(
      children: [
        Container(
          // width: 900,
          height: MediaQuery.of(context).size.height * 1,
          width: data.width * 0.7,
          child: Column(
            children: [
              Center(
                child:
                    Image(image: AssetImage('assets/images/login-photo.jpg')),
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 1,
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          // constraints: BoxConstraints.expand(),
          color: Color(0xe6dfe4ea),
          // width: 466,
          width: data.width * 0.3,
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Email', icon: Icon(Icons.mail)),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password', icon: Icon(Icons.lock)),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SmallerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login-photo.jpg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // color: Color(0xe6dfe4ea),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Email',
                      icon: Icon(Icons.mail)),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Password',
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
