import 'package:flutter/material.dart';

class YooJin extends StatelessWidget {
  const YooJin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Detail'),
      ),
      body: SingleChildScrollView( // Sử dụng SingleChildScrollView để hỗ trợ cuộn
        child: Column(
          children: [
            const Stack(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/YooJin.jpg'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'YooJin',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 14, 15, 14),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Da Nang, Viet Nam',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 240, 9, 9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16), // Khoảng cách giữa các thành phần
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
                      Text('YooJin', style: TextStyle(fontSize: 18, color: Color(0xFF00CEA6))),
                      SizedBox(height: 8),
                      Text('2', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Địa điểm 1
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20), 
                ),
                child: const Row(
                  children: [
                    Icon(Icons.location_on, size: 20, color: Colors.white),
                    SizedBox(width: 16), // Khoảng cách giữa icon và chữ
                    Text(
                      'Địa điểm 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              
              // Địa điểm 2
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20), // Bo tròn container
                ),
                child: const Row(
                  children: [
                    Icon(Icons.location_on, size: 20, color: Colors.white),
                    SizedBox(width: 16), // Khoảng cách giữa icon và chữ
                    Text(
                      'Địa điểm 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Địa điểm 3
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20), // Bo tròn container
                ),
                child: const Row(
                  children: [
                    Icon(Icons.location_on, size: 20, color: Colors.white),
                    SizedBox(width: 16), // Khoảng cách giữa icon và chữ
                    Text(
                      'Địa điểm 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Chữ bên trái
              Text(
                'YooJin - Beautiful Places',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Stack(
                children: [
                  Positioned(
                    left: 80, 
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/JooJin1.jpg'),
                    ),
                  ),

               
                  Positioned(
                    left: 30, 
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/JooJin2.jpg'),
                    ),
                  ),

                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/JooJin3.jpg'),
                  ),
                ],
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
