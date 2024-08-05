import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {

  String imageUrl;
  String firstName;


    ContactItem({
     required this.imageUrl,
     required this.firstName
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){}, child: const Text("Edit Contact")),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 60,),
                   CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(imageUrl),

                  ),
                  const SizedBox(height: 30,),

                   Text(firstName),

                  const SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(6),
                              border: Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: Column(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.blue,)),
                              Text("Message",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(6),
                              border: Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: Column(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.phone,color: Colors.blue,)),
                              Text("Call",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(6),
                              border: Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: Column(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.blue,)),
                              Text("Video",style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 376,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(6),
                              border: const Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mobile",style: TextStyle(color: Colors.black12),),
                              Text("+0536164147",style: TextStyle(color: Colors.black),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 376,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(6),
                              border: const Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("WhatsApp",style: TextStyle(color: Colors.black),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 376,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(6),
                              border: const Border(
                                top: BorderSide(color: Colors.black12),
                                bottom: BorderSide(color: Colors.black12),
                                left: BorderSide(color: Colors.black12),
                                right: BorderSide(color: Colors.black12),
                              )
                          ),
                          padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("Telegram",style: TextStyle(color: Colors.black),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("ADD TO FAV"),
                      ),
                    ],
                  ),

                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Block this number",style: TextStyle(
                          color: Colors.red,
                        ),),
                      ),
                    ],
                  ),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
