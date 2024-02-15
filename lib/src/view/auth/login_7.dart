import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../constant/page.dart';


class LoginSeventh extends StatefulWidget {
  const LoginSeventh({super.key});

  @override
  State<LoginSeventh> createState() => _LoginSeventhState();
}

class _LoginSeventhState extends State<LoginSeventh> {
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
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(30),
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
                    Text('Verification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    Image.asset('asset/images/bro.png',height: 250,width: 300,),
                    Text('Verifying your mobile number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                    Text('OTP has been send to you \n        on 01674****9',style: TextStyle(color: Colors.grey,fontSize: 15),)

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

                    OtpTextField(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      numberOfFields: 4,
                      borderColor: Colors.transparent,
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      fieldWidth: 60,
                      borderRadius: BorderRadius.circular(15),
                      showFieldAsBox: true,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      onCodeChanged: (String code) {
                      },
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      },
                      // end onSubmit
                    ),

                    const SizedBox(height: 30,),

                    Container(
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
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didt\'t get an OTP?',style: TextStyle(fontSize: 20,color: Colors.grey,
                        ),),
                        SizedBox(width: 4,),
                        Text('Resend',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),),
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
