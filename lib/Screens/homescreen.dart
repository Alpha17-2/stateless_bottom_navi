import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateless_bottom_navi/Providers/screenIndexProvider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<screenIndexProvider>(context);
    int currentScreenIndex = _screenindexprovider.fetchCurrentScreenIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        elevation: 1.5,
        currentIndex: currentScreenIndex,
        onTap: (value) => _screenindexprovider.updateScreenIndex(value),
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon((currentScreenIndex==0)?Icons.home:Icons.home_outlined),
              backgroundColor: Colors.indigo // provide color to any one icon as it will overwrite the whole bottombar's color ( if provided any )
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon((currentScreenIndex==1)?Icons.search:Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon((currentScreenIndex==2)?Icons.favorite:Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon((currentScreenIndex==3)?Icons.person:Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
