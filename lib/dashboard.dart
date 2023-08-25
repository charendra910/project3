import 'package:flutter/material.dart';
import 'package:project2/productpage.dart';

// void main(){
//   runApp(Dashboard());
// }

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey,
              height: 200,
              width: double.infinity,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.qoA8QKEjAoS9krBfzqfLBgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Text(
                "Recents",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductPage((index + 1).toString()),
                      ));
                    },
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.grey,
                      width: 80,
                      child: Center(child: Image.network('https://th.bing.com/th/id/OIP.qoA8QKEjAoS9krBfzqfLBgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',fit: BoxFit.fill,height: double.infinity,)),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Arrived",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(4, (index) {
                  return Container(
                    
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.grey,
                    width: 80,
                    child: Center(child: Image.network('https://th.bing.com/th/id/OIP.qoA8QKEjAoS9krBfzqfLBgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    fit: BoxFit.cover,)),
                  );
                }),
              ),
            ),
            SizedBox(height: 1.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Listed",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductPage((index + 1).toString()),
                      ));
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.grey,
                      width: 80,
                      child: Center(child: Image.network('https://th.bing.com/th/id/OIP.qoA8QKEjAoS9krBfzqfLBgHaEK?w=317&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',fit: BoxFit.cover,height: double.infinity,)),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}