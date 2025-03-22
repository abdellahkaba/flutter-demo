import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image1.jpg"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/montre5.png"),
                    radius: 40,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Theme.of(context).primaryColor],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              },
            ),

            Divider(height: 1, color: Theme.of(context).primaryColor),

            ListTile(
              leading: Icon(Icons.countertops),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "Counter",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(height: 2, color: Theme.of(context).primaryColor),
            ListTile(
              leading: Icon(Icons.chat),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "Chat",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/chat");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Bienvenue dans mon application",
          style: TextStyle(
            color: Theme.of(context).indicatorColor,
            fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Hello EveryOne",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
