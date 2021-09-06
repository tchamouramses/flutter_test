import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'Accueil',
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Categorie',
          icon: Icon(
            Icons.grid_goldenratio,
            color: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Tous',
          icon: Icon(
            Icons.list,
            color: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Rechercher',
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'like',
          icon: Icon(
            Icons.healing,
            color: Colors.grey,
          ),
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      onTap: (index) {},
    );
  }
}
