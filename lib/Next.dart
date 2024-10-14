// ignore: file_names
import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Detail'),
      ),

      body: SingleChildScrollView(
        child: Column(
        children: [
          GestureDetector(
            onTap: () {
            
            },
            child: Stack(
              children: [
               Image.asset('images/MH11.jpg',
                    width: MediaQuery.of(context).size.width, 
                    height: 200, 
                    fit: BoxFit.cover, 
               ),
                const Positioned(
                    left: 16, 
                    bottom: 10, 
                    child: Row(
                      children: [
                        Icon(Icons.place, color: Colors.white), 
                        SizedBox(width: 8), 
                        Text(
                          'Ho Chi Minh, Viet Nam',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 25, 
                    bottom: 20,
                   child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        border: Border.all(color: const Color(0xFF00CEA6), width: 3), 
                      ),
                    child: ClipOval(
                      child: Image.asset(
                        'images/MH1.jpg', 
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover, 
                      ),
                    ),
                   )
                  ),
              ],
            ),
          ),
          
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8), 
                    Text('Time', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('Guide', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8), 
                    Text('Number of Travelers', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8), 
                    Text('Attractions', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
         
              Padding(
                padding: EdgeInsets.all(16.0), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Feb 2, 2020', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('8:00 AM - 10:00 AM', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    SizedBox(height: 8),
                    Text('2', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Ho Gươm
                  Padding(
                    padding: const EdgeInsets.only(right: 16), 
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), 
                        border: Border.all(color: Colors.grey),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      constraints: const BoxConstraints(
                        maxHeight: 50,
                        maxWidth: 200, // Điều chỉnh kích thước linh hoạt hơn
                      ), 
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Vector1.jpg',
                            width: 50, 
                            height: 50,
                          ),
                          const SizedBox(width: 8), 
                          const Flexible(
                            child: Text(
                              'Ho Gươm', 
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  Padding(
                    padding: const EdgeInsets.only(right: 16), 
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey), 
                      ),
                      padding: const EdgeInsets.all(8.0),
                      constraints: const BoxConstraints(
                        maxHeight: 50,
                        maxWidth: 200, // Điều chỉnh kích thước linh hoạt hơn
                      ), 
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Vector2.jpg', 
                            width: 50, 
                            height: 50,
                          ),
                          const SizedBox(width: 8), 
                          const Flexible(
                            child: Text(
                              'Ho Hoàn Kiếm', 
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), 
                    border: Border.all(color: Colors.grey), 
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0), 
                  constraints: const BoxConstraints(
                    maxWidth: 400, 
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, 
                    children: [
                      Image.asset(
                        'images/Vector3.jpg',
                        width: 50, 
                        height: 50,
                      ),
                      const SizedBox(width: 8), 
                      const Flexible(
                        child: Text(
                          'Pho 12 Pho Kim Ma', 
                          style: TextStyle(fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 30, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FEE', 
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), 
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      '\$20.000', 
                      style: TextStyle(
                        color: Color(0xFF00CEA6), 
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
         Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/Maskng1.jpg',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 10), 
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Tuan Tran ',
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
                          Icon(Icons.star, color: Color.fromARGB(255, 255, 81, 0), size: 18),
                          
                          SizedBox(width: 5,),
                          Text(
                            '123 Review',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),

                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                            'ut aliquip ex ea commodo consequat.',
                        maxLines: 4, // Giới hạn số dòng
                        overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
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
                     
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                        'ut aliquip ex ea commodo consequat.',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'images/Groupng3.jpg',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Thanhs! ',
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
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          
                          SizedBox(width: 5,),
                          Text(
                            '4 Reviews',
                            style: TextStyle(fontSize: 16 , ),
                          ),
                        ],
                      ),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                            'ut aliquip ex ea commodo consequat.',
                        maxLines: 4, // Giới hạn số dòng
                        overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
