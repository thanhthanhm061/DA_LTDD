import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiences'),
      ),
      body: Column(
        
        children: [
          Container(
            width: 450,
            height: 450, 
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 230, 159, 159)),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        'images/More1.jpg',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                ),

           
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20.0),
                          ),
                          child: Image.asset(
                            'images/More2.jpg',
                            width: 245,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),

                        ClipRRect(
                          child: Image.asset(
                            'images/More3.jpg',
                            width: 245,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                const ButtonSection(),

              ],
            ),
            
          ),
        
         
          
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
            color: const Color(0xFF00CEA6),
            icon: Icons.place, 
            label: 'Da Nang, Viet Nam',
            onPressed: () {
                
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
            padding: const EdgeInsets.only(),
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
