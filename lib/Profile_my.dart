import 'package:flutter/material.dart';

class ProfileMyScreen extends StatelessWidget {
  const ProfileMyScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Detail'),
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                
                Navigator.of(context).pop();
              },
              child: Stack(
                children: [
                  Image.asset(
                    'images/Danang.jpg', 
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
                          'Da Nang, Viet Nam',
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
                        'images/nguoi.jpg', 
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
                    Text('Emmy', style: TextStyle(fontSize: 18 , color:Color(0xFF00CEA6) )),
                    SizedBox(height: 8),
                    Text('2', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
           // Row chứa hai địa điểm
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
      ],
      ),
    );
  }
}
