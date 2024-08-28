import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[100],
      ),
      body: const ProfileScreen(),
    ));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: Card(
          color: Colors.green[50],
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/picture.jpg'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Prayatna Rajkarnikar",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Mobile App Developer",
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Always eager to learn new technologies and improve my coding skills",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailsScreen()),
                      );
                    },
                    child: const Text(
                      "View More",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'More Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[100],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: Column(
              children: [
                SizedBox(height: 16),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/picture.jpg'),
                  radius: 80,
                ),
                SizedBox(height: 8),
                Text(
                  'Prayatna Rajkarnikar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text(
                'prayatna.rajkarnikar@example.com',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                '9823134099',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Icon(Icons.location_pin),
              title: Text(
                'Kathmandu, Nepal',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Icon(Icons.school),
              title: Text(
                'Bsc(Hons) Mobile Application Development',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.location_city),
              title: Text(
                'Islington College',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
