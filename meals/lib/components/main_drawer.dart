import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomCenter,
            child: const Text(
              'Let´s cook!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                // color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Meals'),
          _createItem(Icons.settings, 'Settings'),
        ],
      ),
    );
  }
}