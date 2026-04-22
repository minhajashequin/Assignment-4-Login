import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 172, 204, 220),
        centerTitle: true,
        title: const Text(
          "HOMEPAGE of the Project",
          style: TextStyle(
            color: Color.fromARGB(105, 10, 45, 243),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: const Icon(
          Icons.home,
          color: Color.fromARGB(255, 89, 76, 175),
        ),
        actions: [
          IconButton(
            onPressed: () => showMessage(context, "Settings Clicked"),
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () => showMessage(context, "Profile Clicked"),
            icon: const Icon(Icons.person_2_sharp),
          ),
          IconButton(
            onPressed: () => showMessage(context, "Home Clicked"),
            icon: const Icon(Icons.home),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello User! Welcome to Flutter",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),

          const Text(
            "Welcome to the homepage",
            style: TextStyle(fontSize: 16, color: Color.fromARGB(177, 0, 0, 0)),
          ),

          const SizedBox(height: 10),
          Center(
            child: Container(
              height: 250,
              width: 300,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 139, 96, 125),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(66, 0, 0, 0),
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "MINHAJ ASHEQUIN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 139, 97, 96),
        foregroundColor: const Color.fromARGB(255, 7, 255, 19),
        onPressed: () => showMessage(context, "Floating Button Clicked"),
        child: const Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          const DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Homepage"),
            onTap: () => showMessage(context, "Homepage clicked"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("ProfilePage"),
            onTap: () => showMessage(context, "Profile clicked"),
          ),
        ],
      ),
    );
  }
}
