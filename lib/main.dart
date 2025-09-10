// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_application_1/pages/page_one.dart';

// final List<String> items = <String>["iran", "iraq", "usa", "israel", "canada"];

// void main(List<String> args) => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Colors.deepPurple,
//       drawer: Container(color: Colors.blueGrey, width: 300),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: (Icon(Icons.add_a_photo_outlined)),
//         shape: CircleBorder(),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 8,
//         height: 50,
//         color: Colors.amber,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.menu),
//               iconSize: 30,
//               color: Colors.black,
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.search),
//               iconSize: 30,
//             ),
//           ],
//         ),
//       ),
//       // appBar: AppBar(
//       //   title: Text("Spotify"),
//       //   backgroundColor: const Color.fromARGB(255, 43, 202, 70),
//       //   actions: const <Widget>[
//       //     IconButton(onPressed: null, icon: Icon(Icons.add_alert_outlined))
//       //   ],
//       //   centerTitle: false,
//       //   elevation: 20,
//       //   // leading: Icon(Icons.ads_click),
//       //   titleSpacing: 10,
//       //   toolbarOpacity: 0.8,
//       // ),
//       appBar: MyCustomAppBar(title: 'Spotify', backgroundColor: Colors.grey),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               "سلام امیرحسین",
//               textDirection: TextDirection.rtl,
//               maxLines: 1,

//               softWrap: false,
//               overflow: TextOverflow.ellipsis, // line clamp
//               textAlign: TextAlign.right,
//               style: TextStyle(
//                 decoration: TextDecoration.underline,
//                 decorationColor: Colors.cyan,
//                 decorationStyle: TextDecorationStyle.wavy,
//                 decorationThickness: 3,
//                 fontFamily: "kalameh",
//                 fontSize: 30,
//                 wordSpacing: 5,
//                 fontWeight: FontWeight.bold,
//                 background: Paint()
//                   ..color = Colors.greenAccent
//                   ..strokeWidth = 20
//                   ..strokeJoin = StrokeJoin.bevel,
//               ),
//             ),

//             Image.asset(
//               "assets/images/seke.png",
//               height: 200,
//               width: 200,
//               filterQuality: FilterQuality.high,
//               alignment: Alignment.center,
//               isAntiAlias: true,

//               // color: Colors.blueAccent,
//               // colorBlendMode: BlendMode.screen,
//               // frameBuilder:
//               //     (
//               //       BuildContext context,
//               //       Widget child,
//               //       int? frame,
//               //       bool? wasSynchronouslyLoaded,
//               //     ) {
//               //       return Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: child,
//               //       );
//               //     },
//             ),

//             Text(
//               "09100023513",
//               style: TextStyle(
//                 fontFeatures: <FontFeature>[
//                   FontFeature.enable("frac"),
//                   FontFeature.enable("smcp"),
//                 ],
//               ),
//             ),
//             // Image.network(src) // its for getting from net
//           ],
//         ),
//       ),
//     ),
//   ),
// );

// class MyCustomAppBar extends StatelessWidget implements PreferredSize {
//   final String? title;
//   final Color? backgroundColor;

//   const MyCustomAppBar({
//     super.key,
//     @required this.title,
//     @required this.backgroundColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: Size.fromHeight(50),
//       child: AppBar(
//         title: Text(title!),
//         backgroundColor: backgroundColor!,
//         actions: const <Widget>[
//           IconButton(onPressed: null, icon: Icon(Icons.add_alert_outlined)),
//         ],
//         centerTitle: false,
//         elevation: 20,
//         // leading: Icon(Icons.ads_click),
//         titleSpacing: 10,
//         toolbarOpacity: 0.8,
//       ),
//     );
//   }

//   @override
//   Widget get child => throw UnimplementedError();

//   @override
//   Size get preferredSize => Size.fromHeight(50);
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("DIGIKALA"),
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: MyPage(),
//       ),
//     );
//   }
// }

// class MyPage extends StatefulWidget {
//   const MyPage({super.key});

//   @override
//   State<MyPage> createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   bool checking = false;
//   @override
//   Widget build(BuildContext context) {
//     return checking
//         ? Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   "false",
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 50),
//                 MaterialButton(
//                   onPressed: () {
//                     setState(() {
//                       checking = !checking;
//                     });
//                   },
//                   color: Colors.deepPurpleAccent,
//                   child: Text("change me"),
//                 ),
//               ],
//             ),
//           )
//         : Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   "true",
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 50),
//                 MaterialButton(
//                   onPressed: () {
//                     setState(() {
//                       checking = !checking;
//                     });
//                   },
//                   color: Colors.deepPurpleAccent,
//                   child: Text("change me", style: TextStyle(color: Colors.white),),
//                 ),
//               ],
//             ),
//           );
//   }
// }

// String randomName() {
//   Random rnd = Random();
//   int randomNumber = rnd.nextInt(5);
//   List<String> names = ['amir', 'ali', 'maryam', 'reza', 'mehdi'];
//   return names[randomNumber];
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text("spotify", style: TextStyle(fontWeight: FontWeight.w800)),
//         ),

//         body: Stack(
//           alignment: Alignment(0, 0),
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/فال روزانه.png"),
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//             ),

//             Positioned(
//               bottom: 30,
//               left: 10,
//               right: 10,
//               child: Card(
//                 elevation: 8,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "amirhossein spotify",
//                         textDirection: TextDirection.ltr,
//                         textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Text(
//                         "lorem jlshf   rhhos lafehh  faoheohfo lakef jiheu fhiu aehui laflejg pjsrgrhs jfehighs ougheoh kjfjekhh fuish kgeoo hgoshgoe ngogho euhgo iehioge ghis rjgihe iohgi ksngr hosih goieh jgrkjgso  ihgo lsg  roshg osho sjgo hoghso heos ihgorej hogii hoieh nohrgo hhh roihori lorem jlshf   rhhos lafehh  faoheohfo lakef jiheu fhiu aehui laflejg pjsrgrhs jfehighs ougheoh kjfjekhh fuish kgeoo hgoshgoe ngogho euhgo iehioge ghis rjgihe iohgi ksngr hosih goieh jgrkjgso  ihgo lsg  roshg osho sjgo hoghso heos ihgorej hogii hoieh nohrgo hhh roihori lorem jlshf   rhhos lafehh  faoheohfo lakef jiheu fhiu aehui laflejg pjsrgrhs jfehighs ougheoh kjfjekhh fuish kgeoo hgoshgoe ngogho euhgo iehioge ghis rjgihe iohgi ksngr hosih goieh jgrkjgso  ihgo lsg  roshg osho sjgo hoghso heos ihgorej hogii hoieh nohrgo hhh roihori lorem jlshf   rhhos lafehh  faoheohfo lakef jiheu fhiu aehui laflejg pjsrgrhs jfehighs ougheoh kjfjekhh fuish kgeoo hgoshgoe ngogho euhgo iehioge ghis rjgihe iohgi ksngr hosih goieh jgrkjgso  ihgo lsg  roshg osho sjgo hoghso heos ihgorej hogii hoieh nohrgo hhh roihori",
//                         textDirection: TextDirection.ltr,
//                         textAlign: TextAlign.justify,
//                         style: TextStyle(
//                           fontSize: 10,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // child: SingleChildScrollView()// this is for time that we want to use input for example and br band error handling

//         // body: ListView.separated(itemCount: items.length, itemBuilder:(BuildContext context, int index){
//         //   return _containerCreator(items[index]);
//         // },
//         // separatorBuilder: (BuildContext context, int index) => Divider()
//         // ),
//         // body: GridView.builder(
//         //   itemCount: items.length,
//         //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         //     // crossAxisCount: 3,
//         //     mainAxisExtent: 200,
//         //     crossAxisSpacing: 10,
//         //     mainAxisSpacing: 10,
//         //     maxCrossAxisExtent: 300,
//         //   ),
//         //   padding: EdgeInsets.all(9),
//         //   // scrollDirection: Axis.vertical,
//         //   // crossAxisSpacing: 10,
//         //   // crossAxisCount: 3,
//         //   // children: List.generate(100, (index) {
//         //   //   return _containerCreator("box ${index + 1}");
//         //   // }),
//         //   itemBuilder: (BuildContext context, int index) =>
//         //       _containerCreator(items[index]),
//         // ),
//         // body:Row(
//         // body:Column(
//         // body: Wrap(
//         //   spacing: 60,
//         // alignment: Alignment.center,

//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         // children: <Widget>[
//         //   Expanded(flex: 1 ,child: Image.asset("assets/images/sandogh.png", width: 200,)),
//         //   // Spacer(flex: 2),
//         //   Divider(
//         //     thickness: 10,
//         //     indent: 20,
//         //     endIndent: 20,
//         //     color: Colors.amber,
//         //     radius: BorderRadius.all(Radius.circular(5)),
//         //   ),
//         //   Flexible(flex: 2 ,child: Image.asset("assets/images/seke.png", width: 200,)),
//         //   Divider(
//         //     thickness: 10,
//         //     indent: 20,
//         //     endIndent: 20,
//         //     color: Colors.amber,
//         //     radius: BorderRadius.all(Radius.circular(5)),
//         //   ),
//         //   // Spacer(flex: 2),
//         //   Image.asset(
//         //     "assets/images/فال روزانه.png",
//         //     width: 100,
//         //     height: 100,
//         //   ),
//         // ],
//         // ),
//       ),
//     );
//   }
// }

// class uniqueColorGenerator {
//   static Random rnd = Random();
//   static Color getColor() {
//     return Color.fromARGB(
//       255,
//       rnd.nextInt(255),
//       rnd.nextInt(255),
//       rnd.nextInt(255),
//     );
//   }
// }

// Container _containerCreator(String title) => Container(
//   alignment: Alignment.center,
//   width: 100,
//   height: 100,
//   color: uniqueColorGenerator.getColor(),
//   child: Text(title, style: TextStyle(fontSize: 20)),
// );

// import 'dart:ffi';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/interActiveViewer.dart';
// import 'package:flutter_application_1/pages/tabbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/stepper.dart';
// import 'package:flutter_application_1/pages/table.dart';
// import 'package:flutter_application_1/pages/materialproperty.dart';
// import 'package:flutter_application_1/pages/progress.dart';
// import 'package:flutter_application_1/pages/chip.dart';
// import 'package:flutter_application_1/pages/card.dart';
// import 'package:flutter_application_1/pages/chip.dart';
// import 'package:flutter_application_1/pages/materialBanner.dart';

////////////////////////////////////////////////////////////////////////////////////////////// form
///
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "DIVAR",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           backgroundColor: Colors.red[800],
//         ),
//         body: _MyNewForm(),
//       ),
//     );
//   }
// }

// class _MyNewForm extends StatefulWidget {
//   const _MyNewForm();

//   @override
//   State<_MyNewForm> createState() => __MyNewForm();
// }

// class __MyNewForm extends State<_MyNewForm> {
//   // final _formKey = GlobalKey<FormState>();
//   TextEditingController textController = TextEditingController(
//     // text: "enter your text",
//   );
//   String displayText = '';

//   bool isSwitched = false;

//   bool sat = false;
//   bool sun = false;
//   bool mon = false;
//   bool tue = false;
//   bool wed = false;
//   bool thu = false;
//   bool fri = false;

//   Widget checkbox(String title, bool boolValue) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(title),
//         Checkbox(
//           value: boolValue,
//           onChanged: (bool? value) {
//             setState(() {
//               switch (title) {
//                 case "sat":
//                   sat = value!;
//                   break;
//                 case "sun":
//                   sun = value!;
//                   break;
//                 case "mon":
//                   mon = value!;
//                   break;
//                 case "tue":
//                   tue = value!;
//                   break;
//                 case "wed":
//                   wed = value!;
//                   break;
//                 case "thu":
//                   thu = value!;
//                   break;
//                 case "fri":
//                   fri = value!;
//                   break;

//                 default:
//               }
//             });
//           },
//         ),
//       ],
//     );
//   }

//   int group = 1;

//   List<String> fall = ["mehr", "aban", "azar"];
//   String _currentItems = "mehr";

//   int volume = 0;

//   @override
//   Widget build(BuildContext context) {
// return Form(
//   key: _formKey,
//   child: SingleChildScrollView(
//     child: Padding(
//       padding: const EdgeInsets.all(25.0),
//       child: Column(
//         children: <Widget>[
//           TextFormField(
//             decoration: InputDecoration(
//               enabled: false,
//               helperText: "this input needs more than 2 characters",
//               label: Text("your name"),
//             ),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (String? value) {
//               if (value!.isEmpty) {
//                 return "you cant have empty name!";
//               }
//               if (value.length < 2) {
//                 return "characters must be more than 2";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               helperText: "this input needs more than 2 characters",
//               label: Text("phone"),
//             ),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (String? value) {
//               if (value!.isEmpty) {
//                 return "you cant have empty phone!";
//               }
//               if (value.length < 2) {
//                 return "characters must be more than 2";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               helperText: "this input needs more than 12 characters",
//               label: Text("email"),
//             ),
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (String? value) {
//               if (value!.isEmpty) {
//                 return "you cant have empty name!";
//               }
//               if (!RegExp(r"\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b").hasMatch(value)) {
//                 return "plesa enter valid email!";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20),
//           TextFormField(
//             decoration: InputDecoration(
//               helperText: "this input needs at least 8 characters",
//               label: Text("password"),
//               // hintText: "password"
//             ),
//             obscureText: true,
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             validator: (String? value) {
//               if (value!.isEmpty) {
//                 return "password is required";
//               }
//               if (value.length < 8) {
//                 return "this input needs at least 8 characters";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   _formKey.currentState!.validate()
//                       ? ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text("this is valid")),
//                         )
//                       : ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text("this is not valid")),
//                         );
//                 },
//                 child: Text("submit"),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   _formKey.currentState!.reset();
//                 },
//                 child: Text("reset"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   ),
// );

// return SingleChildScrollView(
//   child: Padding(
//     padding: EdgeInsetsGeometry.all(20),
//     child: Column(
//       children: [
//         TextField(
//           // ignore: deprecated_member_use
//           toolbarOptions: ToolbarOptions(
//             copy: true,
//             paste: true,
//             selectAll: true,
//           ),
//           controller: textController,
//           inputFormatters: [
//             FilteringTextInputFormatter.deny(RegExp("[a-z]+")),
//           ],
//           style: TextStyle(color: Colors.deepPurple),
//           decoration: InputDecoration(
//             // icon: Icon(Icons.add_ic_call),
//             prefixIcon: Icon(Icons.add_ic_call_outlined),
//             prefixIconColor: Colors.deepPurple,
//             label: Text("phone"),
//             hintText: "09100023513",
//             hintStyle: TextStyle(color: Colors.blueGrey[200]),
//             filled: true,
//             fillColor: Colors.blueGrey[50],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               displayText = textController.text;
//             });
//           },
//           child: Text("show text"),
//         ),
//         SizedBox(height: 30),
//         Text(displayText, style: TextStyle()),

//         SizedBox(height: 30),

//////////////////////////////////////////////////////////////////////////switch
///
// Switch(
//   activeColor: Colors.black87,
//   activeTrackColor: Colors.black,
//   activeThumbImage: AssetImage("assets/images/moon.png"),
//   inactiveThumbImage: AssetImage("assets/images/sun.png"),
//   value: isSwitched,
//   onChanged: (bool value) {
//     setState(() {
//       isSwitched = value;
//     });
//   },
// ),

//////////////////////////////////////////////////////////////////////////checkbox
///
// Checkbox(value: isSwitched, onChanged: (bool? value){
//   setState(() {
//     isSwitched = value!;
//   });
// })
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     checkbox("sat", sat),
//     checkbox("sun", sun),
//     checkbox("mon", mon),
//     checkbox("tue", tue),
//     checkbox("wed", wed),
//     checkbox("thu", thu),
//     checkbox("fri", fri),
//   ],
// ),

// CheckboxListTile(
//   selected: true,
//   controlAffinity: ListTileControlAffinity.leading,
//   // checkColor: const Color.fromARGB(255, 0, 32, 212),
//   title: Text("work"),
//   subtitle: Text("im too busy"),
//   value: timeDilation != 1,
//   onChanged: (bool? value) {
//     setState(() {
//       timeDilation = value! ? 10 : 1;
//     });
//   },
//   secondary: Icon(Icons.abc_outlined),
// ),

/////////////////////////////////////////////////////radio buttons
///
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
// Radio(
//   value: 1,
//   groupValue: group,
//   onChanged: (int? value) {
//     setState(() {
//       group = value!;
//     });
//   },
// ),
// Radio(
//   value: 2,
//   groupValue: group,
//   onChanged: (int? value) {
//     setState(() {
//       group = value!;
//     });
//   },
// ),
// Radio(
//   value: 3,
//   groupValue: group,
//   onChanged: (int? value) {
//     setState(() {
//       group = value!;
//     });
//   },
// ),
// Radio(
//   value: 4,
//   groupValue: group,
//   onChanged: (int? value) {
//     setState(() {
//       group = value!;
//     });
//   },
// ),
// Radio(
//   value: 5,
//   groupValue: group,
//   onChanged: (int? value) {
//     setState(() {
//       group = value!;
//     });
//   },
// ),
// SizedBox(height: 50),
// RadioListTile(
//   controlAffinity: ListTileControlAffinity.trailing,
//   value: 1,
//   groupValue: group2,
//   onChanged: (int? value) {
//     setState(() {
//       group2 = value!;
//     });
//   },
//   title: Text("male"),
//   secondary: Icon(Icons.male),
// ),

///////////////////////////////////////////////////////////dropdownbtn
///
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Container(
//     padding: EdgeInsets.all(10),
//     width: 100,
//     height: 50,
//     decoration: BoxDecoration(
//       border: Border.all(),
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: DropdownButton<String>(
//       icon: Icon(Icons.vertical_align_bottom_outlined),
//       items: fall.map((String dropDownItems) {
//         return DropdownMenuItem(
//           value: dropDownItems,
//           child: Text(dropDownItems),
//         );
//       }).toList(),
//       onChanged: (String? value) {
//         setState(() {
//           _currentItems = value!;
//         });
//       },
//       value: _currentItems,
//     ),
//   ),
// ),

///////////////////////////////////////////////////////buttons
///
//   ],
// ),
// Row(
//   children: [
//     TextButton(
//       onPressed: () {},
//       style: TextButton.styleFrom(
//         elevation: 10,
//         shadowColor: Colors.pinkAccent,
//         backgroundColor: Colors.pink,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       child: Text("click me"),
//     ),
//     SizedBox(width: 20),
//     TextButton.icon(
//       icon: Icon(Icons.clean_hands_rounded),
//       label: Text("click me"),
//       onPressed: () {},
//       style: TextButton.styleFrom(
//         elevation: 10,
//         shadowColor: Colors.pinkAccent,
//         backgroundColor: Colors.pink,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     SizedBox(width: 20),
//     OutlinedButton.icon(
//       icon: Icon(Icons.clean_hands_rounded),
//       label: Text("click me"),
//       onPressed: () {},
//       style: OutlinedButton.styleFrom(
//         elevation: 10,
//         // shadowColor: Colors.pinkAccent,
//         // backgroundColor: Colors.pink,
//         foregroundColor: Colors.blueAccent,
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.circular(10),
//         // ),
//       ),
//     ),
//   ],
// ),
// Column(
//   children: [
//     IconButton(
//       onPressed: () {
//         setState(() {
//           volume += 10;
//         });
//       },
//       icon: Icon(Icons.volume_up_rounded),
//     ),
//     Text("volume $volume"),
//   ],
// ),
// ElevatedButton.icon(
//   onPressed: () {},
//   label: Text("click"),
//   icon: Icon(Icons.filter_4),
// ),
// InkWell(
// InkResponse(
//   splashColor: Colors.amber,
//   highlightColor: Colors.cyan,
//   onTap: () {
//     setState(() {
//       volume += 1;
//     });
//   },
//   child: Icon(Icons.snowmobile_rounded, size: 30,),
// ),
// Text("volume $volume"),

//           ],
//         ),
//       ),
//     );
//   }
// }

/////////////////////////////////////////////////////////////// floating actiion btn
///
// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int counter = 0;

// double myValue = 0;
// RangeValues myValues = RangeValues(0, 100);
// RangeLabels myLabels = RangeLabels("0", "100");

// int selected = 1;

// static const TextStyle optionsStyle = TextStyle(
//   fontSize: 30,
//   fontWeight: FontWeight.bold,
// );

// static const List<Widget> options = <Widget>[
//   Text("about", style: optionsStyle),
//   Text("home", style: optionsStyle),
//   Text("work", style: optionsStyle),
// ];
// void onTapItem(int index) {
//   setState(() {
//     selected = index;
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Planta", style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.amber[900],
//       ),
//       body: Center(
// child: Column(
// children: [
// Text("count is $counter"),
// SliderTheme(
//   data: SliderTheme.of(context).copyWith(
//     activeTrackColor: Colors.deepOrange,
//     thumbColor: Colors.deepOrange,
//   ),
//   child: Slider(
//     divisions: 10,
//     min: 0,
//     max: 100,
//     value: myValue,
//     onChanged: (double value) {
//       setState(() {
//         myValue = value;
//       });
//     },
//   ),
// ),
// RangeSlider(
//   divisions: 10,
//   min: 0,
//   max: 100,
//   values: myValues,
//   labels: myLabels,
//   onChanged: (RangeValues value) {
//     myLabels = RangeLabels(
//       value.start.toInt().toString(),
//       value.end.toInt().toString(),
//     );
//     setState(() {
//       myValues = value;
//     });
//   },
// ),

// ],
// ),
//   child: Column(
//     children: [
//       options.elementAt(selected),
//       ElevatedButton(onPressed: (){}, child: Text("data"))
//     ],
//   ),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(
//   shape: CircleBorder(),
//   child: Icon(Icons.home_rounded),
//   onPressed: () {
//     setState(() {
//       counter += 1;
//     });
//   },
// ),
// bottomNavigationBar: BottomAppBar(
//   shape: CircularNotchedRectangle(),
//   notchMargin: 10,
//   color: Colors.amberAccent,
//   child: Container(height: 50),
// ),
// bottomNavigationBar: BottomNavigationBar(
//   items: <BottomNavigationBarItem>[
//     BottomNavigationBarItem(
//       icon: Icon(Icons.man_outlined),
//       label: "about",
//     ),
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
//     BottomNavigationBarItem(icon: Icon(Icons.work), label: "work"),
//   ],
//   currentIndex: selected,
//   onTap: onTapItem,
//   backgroundColor: Colors.black,
//   selectedItemColor: Colors.deepOrangeAccent,
//   unselectedItemColor: Colors.white,
// ),
// floatingActionButton: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     FloatingActionButton.extended(
//       elevation: 20,
//       backgroundColor: Colors.amber[900],
//       foregroundColor: Colors.white,
//       label: Text("minus"),
//       icon: Icon(Icons.minimize, size: 30),
//       onPressed: () {
//         setState(() {
//           counter -= 1;
//         });
//       },
//     ),
//     FloatingActionButton.extended(
//       elevation: 20,
//       backgroundColor: Colors.amber[900],
//       foregroundColor: Colors.white,
//       label: Text("add"),
//       icon: Icon(Icons.add, size: 30),
//       onPressed: () {
//         setState(() {
//           counter += 1;
//         });
//       },
//     ),
// ],
// ),
//       ),
//     );
//   }
// }

/////////////////////////////////////////////////////////snackbar
///
// void main() => runApp(const SnackBarExampleApp());

// class SnackBarExampleApp extends StatelessWidget {
//   const SnackBarExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('SnackBar Sample')),
//         body: const Center(child: SnackBarExample()),
//       ),
//     );
//   }
// }

// class SnackBarExample extends StatefulWidget {
//   const SnackBarExample({super.key});

//   @override
//   State<SnackBarExample> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<SnackBarExample> {
//   @override
//   Widget build(BuildContext context) {
//     return  ElevatedButton(
//       child: const Text('Show Snackbar'),
//       onPressed: () {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: Colors.black,
//             behavior: SnackBarBehavior.floating,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadiusGeometry.circular(10)
//             ),
//             duration: Duration(seconds: 3),
//             margin: EdgeInsets.all(40),
//             // padding: EdgeInsets.symmetric(vertical: 60),
//             content: const Text('Awesome Snackbar!'),
//             action: SnackBarAction(
//               label: 'Action',
//               onPressed: () {
//                 // Code to execute.
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

/////////////////////////////////////////////////////////////////bottom sheet
///
///
// import 'package:flutter/material.dart';
// import 'package:flutter/src/material/date_picker.dart';

// void main() => runApp(const RootApp());

// class RootApp extends StatelessWidget {
//   const RootApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   DateTime selectedDate = DateTime.now();

//   selectedDateFunc(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       initialDatePickerMode: DatePickerMode.day,
//       // helpText: "",
//       // cancelText: "",
//       // confirmText: "",
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2026), // ✅ allows full year
//     );

//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample', style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.black,
//         actions: [
//           PopupMenuButton(
//             color: Colors.blueGrey[50],
//             itemBuilder: (BuildContext context) {
//               return [
//                 PopupMenuItem(value: "/chat", child: Text("chat")),
//                 PopupMenuItem(value: "/about", child: Text("about us")),
//                 PopupMenuItem(value: "/contact", child: Text("contact us")),
//               ];
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // showModalBottomSheet<void>(
//                   //   isDismissible: false,
//                   //   context: context,
//                   //   builder: (BuildContext context) {
//                   //     return Container(
//                   //       height: 200,
//                   //       color: Colors.blueGrey[50],
//                   //       child: const Center(
//                   //         child: Text("hello how is it going dude??"),
//                   //       ),
//                   //     );
//                   //   },
//                   // );
//                   //////////////////////////////////////////date picker
//                   // selectedDateFunc(context);
//                   ////////////////////////////////////////// alert dialog
//                   showDialog(context: context, builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text("alert dialog"),
//                       content: Text("are you agree with this contract??"),
//                       actions: [
//                         TextButton(onPressed: (){}, child: Text("NO")),
//                         TextButton(onPressed: (){}, child: Text("YES")),
//                       ],
//                     );
//                   });
//                 },
//                 // child: const Text("open modal"),
//                 // child: const Text("pick date"),
//                 child: const Text("click me"),
//               ),
//             ),
//             // Text("${selectedDate.toLocal()}".split(" ")[0])
//           ],
//         ),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////// media query
///
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("media")),
//         body: MyPage(),

//         // final currentWidth = MediaQuery.of(context).size.width;

//         // return Row(
//         //   children: [
//         //     // Container(
//         //     //   color: Colors.amber,
//         //     //   width: MediaQuery.of(context).size.width * 0.6,
//         //     // ),
//         //     // Container(
//         //     //   color: Colors.blue,
//         //     //   width: MediaQuery.of(context).size.width * 0.4,
//         //     // )
//         //     // Container(
//         //     //   width: 100,
//         //     //   color: currentWidth > 600 ? Colors.amberAccent : Colors.cyan,
//         //     // ),
//         //   ],
//         // );
//       ),
//     );
//   }
// }

// class MyPage extends StatelessWidget {
//   const MyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double shortestSide = MediaQuery.of(context).size.shortestSide;
//     final bool useMobileLayout = shortestSide < 600;

//     gridViewForPhone() {
//       return Padding(
//         padding: EdgeInsets.all(5),
//         child: GridView.count(
//           crossAxisCount: 2,
//           children: [
//            Container(

//            )
//           ],
//         ),
//       );
//     }

//     ;
//     return useMobileLayout
//         ? gridViewForPhone()
//         : Padding(padding: EdgeInsets.all(5));
//   }
// }

////////////////////////////////////////////////////////////// routes na d navigations
///
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/routes/routes.dart';
// import 'package:flutter_application_1/screens/firstRoute.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // home: FirstRoute(),
//       initialRoute: Firstroute.routeName,
//       routes: routes,
//     );
//   }
// }
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         // body: CustomScrollView(
//         //   slivers: [
//         //     SliverAppBar(
//         //       expandedHeight: 80,
//         //       title: Text("dobrov"),
//         //       leading: Icon(Icons.icecream_outlined),
//         //       flexibleSpace: FlexibleSpaceBar(
//         //         background: Image.asset(
//         //           "assets/images/moon.png",
//         //           fit: BoxFit.cover,
//         //         ),
//         //       ),
//         //       pinned: true,
//         //       snap: true,
//         //       floating: true,
//         //     ),

//         // SliverList(
//         //   delegate: SliverChildBuilderDelegate(
//         //     (context, index) => Padding(
//         //       padding: EdgeInsets.all(8),
//         //       child: Container(
//         //         color: Colors.amber,
//         //         height: 100,
//         //         alignment: Alignment.center,
//         //         child: Text("data", style: TextStyle(color: Colors.white)),
//         //       ),
//         //     ),
//         //     childCount: 20
//         //   ),
//         // ),
//         // SliverGrid(
//         //   delegate: SliverChildBuilderDelegate((
//         //     BuildContext context,
//         //     int index,
//         //   ) {
//         //     return Container(
//         //       alignment: Alignment.center,
//         //       color: Colors.blueAccent,
//         //       child: Text("data"),
//         //     );
//         //   }),
//         //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         //     maxCrossAxisExtent: 100,
//         //     mainAxisExtent: 250,
//         //     childAspectRatio: 0.5,
//         //     mainAxisSpacing: 20
//         //   ),
//         // ),

//         // ],
//         // ),
//         appBar: AppBar(title: Text("data")),
//         body: MyGesture(),
//       ),
//     );
//   }
// }

// class MyGesture extends StatefulWidget {
//   const MyGesture({super.key});

//   @override
//   State<MyGesture> createState() => _MyGestureState();
// }

// class _MyGestureState extends State<MyGesture> {
//   bool _light = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Icon(
//               Icons.lightbulb_outline,
//               size: 60,

//               color: _light ? Colors.yellow.shade600 : Colors.black,
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 if (_light) {
//                   _light = false;
//                 } else {
//                   _light = true;
//                 }
//               });
//             },
//             child: Container(
//               color: Colors.amber,
//               child: Text("on"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//////////////////////////////////////////////////////////// future builder

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("future"), backgroundColor: Colors.grey),
//         body: MyFuture(),
//       ),
//     );
//   }
// }

// class MyFuture extends StatefulWidget {
//   const MyFuture({super.key});

//   @override
//   State<MyFuture> createState() => _MyFutureState();
// }

// class _MyFutureState extends State<MyFuture> {
//   final Future<String> _calculation = Future.delayed(
//     Duration(seconds: 2),
//     () => "data loaded",
//   );

//   FutureBuilder<String> _buildFuture() {
//     return FutureBuilder<String>(
//       future: _calculation,
//       builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//         List<Widget> children;
//         if (snapshot.hasData) {
//           children = <Widget>[
//             Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
//             Text("${snapshot.data}"),
//           ];
//         } else if (snapshot.hasError) {
//           children = <Widget>[
//             Icon(Icons.error_outline, color: Colors.red, size: 60),
//             Text("${snapshot.error}"),
//           ];
//         } else {
//           children = <Widget>[
//             SizedBox(width: 60, height: 60, child: CircularProgressIndicator()),
//             Text("wait for result"),
//           ];
//         }
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: children,
//           ),
//         );
//       },
//     );
//   }

//   int _count = 0;

//   Stream<int> _stopWatch() async* {
//     while (true) {
//       await Future.delayed(Duration(seconds: 1));
//       yield _count++;
//     }
//   }

//   Widget _buildStraem() {
//     return Center(
//       child: StreamBuilder(
//         stream: _stopWatch(),
//         builder: ((BuildContext context, AsyncSnapshot<int> snapshot) {
//           if (snapshot.hasData) {
//             return Text("${snapshot.data}");
//           } else {
//             return CircularProgressIndicator();
//           }
//         }),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [_buildFuture(), SizedBox(height: 60), _buildStraem()],
//     );
//   }
// }

////////////////////////////////////////////////////dismissible
///
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("future"), backgroundColor: Colors.grey),
//         body: MyDismiss(),
//       ),
//     );
//   }
// }

// class MyDismiss extends StatefulWidget {
//   const MyDismiss({super.key});

//   @override
//   State<MyDismiss> createState() => _MyDismissState();
// }

// class _MyDismissState extends State<MyDismiss> {
//   final List items = List.generate(20, (i) {
//     return "item ${i + 1}";
//   });

//   // final List<Item> items = List<Item>.generate(10, (i)=> Item("${i + 1}", uniqueColorGenerator.getColor()));
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemBuilder: (context, index) {
//         final item = items[index];
//         return Dismissible(
//           // direction: DismissDirection.startToEnd,
//           confirmDismiss: (direction) async {
//             if (direction == DismissDirection.startToEnd) {
//               return await showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text("delete confirmation"),
//                     content: Text("are you sure you want to delete it?"),
//                     actions: [
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(true);
//                         },
//                         child: Text("delete"),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(false);
//                         },
//                         child: Text("cancel"),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             } else {
//               print("called");
//             }
//           },

//           background: Container(
//             color: Colors.redAccent,
//             child: Padding(
//               padding: EdgeInsets.all(15),
//               child: Row(
//                 children: [
//                   Icon(Icons.delete, color: Colors.white),
//                   SizedBox(width: 2),
//                   Text("move to trash", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ),

//           secondaryBackground: Container(
//             color: Colors.greenAccent,
//             child: Padding(
//               padding: EdgeInsets.all(15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Icon(Icons.call, color: Colors.white),
//                   SizedBox(width: 2),
//                   Text("call", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ),

//           onDismissed: (direction) {
//             if (direction == DismissDirection.startToEnd) {
//               setState(() {
//                 items.removeAt(index);
//               });
//             } else {}
//           },
//           key: Key(item),
//           child: Container(
//             height: 90,
//             alignment: Alignment.center,
//             color: uniqueColorGenerator.getColor(item),
//             child: Padding(padding: EdgeInsets.all(12), child: Text(item)),
//           ),
//         );
//       },
//       separatorBuilder: (BuildContext context, int index) =>
//           Divider(height: 10),
//       itemCount: items.length,
//     );
//   }
// }

// // class Item {
// //    final String text;
// //    final Color color;

// //   Item(this.text, this.color)
// // }

// // ignore: camel_case_types
// class uniqueColorGenerator {
//   // static Random rnd = Random();
//   static Color getColor(String item) {
//     final Random rnd = Random(item.hashCode);
//     return Color.fromARGB(
//       255,
//       rnd.nextInt(255),
//       rnd.nextInt(255),
//       rnd.nextInt(255),
//     );
//   }
// }

///////////////////////////////////////////////////////////draggable
///
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyTabBar(),
// home: Scaffold(
//   appBar: AppBar(
//     title: Text("Drag"),
//     backgroundColor: Colors.deepOrangeAccent,
//   ),
//   body: TabBarView(children: [
//     Icon(Icons.flight),
//     Icon(Icons.directions),
//     Icon(Icons.transit_enterexit),
//   ]),
//   // body: MyClass(),
//   bottomSheet: MyTabBar(),
//   drawer: Drawer(
//     child: ListView(
//       padding: EdgeInsets.zero,
//       children: [
//         DrawerHeader(
//           child: Center(child: Text("drawer header")),
//           decoration: BoxDecoration(color: Colors.blueAccent),
//         ),
//         ListTile(title: Text("home"), trailing: Icon(Icons.home)),
//         ListTile(title: Text("work"), leading: Icon(Icons.work)),
//       ],
//     ),
//   ),

// ),
//     );
//   }
// }

// class MyDrag extends StatefulWidget {
//   const MyDrag({super.key});

//   @override
//   State<MyDrag> createState() => _MyDragState();
// }

// class _MyDragState extends State<MyDrag> {
//   bool accepted = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Draggable(
//           data: "flutter",
//           feedback: FlutterLogo(size: 120),
//           child: FlutterLogo(size: 100),
//         ),
//         DragTarget(
//           builder: (context, candidateData, rejectedData) {
//             return Center(

//               child: accepted ? Container(
//                 color: Colors.amber,
//                 width: 200,
//                 height: 200,
//                 child: FlutterLogo(size: 100),
//               ): Container(
//                 color: Colors.amber,
//                 width: 200,
//                 height: 200,
//                 // child: FlutterLogo(size: 100),
//               ),
//             );
//           },
//           onWillAccept: (data) => true,
//           onAccept: (data) {
//             setState(() {
//               accepted = true;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }

// class MyDrag extends StatefulWidget {
//   const MyDrag({super.key});

//   @override
//   State<MyDrag> createState() => _MyDragState();
// }

// class _MyDragState extends State<MyDrag> {
//   void showSnackBar(String text, BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text(text), duration: Duration(seconds: 1)),
//     );
//   }

//   resetGame() {
//     setState(() {
//       i = 0;
//       numberList = uniqueNumberGenerator.getNumber();
//       wrongMoves = 0;
//     });
//   }

//   List numberList = uniqueNumberGenerator.getNumber();
//   int i = 0;

//   late int listLength = numberList.length;

//   int wrongMoves = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Container(child: Text("wrong moves: $wrongMoves")),
//         Draggable(
//           data: numberList[i],
//           feedback: Opacity(
//             opacity: 0.5,
//             child: Container(color: Colors.redAccent, width: 100, height: 100),
//           ),
//           child: Container(
//             color: Colors.redAccent,
//             width: 100,
//             height: 100,
//             alignment: Alignment.center,
//             child: Text(
//               numberList[i].toString(),
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//         ),

//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,

//           children: [
//             DragTarget(
//               builder:
//                   (
//                     BuildContext context,
//                     List<Object?> candidateData,
//                     List<dynamic> rejectedData,
//                   ) {
//                     return Container(
//                       color: Colors.blueGrey,
//                       width: 100,
//                       height: 100,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "ODD",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ),
//                     );
//                   },
//               onWillAccept: (data) {
//                 return true;
//               },
//               onAccept: (int data) {
//                 if (data % 2 == 0) {
//                   showSnackBar("wrong!", context);
//                   setState(() {
//                     wrongMoves += 1;
//                   });
//                 } else {
//                   showSnackBar("correct", context);
//                   setState(() {
//                     i++;
//                     if (listLength <= i) {
//                       i = 0;
//                     }
//                   });
//                 }
//               },
//             ),
//             DragTarget(
//               builder:
//                   (
//                     BuildContext context,
//                     List<Object?> candidateData,
//                     List<dynamic> rejectedData,
//                   ) {
//                     return Container(
//                       color: Colors.greenAccent,
//                       width: 100,
//                       height: 100,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "EVEN",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ),
//                     );
//                   },
//               onWillAccept: (data) {
//                 return true;
//               },
//               onAccept: (int data) {
//                 if (data % 2 == 0) {
//                   showSnackBar("correct", context);
//                   setState(() {
//                     i++;
//                     if (listLength <= i) {
//                       i = 0;
//                     }
//                   });
//                 } else {
//                   showSnackBar("wrong!", context);
//                   setState(() {
//                     wrongMoves += 1;
//                   });
//                 }
//               },
//             ),
//           ],
//         ),
//         TextButton(onPressed: resetGame, child: Text("reset game")),
//       ],
//     );
//   }
// }

// class uniqueNumberGenerator {
//   static Random random = Random();
//   static List getNumber() {
//     return List.generate(4, (index) => random.nextInt(100));
//   }
// }

///////////////////////////////////////////////material banner
///
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("course"),
          backgroundColor: Colors.blueAccent,
        ),

        // body: MyMaterialBanner(),
        // body: MyPage(),
        // body: Center(
        //   child: Tooltip(
        //     preferBelow: false,
        //     message: "this is string",
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       gradient: LinearGradient(
        //         colors: [Colors.blueAccent, Colors.deepPurpleAccent],
        //       ),
        //     ),
        //     child: Text("data"),
        //   ),
        // ),
        // body: Column(
        //   children: [
        //     Expanded(
        //       child: Container(
        //         color: Colors.amberAccent,
        //         child: Center(child: Text("data1")),
        //       ),
        //     ),
        //     Divider(
        //       height: 10,
        //       thickness: 5,
        //       indent: 20,
        //       endIndent: 20,
        //       color: Colors.redAccent,
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.blueAccent,
        //         child: Center(child: Text("data1")),
        //       ),
        //     ),
        //   ],
        // ),

        body: MyPage(),
      ),
    );
  }
}
