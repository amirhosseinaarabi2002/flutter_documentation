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
import 'package:flutter/material.dart';
import 'package:flutter/src/material/date_picker.dart';

void main() => runApp(const RootApp());

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  selectedDateFunc(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      initialDatePickerMode: DatePickerMode.day,
      // helpText: "",
      // cancelText: "",
      // confirmText: "",
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2026), // ✅ allows full year
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          PopupMenuButton(
            color: Colors.blueGrey[50],
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: "/chat", child: Text("chat")),
                PopupMenuItem(value: "/about", child: Text("about us")),
                PopupMenuItem(value: "/contact", child: Text("contact us")),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // showModalBottomSheet<void>(
                  //   isDismissible: false,
                  //   context: context,
                  //   builder: (BuildContext context) {
                  //     return Container(
                  //       height: 200,
                  //       color: Colors.blueGrey[50],
                  //       child: const Center(
                  //         child: Text("hello how is it going dude??"),
                  //       ),
                  //     );
                  //   },
                  // );
                  //////////////////////////////////////////date picker
                  // selectedDateFunc(context);
                  ////////////////////////////////////////// alert dialog
                  showDialog(context: context, builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("alert dialog"),
                      content: Text("are you agree with this contract??"),
                      actions: [
                        TextButton(onPressed: (){}, child: Text("NO")),
                        TextButton(onPressed: (){}, child: Text("YES")),
                      ],
                    );
                  });
                },
                // child: const Text("open modal"),
                // child: const Text("pick date"),
                child: const Text("click me"),
              ),
            ),
            // Text("${selectedDate.toLocal()}".split(" ")[0])
          ],
        ),
      ),
    );
  }
}
