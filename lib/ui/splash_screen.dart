import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayohat_app/data/app_colors.dart';
import 'package:sayohat_app/utils/Constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.color1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/splash_image.svg",
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Oddiy hayotdan Qoching",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontFamily: 'Poppines',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: const Text(
                  "Atrofingizdagi ajoyib tajribalarni kash eting va sizni qiziqarli yashashga majbur qiling",
                  style: TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 14.0,
                    fontFamily: 'Poppines',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 160.0,
              ),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Constants.HomeScreen);
            },
            child: Container(
              height: 56.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  color: Color(0xff5EDFFF)),
              alignment: Alignment.center,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                bottom: 40.0,
              ),
              child: const Text(
                "Boshladik",
                style: TextStyle(
                  color: AppColors.color1,
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
