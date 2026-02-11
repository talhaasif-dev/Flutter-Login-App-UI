import 'package:flutter/material.dart';

void main() {
  runApp(mainapp());
}
class mainapp extends StatelessWidget {
  const mainapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset("assets/login.png", width: 180, height: 180,),
                Text("Login Panel",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email"
                      
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                  
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.black,
                  ),
                  ),
                ),
                
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute<void>(builder: (context) => const signup()),
                  );
                  },
                  child: Text("Sign up")),
                )
              ],
            ),
          ),
        ),
      )
    );
    }
}

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset("assets/login.png", width: 180, height: 180,),
                Text("Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name"
                      
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email"
                      
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                  
                  },
                  child: Text("Register"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.black,
                  ),
                  ),
                ),
                
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  },
                  child: Text("go back")),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}