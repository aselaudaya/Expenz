import 'package:expenz/costants/colors.dart';
import 'package:expenz/costants/constants.dart';
import 'package:expenz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  //for the check box
  bool _rememberMe = false;
  //form key for the form validations
  final _formKey = GlobalKey<FormState>();

  //controllers for the text text form fields
  final TextEditingController _userNameControler = TextEditingController();
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();
  final TextEditingController _confirmPasswordControler =
      TextEditingController();

  @override
  void dispose() {
    _userNameControler.dispose();
    _emailControler.dispose();
    _passwordControler.dispose();
    _confirmPasswordControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your \nPersonal Details",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //form feild for the user name
                      TextFormField(
                        controller: _userNameControler,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter the Usernamme";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "User Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //form feild for the user email
                      TextFormField(
                        controller: _emailControler,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter the Email address";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //form feild for the password
                      TextFormField(
                        controller: _passwordControler,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter the Password";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Psassword",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //form feild for the confirm password
                      TextFormField(
                        controller: _confirmPasswordControler,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter the Same Password";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm Psassword",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Remember me for the next time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              activeColor: kMainColor,
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      //submit button
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // form is valied process data
                            String userName = _userNameControler.text;
                            String email = _emailControler.text;
                            String password = _passwordControler.text;
                            String confirmPassword =
                                _confirmPasswordControler.text;

                            print(
                                "$userName $email $password $confirmPassword");
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: CustomButton(
                            buttonName: "Next",
                            buttonColor: kMainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
