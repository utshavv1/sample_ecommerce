import 'package:flutter/material.dart';
import 'category.dart';


class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Daraz"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active)),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder : (context) => const Category(categoryName: '',)));
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/image/dice.jpg"),
                        ),

                      ),

                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}