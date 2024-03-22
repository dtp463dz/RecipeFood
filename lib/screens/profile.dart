import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  Profil({super.key});

  @override
  List<Icon> icons = [
    Icon(Icons.person, color: Colors.redAccent),
    Icon(Icons.settings, color: Colors.redAccent),
    Icon(Icons.note_add, color: Colors.redAccent),
    Icon(Icons.favorite, color: Colors.redAccent),
    Icon(Icons.chat, color: Colors.redAccent),
    Icon(Icons.login, color: Colors.redAccent),
  ];
  List titls = [
    'Perconal data',
    'Settings',
    'E-Statement',
    'Refferal Code',
    'FAQs',
    'Logout'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 2),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/2c.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'User',
                style: TextStyle(fontSize: 18, color: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 40,
                  thickness: 2,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: icons[index],
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        titls[index],
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}
