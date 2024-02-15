import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/page.dart';

class LoginSixth extends StatefulWidget {
  const LoginSixth({super.key});

  @override
  State<LoginSixth> createState() => _LoginSixthState();
}

class _LoginSixthState extends State<LoginSixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.toNamed(RouteConstant.LOGINPAGES);
                        },
                        child: const Text('Home'),
                      ),
                    ),
                    Image.asset('asset/images/cuaten.png',height: 200,width: 200,),

                  ],
                ),

              ),

              Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),


                padding: const EdgeInsets.symmetric(horizontal: 40,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.0),
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),



                    TextFormField(
                      //controller: _emailTextEditingController,
                      keyboardType: TextInputType.number,
                      decoration:  InputDecoration(
                        hintText: 'Enter Mobile Number',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.phone,color: Colors.orange),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),

                      ),

                      validator: (value){
                        return value!.isEmpty ? 'Please enter username' : null;
                      },
                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      //controller: _passwordTextEditingController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration:  InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        prefixIcon: Icon(Icons.lock,color: Colors.orange),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.black,

                          ),
                        ),

                      ),

                      validator: (value){
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                    const SizedBox(height: 10,),

                    InkWell(
                      onTap: (){
                        Get.toNamed(RouteConstant.LOGIN7);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text('Forget Password?',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),

                    InkWell(
                      onTap: (){
                        Get.toNamed(RouteConstant.LOGIN7);
                      },
                      child: Container(
                        height: 50,
                        width: 280,

                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),


                            ),

                          ],

                        ),


                      ),
                    ),
                  ],


                ),

              ),


            ],

          ),

        ),

      ),

    );
  }
}
