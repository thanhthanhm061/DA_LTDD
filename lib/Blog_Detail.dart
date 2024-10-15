import 'package:flutter/material.dart';

class Blogdetail extends StatelessWidget {
  const Blogdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
         
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/Blog1.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red, 
                          size: 30, 
                        ),
                        SizedBox(width: 10), 
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Like 46 ',
                                  
                                ),
                              ],
                            ),

                        ),
                        Row(
                          children: [
                            SizedBox(width: 86),
                            Icon(Icons.facebook, color: Colors.blue, size: 30), 
                            SizedBox(width: 16),
                            Icon(Icons.camera_alt, color: Colors.pink, size: 30), 
                            SizedBox(width: 16),
                            Icon(Icons.chat_bubble, color: Colors.green, size: 30), 
                          ],
                        ), 
                      ], 
                    ),
                  ),
                ],
              ),
            ),
            const Text('Title here: Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                  'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                  ,
                  maxLines: 5, 
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 25, 
                ),
              ),
            const SizedBox(height: 10),
             Row(
                children: [
                  Image.asset(
                    'images/Maskng2.jpg',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 
                      Text(
                        'Tran Thao',
                          style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 18, 
                        ),
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                        
                          Icon(Icons.star, color: Color.fromARGB(255, 255, 81, 0), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 255, 81, 0), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 255, 81, 0), size: 18),
                          Icon(Icons.star, color: Color.fromARGB(255, 255, 81, 0), size: 18),
                          Icon(Icons.star, color: Colors.black),
                          
                          SizedBox(width: 5,),
                            Text(
                              '6 Reviews',
                              style: TextStyle(fontSize: 16 , ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
        const SizedBox(height: 10),
        const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
              'ut aliquip ex ea commodo consequat.',
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                ),
          const SizedBox(height: 10),
          Image.asset(
              'images/Blog3.jpg',
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.cover,
                
                ),
          const SizedBox(height: 10),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
              'ut aliquip ex ea commodo consequat.',
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                ),

           const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
