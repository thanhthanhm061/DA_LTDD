
import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),

      ),
      body: ListView(
        children:[
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                // Hành động khi nhấn button
                print('Button pressed');
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 4, 245, 64),
                padding: const EdgeInsets.symmetric(horizontal: 54.0, vertical: 26.0), // Điều chỉnh khoảng cách
                backgroundColor: const Color(0xFF00CEA6), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0), 
                ),
              ),
               child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      'images/TuanTran.jpg',
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8), 
                  const Column( 
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(
                        'Tuấn Trần',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'), 
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Image.asset(
                  'images/On.jpg',
                  width: 24, 
                  height: 24,
                ),
                const SizedBox(width: 8),
                const Icon(Icons.chevron_right),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Icon(Icons.chevron_right),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(height: 20),
         const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Sign Out",
          ),
        )
        ],
        
      ),
    );
  }
}

