import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key});

  final logoColor = const Color(0xFF008F51);
  final backgroundColor = const Color(0xFFCCE9DC);
  final textColor = const Color(0xFF008F51); // Your desired text color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo.png", // Replace with your actual logo asset path
              height: 30.0,
              width: 30.0,
            ),
            const SizedBox(width: 10.0),
            Text(
              'MASJID.LIFE',
              style: TextStyle(
                color: textColor, // Set the text color here
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: logoColor,
            onPressed: () {
              // Handle search functionality
            },
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: logoColor),
            onSelected: (value) {
              // Handle menu item selection logic here
              switch (value) {
                case 'Home':
                  Navigator.pushNamed(context, '/home');
                  break;
                case 'About':
                  Navigator.pushNamed(context, '/about');
                  break;
                case 'Location':
                  Navigator.pushNamed(context, '/branches');
                  break;
                case 'Home':
                  Navigator.pushNamed(context, '/donation');
                  break;
                case 'About':
                  Navigator.pushNamed(context, '/services');
                  break;
                case 'Location':
                  Navigator.pushNamed(context, '/features');
                  break;
                case 'Home':
                  Navigator.pushNamed(context, '/management');
                  break;
                case 'About':
                  Navigator.pushNamed(context, '/contact');
                  break;
                case 'Location':
                  Navigator.pushNamed(context, '/location');
                  break;
                case 'Home':
                  Navigator.pushNamed(context, '/help');
                  break;
                // Add more cases as needed
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Home',
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 8),
                      Text('Home'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'About',
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(width: 8),
                      Text('About'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Our Branches',
                  child: Row(
                    children: [
                      Icon(Icons.shop_two_outlined),
                      SizedBox(width: 8),
                      Text('Our Branches'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Donation & Funds',
                  child: Row(
                    children: [
                      Icon(Icons.attach_money_rounded),
                      SizedBox(width: 8),
                      Text('Donation & Funds'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Our Services',
                  child: Row(
                    children: [
                      Icon(Icons.design_services_sharp),
                      SizedBox(width: 8),
                      Text('Our Services'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Our Features',
                  child: Row(
                    children: [
                      Icon(Icons.home_mini_sharp),
                      SizedBox(width: 8),
                      Text('Our Features'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Management',
                  child: Row(
                    children: [
                      Icon(Icons.multiple_stop_sharp),
                      SizedBox(width: 8),
                      Text('Management'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Contact Us',
                  child: Row(
                    children: [
                      Icon(Icons.contact_emergency_rounded),
                      SizedBox(width: 8),
                      Text('Contact Us'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Location',
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 8),
                      Text('Location'),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Help & Account',
                  child: Row(
                    children: [
                      Icon(Icons.account_balance_outlined),
                      SizedBox(width: 8),
                      Text('Help & Account'),
                    ],
                  ),
                ),
                // Add more items as needed
              ];
            },
          ),
        ],
      ),
    );
  }
}
