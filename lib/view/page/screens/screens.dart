import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_in_new/view/page/widgets/textFormFieldDefault.dart';

class HomeScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 10,top: 70,end: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 30, bottom: 20),
                    child: Text(
                      'LoGin',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldd(

                    isPass: false,
                    controller: emailController,
                    text1: 'Enter Your Email',
                    text2: 'Email',
                    keyboard1: TextInputType.text,
                    icon1: Icon(
                      Icons.email,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldd(


                    isPass: true,
                    controller: passwordController,
                    text1: 'Enter Your password',
                    text2: 'Password',
                    keyboard1: TextInputType.text,
                    icon1: Icon(
                      Icons.lock,
                    ),
                    icon2: Icon(Icons.remove_red_eye),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: MaterialButton(
                      onPressed: () {

                          if (formKey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                          } else {
                            print('must no');
                          }



                      },
                      color: Colors.blue,
                      child: Text(
                        'Login in',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Dont\'t have any account?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register now!',
                            style: TextStyle(color: Colors.orange, fontSize: 17),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
