import 'package:flutter/material.dart';

import 'widgets/card_profile_information_widget.dart';
import 'widgets/discover_listItem_widget.dart';
import 'widgets/future_article_banner_widget.dart';
import 'widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfileInformationWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: natureDiscoveryData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: FutureArticleBannerWidget()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(
              title: "Notable Works",
              subtitle: "Based on the popularity of articles"),
          SizedBox(
            height: 20,
          ),
          DiscoverListItemWidget(),
        ],
      ),
    );
  }
}
