import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{  var emailController= TextEditingController();
   var passwordController= TextEditingController();
   var formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style:TextStyle(
                      fontSize:40.0,
                      fontWeight: FontWeight.bold,
                    ) ,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType:TextInputType.emailAddress ,
                    onFieldSubmitted:(value){
                      print(value);
                    } ,
                    onChanged: (value){
                      print(value);
                    },
                    validator:(value){
                      if(value!.isEmpty)
                        { return 'email address must not be empty';

                        }
                      return null;
                    } ,
                    decoration:InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ) ,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType:TextInputType.visiblePassword ,
                    obscureText: true,
                    onFieldSubmitted:(value){
                      print(value);
                    } ,
                    onChanged: (value){
                      print(value);
                    },
                    validator:(value){
                      if(value!.isEmpty)
                      { return 'Password must not be empty';

                      }
                      return null;
                    } ,
                    decoration:InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ) ,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: ()
                      {

                          if(formKey.currentState!.validate())
                            { print(emailController.text);
                            print(passwordController.text);

                            }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
