import 'package:flutter/material.dart';

class Sd extends StatelessWidget {
  const Sd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SD Page'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 350,
              height: 450,  
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        'images/SD.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                 
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,  
                      children: [
                        Text(
                          'Fellow4U - ứng dụng đồng hành cùng Hướng dẫn viên (HDV) trong thời đại công nghệ, hỗ trợ tìm kiếm và tương tác với khách du lịch trên toàn cầu.',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center, 
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'SỬ DỤNG FELLOW4U THẬT DỄ!',
                          textAlign: TextAlign.center, 
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '->',
                          textAlign: TextAlign.center,  
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
