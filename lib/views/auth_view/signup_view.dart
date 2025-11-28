import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 70, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "ReBuy",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Login with one of the following options",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Image(
                          image: AssetImage('assets/images/Google.png'),
                          width: 20,
                          height: 50,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        child: Image(
                          image: AssetImage('assets/images/Twitter.png'),
                          width: 20,
                          height: 50,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        child: Image(
                          image: AssetImage('assets/images/Apple.png'),
                          width: 20,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 130, child: Divider(thickness: 2)),
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text("Or")),
                    SizedBox(width: 130, child: Divider(thickness: 2)),
                  ],
                ),
                SizedBox(height: 40,),
                TextField(decoration: InputDecoration(
                  
                  
                  border: OutlineInputBorder(
                    
                    
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Name',   
                ),),
                SizedBox(height: 40,),
                TextField(decoration: InputDecoration(
                  
                  
                  border: OutlineInputBorder(
                    
                    
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Email',   
                ),),
                SizedBox(height: 30,),
                TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  labelText: 'password',   
                ),),
                SizedBox(
                  height: 30,
                ),
                Center(child: ElevatedButton( 
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(380, 50),
                    backgroundColor: const Color.fromARGB(191, 244, 29, 29),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    ),
                  onPressed: (){
                    Get.offNamed('/home');
                  }, child: Text("Create Account",style: TextStyle(
                    fontSize: 24,
                    color: Colors.white),),)),
                     SizedBox(height: 40,),
                     SizedBox(height: 20,),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Allready have an account ? ", style: TextStyle(
                           fontSize: 16,
                          
                           ),
                                            ),
                         TextButton(onPressed: (){
                          Get.offNamed('/login');
                         }, child: Text("Login", style: 
                         
                         TextStyle(
                          color: const Color.fromARGB(255, 202, 79, 70),
                           fontSize: 18,
                           
                           ),
                                            ),
                                        ),  
                       ],
                     ),
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}
