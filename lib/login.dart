
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController usernameController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  void login() {
    if (usernameController.text.trim() == "thanha" &&
        passwordController.text == "1234") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Login Failed"),
            content: const Text(
              "Wrong username or password",
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 223, 217, 202),

      appBar: AppBar(
        leading: const Icon(
          Icons.exit_to_app_outlined,
          color: Color.fromARGB(255, 226, 194, 159),
        ),
        title: const Text(
          "LOGIN PAGE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromARGB(255, 226, 194, 159),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.settings_accessibility_outlined,
              color: Color.fromARGB(255, 226, 194, 159),
            ),
          ),
        ],
        backgroundColor:
            const Color.fromARGB(255, 23, 2, 52),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.sizeOf(context).height -
                  kToolbarHeight -
                  MediaQuery.paddingOf(context).top -
                  MediaQuery.paddingOf(context).bottom -
                  40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 80,
                  color: Color.fromARGB(255, 23, 2, 52),
                ),

               SizedBox(height: 20),

               Text(
                  "Welcome Guyysss!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 23, 2, 52),
                  ),
                ),

                 SizedBox(height: 30),

                TextField(
                  controller: usernameController,
                  decoration:  InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_rounded),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

               SizedBox(height: 20),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration:  InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_rounded),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onSubmitted: (_) => login(),
                ),

                 SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 23, 2, 52),
                      foregroundColor:
                          const Color.fromARGB(255, 226, 194, 159),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                 SizedBox(height: 25),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Good things await...",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 23, 2, 52),
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.favorite,
                      size: 14,
                      color: Color.fromARGB(255, 23, 2, 52),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
