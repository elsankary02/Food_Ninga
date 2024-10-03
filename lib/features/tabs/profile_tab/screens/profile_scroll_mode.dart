import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScrollMode extends StatelessWidget {
  const ProfileScrollMode({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Photo Profile.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  padding: EdgeInsets.zero,
                  height: 900,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: theme.scaffoldBackgroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SvgPicture.asset('assets/svg/Scrooll Tools.svg'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),                      const SizedBox(
                        height: 20,
                      ),                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
