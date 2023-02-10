import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sayohat_app/data/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(16.0),
            child: const Text(
              "Sayohat",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppines',
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            height: 56.0,
            width: double.infinity,
            margin: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            decoration: _getCustomBoxDecoration(AppColors.color3),
            child: Row(
              children: const [
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Qidirish",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 56.0,
            margin: EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 12.0,
                    bottom: 12.0,
                  ),
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  decoration: _getCustomBoxDecoration(
                      index == 0 ? AppColors.color2 : AppColors.color3),
                  child: Text(
                    "Barchasi",
                    style: TextStyle(
                      color: index == 0 ? AppColors.color1 : Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Mashxur joylar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Poppines',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return _popularCitiesItem(
                          "Orol dengizi", "Qoraqalpog'iston");
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Barchasi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: 'Poppines',
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return _getCityItem();
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _popularCitiesItem(String city, String country) {
    return Container(
      width: 124.0,
      margin: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      decoration: const BoxDecoration(
        color: AppColors.color2,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://plus.unsplash.com/premium_photo-1670176446562-5c9712c12d74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80"),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 56.0,
            decoration: _getBoxDecorationWithLinearGradient(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: Text(
                  city,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  country,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              )
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration _getCustomBoxDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
    );
  }

  BoxDecoration _getBoxDecorationWithLinearGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0x00000000),
          Color(0xBE000000),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16.0),
        bottomRight: Radius.circular(16.0),
      ),
    );
  }

  Widget _getCityItem() {
    return Container(
      height: 136.0,
      width: double.infinity,
      margin: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqpGEpcbgN3Qe2CcZX-QjQ-vWiqaMQyIhwLg&usqp=CAU"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: _getBoxDecorationWithLinearGradient(),
      ),
    );
  }
}
