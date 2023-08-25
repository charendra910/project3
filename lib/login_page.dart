// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//    LoginPage({super.key});
//   TextEditingController usernmController=TextEditingController();
//     TextEditingController pwdController=TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text("Login Page"),
//         centerTitle: true,
//       ),
//       body:Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//           mainAxisAlignment:MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: usernmController,
//                 decoration:InputDecoration(labelText:'Username', 
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
//               ),
//               SizedBox(height:20,),
//               TextField(
//                 controller: pwdController,
//                 obscureText: true,
//                 decoration:InputDecoration(labelText:'Password', 
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
//                 ),
//               SizedBox(height:20,),
//               Center(
//                 child: ElevatedButton(onPressed: (){
//                   print(usernmController.text);
//                   print(pwdController.text);
//                   if(usernmController.text == pwdController.text)
//                   print('Both are same');
//                   else
//                   print("Both are different");
//                 },
//                 child:Text("Login")),
//               ),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }