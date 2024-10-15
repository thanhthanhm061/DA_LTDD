
import 'package:flutter/material.dart';
import 'package:duan1/profile_setting.dart';
import 'package:duan1/experiences.dart';
import 'package:duan1/Sd.dart';
import 'package:duan1/YooJin.dart';
import 'package:duan1/Next.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: Column(
        children: [
           Stack(
              children: [
                Image.asset(
                  'images/Caurong.jpg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const Positioned(
                  left: 16,
                  bottom: 20,
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  right: 16, 
                  top: 16, 
                  child: IconButton(
                    icon: const Icon(
                      Icons.search, 
                      color: Colors.white, 
                      size: 30, 
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ),
              ],
            ),
          // Các thông báo với hình ảnh và nội dung
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
                          'Tuan Tran accepted your request for the trip in Danang, Vietnam on Jan 20, 2020',
                          maxLines: 2, // Giới hạn số dòng
                          overflow: TextOverflow.ellipsis, 
                        ),
                        Text('Jan 16'),
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
                          'Emmy sent you an offer for the trip in Ho Chi Minh, Vietnam on Feb 12, 2020',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('Jan 16'),
                      ],
                    ),
                  ),
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
                          'Thanhs! Your trip in Danang, Vietnam on Jan 20, 2020 has been finished. Please leave a review for the guide Tuan Tran',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('Jan 16'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Nút Leave Review
          ElevatedButton(
            onPressed: () {
        
            },
            style: ElevatedButton.styleFrom(
             backgroundColor: const Color(0xFF00CEA6),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            ),
            child: const Text('Leave Review', style: TextStyle(color: Colors.white)), 
          ),
          const SizedBox(height:120),
          const ButtonSection(),
        ],
        
      ),
      
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: const Color.fromARGB(255, 109, 110, 110) ,
            icon: Icons.explore, 
            label: '',
            onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const ProfileSetting()),
              );
            },
          ),
          const SizedBox(width: 10), 
          ButtonWithText(
            color: const Color.fromARGB(255, 109, 110, 110) ,
            icon: Icons.place, 
            label: '',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const Experiences())
              );
            },
          ),
          const SizedBox(width: 10), 
          ButtonWithText(
            color: const Color.fromARGB(255, 109, 110, 110) ,
            icon: Icons.message, 
            label: '',
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=> const Sd())
             );
            },
          ),
          const SizedBox(width: 10), 
          ButtonWithText(
            color: const Color(0xFF00CEA6),
            icon: Icons.notifications, 
            label: 'Notifications', 
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder:(context)=>const YooJin())
                 );
            },
          ),
          const SizedBox(width: 10), 
          ButtonWithText(
            color: const Color.fromARGB(255, 109, 110, 110) ,
            icon: Icons.person, 
            label: '',
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => const Next())
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    this.onPressed, 
  });

  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
