import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        elevation: 1.5,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.indigo // provide color to any one icon as it will overwrite the whole bottombar's color ( if provided any )
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
