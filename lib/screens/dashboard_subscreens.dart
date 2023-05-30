import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String name = 'Home';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Card(
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.gun),
            title: Text('Firearm license'),
            subtitle: Text('Manage firearm bill'),
            trailing: FaIcon(FontAwesomeIcons.arrowRight),
          ),
        ),
        Card(
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.hammer),
            title: Text('Building Permit'),
            subtitle: Text('Manage building permit'),
            trailing: FaIcon(FontAwesomeIcons.arrowRight),
          ),
        ),
        Card(
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.water),
            title: Text('Water Bill'),
            subtitle: Text('Manage water bill'),
            trailing: FaIcon(FontAwesomeIcons.arrowRight),
          ),
        ),
      ],
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  static const String name = 'Feed';


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Feed'),
    );
  }
}

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);
  static const String name = 'Alert';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Alert'),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const String name = 'Profile';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile'),
    );
  }
}
