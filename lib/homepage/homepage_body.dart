import 'package:flutter/material.dart';

import 'resources/app_assets.dart';
import 'resources/app_colors.dart';

class HomepageBody extends StatelessWidget {
  const HomepageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: _mainContainWidget()
          ),
          _bottomListWidget(),
        ],
      ),
    );
  }

  Widget _mainContainWidget() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enjoy the\ntime together",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 55,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "650+ Travel Agents serving 1258+ Destinations worldwide",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Watch Video",
                        style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: AppColors.btnColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset(AppAssets.group))
        ],
      ),
    );
  }

  Widget _bottomListWidget() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _listTile(text: "Camp Fire", image: AppAssets.campFire, isLike: true),
          _listTile(text: "DJ Night", image: AppAssets.djNight),
          _listTile(text: "Photography", image: AppAssets.photography),
          _listTile(text: "Competitions", image: AppAssets.competitions),
        ],
      ),
    );
  }

  Widget _listTile({required String text, required String image, bool isLike = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Stack(
        children: [
          // Like/dislike icon
          Positioned(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: Colors.white.withOpacity(0.5),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.white24,
                    blurRadius: 5.0,
                    offset: new Offset(5.0, 5.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    image,
                    height: 150,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  Text(text),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                isLike ? AppAssets.likeIcon : AppAssets.disLikeIcon,
                height: isLike ? 40 : 20,
                width: isLike ? 40 : 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
