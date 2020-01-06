import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController student_name = TextEditingController();
  TextEditingController enrollment_no = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController mobile_number = TextEditingController();
  TextEditingController email_address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Registration"),
        centerTitle: true,
        backgroundColor: Colors.blue[87],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://azmind.com/demo/bootstrap-registration-forms/form-1/assets/img/backgrounds/1@2x.jpg")),
          ),
          child: Card(
            color: Colors.white70,
            elevation: 500,
            margin: EdgeInsets.only(left: 50, right: 50, top: 80, bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 10, right: 10),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: student_name,
                    cursorWidth: 30,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Student Name",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          //height: 200,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 10, right: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: enrollment_no,
                    cursorWidth: 30,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Enrollment Number",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          //height: 200,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 10, right: 10),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    controller: dob,
                    cursorWidth: 30,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Birth date",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          //height: 200,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 10, right: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: mobile_number,
                    cursorWidth: 30,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Mobile Number",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          //height: 200,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 10, right: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email_address,
                    cursorWidth: 30,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          //height: 200,
                        )),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (student_name.text == "bhumika" &&
                          enrollment_no.text == "160940107022") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        return showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text("You have already registered"),
                              );
                            });
                      }
                    });
                  },
                  child: Text("Register"),
                  splashColor: Colors.grey,
                  hoverColor: Colors.blueGrey,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("You have successfully register"),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                  child: Text("Back"),
                  color: Colors.blue,
                )
              ],
            ),
          )),
    );
  }
}
