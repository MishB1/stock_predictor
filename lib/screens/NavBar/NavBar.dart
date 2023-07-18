  import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(        
        padding: EdgeInsets.zero,        
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Hamish Blay'), 
            accountEmail: Text('hamishblay@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/me.jpg', 
                width: 90,
                height: 90,
                fit: BoxFit.cover,),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/images/four.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 30,),
          ListTile(
            leading: Icon(Icons.favorite_outline, color: Colors.lightBlue,),
            title: Text('Favorites'),
            onTap: () {},  
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.share_outlined, color: Colors.lightBlue,),
            title: Text('Share with Friends'),
            onTap: () {},
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.newspaper_outlined, color: Colors.lightBlue,),
            title: Text('News'),
            onTap: () {},
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.notifications_outlined, color: Colors.lightBlue,),
            title: Text('Notifications'),
            onTap: () {},
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.person_outline, color: Colors.lightBlue,),
            title: Text('About'),
            onTap: () {},
          ),
          
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.settings_outlined, color: Colors.lightBlue,),
            title: Text('Settings'),
            onTap: () {},
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.update_outlined, color: Colors.lightBlue,),
            title: Text('Updates'),
            onTap: () {},
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.lightBlue,),
            title: Text('Exit'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}