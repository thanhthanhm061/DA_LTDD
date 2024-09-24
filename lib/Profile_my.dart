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
                // Không làm gì khi nhấn vào ảnh
              },
              child: Stack(
                children: [
                  Image.asset(
                    'images/Danang.jpg', // Đường dẫn đến ảnh
                    width: MediaQuery.of(context).size.width, // Đặt chiều rộng bằng chiều rộng màn hình
                    height: 200, // Chiều cao tùy chỉnh
                    fit: BoxFit.cover, // Giữ tỷ lệ khung hình mà không bị vỡ
                  ),
                  Positioned(
                    left: 16, // Khoảng cách từ bên trái
                    bottom: 10, // Khoảng cách từ bên trên
                    child: Row(
                      children: [
                        Icon(Icons.place, color: Colors.white), // Biểu tượng địa điểm
                        const SizedBox(width: 8), // Khoảng cách giữa biểu tượng và chữ
                        const Text(
                          'Da Nang, Viet Nam',
                          style: TextStyle(color: Colors.white, fontSize: 18), // Màu chữ
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 25, 
                    bottom: 20,
                   child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, // Định hình bo tròn
                        border: Border.all(color: Color(0xFF00CEA6), width: 3), // Viền màu xanh
                      ),
                    child: ClipOval(
                      child: Image.asset(
                        'images/nguoi.jpg', // Đường dẫn đến ảnh người
                        width: 70, // Kích thước bo tròn
                        height: 70,
                        fit: BoxFit.cover, // Giữ tỷ lệ khung hình cho ảnh bo tròn
                      ),
                    ),
                   )
                  ),
                ],
              ),
            ),



          // Dòng văn bản trái phải
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Văn bản bên trái
              Padding(
                padding: const EdgeInsets.all(16.0), // Padding cho văn bản bên trái
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
              // Văn bản bên phải
              Padding(
                padding: const EdgeInsets.all(16.0), // Padding cho văn bản bên phải
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                    padding: const EdgeInsets.only(right: 110), // Di chuyển Container sang trái
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), // Bo tròn
                        border: Border.all(color: Colors.grey), // Đường viền
                      ),
                      padding: const EdgeInsets.all(8.0),
                       constraints: BoxConstraints(
                        maxHeight: 50,
                        ), // Padding cho toàn bộ container
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Vector1.jpg', // Đường dẫn tới ảnh Ho Gươm
                            width: 50, // Kích thước ảnh
                            height: 50,
                          ),
                          const SizedBox(width: 8), // Khoảng cách giữa ảnh và chữ
                          const Text('Ho Gươm', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  // Ho Hoàn Kiếm
                  Padding(
                    padding: const EdgeInsets.only(right: 250), // Di chuyển Container sang trái
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), // Bo tròn
                        border: Border.all(color: Colors.grey), // Đường viền
                      ),
                      padding: const EdgeInsets.all(8.0),
                      constraints: BoxConstraints(
                        maxHeight: 50,
                      maxWidth: 200, // Đặt chiều rộng tối đa cho container
                    ), // Padding cho toàn bộ container
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Vector2.jpg', // Đường dẫn tới ảnh Ho Hoàn Kiếm
                            width: 50, // Kích thước ảnh
                            height: 50,
                          ),
                          const SizedBox(width: 8), // Khoảng cách giữa ảnh và chữ
                          const Text('Ho Hoàn Kiếm', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Vector3
              // Vector3
            Padding(
              padding: const EdgeInsets.only(top: 20 , right: 320), // Khoảng cách giữa hai hàng
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Bo tròn
                  border: Border.all(color: Colors.grey), // Đường viền
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding ngang cho toàn bộ container
                constraints: BoxConstraints(
                  maxWidth: 400, // Đặt chiều rộng tối đa cho container
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Chiều rộng tối thiểu của Row
                  children: [
                    Image.asset(
                      'images/Vector3.jpg', // Đường dẫn tới ảnh Vector3
                      width: 50, // Kích thước ảnh
                      height: 50,
                    ),
                    const SizedBox(width: 8), // Khoảng cách giữa ảnh và chữ
                    const Text('Pho 12 Pho Kim Ma', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0 , top: 30), // Thêm khoảng cách bên trái
                  child: const Text('FEE', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 28)), // Chữ FEE
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250, top: 30), // Thêm khoảng cách bên trái
                  child: const Text('\$20.000', style: TextStyle(color: Color(0xFF00CEA6), fontSize: 28)), // Chữ $20.000, // Chữ FEE
                ),
                
              ],

            ),
            Padding(
            padding: const EdgeInsets.only(top: 30, right: 390), // Khoảng cách giữa hàng
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Bo tròn
                border: Border.all(color: Colors.grey), // Đường viền
              ),
              padding: const EdgeInsets.all(8.0), // Padding cho container
              child: Row(
                mainAxisSize: MainAxisSize.min, // Chiều rộng tối thiểu của Row
                children: [
                  Icon(Icons.check, size: 30,), // Dấu tích
                  const SizedBox(width: 8), // Khoảng cách giữa dấu tích và chữ
                  const Text(
                    'Mark Finished',
                    style: TextStyle( fontSize: 18), // Màu chữ
                  ),
                ],
              ),
            ),
          )

            ],
          )
        
        ],
      ),
    );
  }
}
