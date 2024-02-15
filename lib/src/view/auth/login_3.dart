import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/src/constant/page.dart';

class LoginThird extends StatefulWidget {
  const LoginThird({super.key});

  @override
  State<LoginThird> createState() => _LoginThirdState();
}

class _LoginThirdState extends State<LoginThird> {
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
            color: Color(0xFF92E3A9),
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
                    Image.asset('asset/images/1pic.png',height: 200,width: 200,),
                    const Text('Welcome Back',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,),),
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
                  children: [
                    const SizedBox(height: 40,),
              
                    TextFormField(
                      //controller: _emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(
                        hintText: 'E-mail',
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        prefixIcon: Icon(Icons.person_outlined,color: Colors.green.shade300),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
              
                      ),
              
                      validator: (value){
                        return value!.isEmpty ? 'Please enter username' : null;
                      },
                    ),
                    const SizedBox(height: 20,),
              
                    TextFormField(
                      //controller: _passwordTextEditingController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration:  InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        prefixIcon: Icon(Icons.lock,color: Colors.green.shade300),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
              
                          ),
                        ),
              
                      ),
              
                      validator: (value){
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                    const SizedBox(height: 10,),
              
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('Forget Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      ],
                    ),
                    const SizedBox(height: 20,),
              
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size(Get.width * 0.80, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      onPressed: (){
                        //Navigator.pushNamed(context, RouteConstant.SELFIE);;
                        //Get.offAllNamed(RouteConstant.SELFIE);
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white,
                          fontSize: 20,),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('OR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
              
                      child: Row(
              
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
              
                        children: [
                          Image.asset('asset/images/icong.png', height: 40, width: 30,),
              
                          const Text(
                            '     Continue with Google',
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
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an Account?',style: TextStyle(fontSize: 20,
                        ),),
                        SizedBox(width: 4,),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed(RouteConstant.LOGIN4);
                          },
                          child: Text('SignUp',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Padding(padding:const EdgeInsets.symmetric(vertical: 20) ),
              
                      ],
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
