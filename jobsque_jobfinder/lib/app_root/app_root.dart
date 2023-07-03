import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/screens/profile_group/complete_profile/complete_profile.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComplteProfile(),
    );
  }
}
