import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_now/presentation/pages/addtopage_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateFormat = DateFormat('EEEE dd');
    final formattedDate = dateFormat.format(now);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(
                Icons.logout,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.black87,
          title: const Text(
            "Today's schedule",
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 22.0),
                child: Text(
                  formattedDate,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  height: 20,
                  width: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const Icon(
                    size: 32,
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                label: '',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AddTodoPage()));
                  },
                  child: Container(
                    height: 50,
                    width: 52,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffff9999),
                          Color(0xffff5050),
                          Color(0xffff4500),
                        ],
                      ),
                    ),
                    child: const Icon(
                      size: 32,
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: '',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Container(
                  height: 20,
                  width: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const Icon(
                    size: 32,
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                label: '',
                backgroundColor: Colors.red),
          ],
        ),
      ),
    );
    ;
  }
}
