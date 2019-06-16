import 'package:flutter/material.dart';
import 'package:bikeloca/home.dart';
// import 'package:bikeloca/authentication.dart';
// import 'package:bikeloca/fireLogin.dart';
// import 'package:bikeloca/bdd.dart';
// import 'package:bikeloca/todoPage.dart';

class MyDrawer extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Bike Lovers - Menu'),
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   title: Text('Login'),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => LoginSignUpPage()),
            //     );
            //   },
            // ),
            // ListTile(
            //   title: Text('ToDo'),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => TodoPage(userId: _userId, auth: widget.auth, onSignedOut: _onSignedOut)),
            //     );
            //   },
            // ),
            // ListTile(
            //   title: Text('Firebase'),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => FirebaseDb()),
            //     );
            //   },
            // ),            
          ],
        ),
      );
  }
}





// **************************************
// class MyDrawer extends StatefulWidget {
//   MyDrawer({this.auth});

//   final BaseAuth auth;

//   @override
//   State<StatefulWidget> createState() => new _MyDrawerState();
// }

// enum AuthStatus {
//   NOT_DETERMINED,
//   NOT_LOGGED_IN,
//   LOGGED_IN,
// }

// class _MyDrawerState extends State<MyDrawer> {
//   AuthStatus authStatus = AuthStatus.NOT_DETERMINED;
//   String _userId = "";
//   void _onSignedOut() {
//     setState(() {
//       authStatus = AuthStatus.NOT_LOGGED_IN;
//       _userId = "";
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the Drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Bike Lovers - Menu'),
//               decoration: BoxDecoration(
//                 color: Colors.grey[400],
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => 
//                     HomePage(userId: _userId, 
//                             auth: widget.auth, 
//                             onSignedOut: _onSignedOut)
//                     ),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Perfil'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             // ListTile(
//             //   title: Text('Login'),
//             //   onTap: () {
//             //     // Update the state of the app
//             //     // ...
//             //     // Then close the drawer
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => LoginSignUpPage()),
//             //     );
//             //   },
//             // ),
//             // ListTile(
//             //   title: Text('ToDo'),
//             //   onTap: () {
//             //     // Update the state of the app
//             //     // ...
//             //     // Then close the drawer
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => TodoPage(userId: _userId, auth: widget.auth, onSignedOut: _onSignedOut)),
//             //     );
//             //   },
//             // ),
//             // ListTile(
//             //   title: Text('Firebase'),
//             //   onTap: () {
//             //     // Update the state of the app
//             //     // ...
//             //     // Then close the drawer
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => FirebaseDb()),
//             //     );
//             //   },
//             // ),            
//           ],
//         ),
//       );
//   }
// }