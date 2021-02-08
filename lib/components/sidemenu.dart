import 'package:flutter/material.dart';

import 'package:websafe_svg/websafe_svg.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import '../constant.dart';
import '../responsive.dart';
import '../extensions.dart';
import 'side_menu_item.dart';
import 'tag.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/webicon.png",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                //icon: WebsafeSvg.asset("assets/Icons/Edit.svg", width: 16),
                icon: Icon(Icons.get_app),
                label: Text(
                  "Hire me",
                  style: TextStyle(color: Colors.white),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),
              SizedBox(height: kDefaultPadding),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kBgDarkColor,
                onPressed: () {},
                //icon: WebsafeSvg.asset("assets/Icons/Download.svg", width: 16),
                icon: Icon(Icons.get_app),
                label: Text(
                  "Download my CV",
                  style: TextStyle(color: kTextColor),
                ),
              ).addNeumorphism(),
              SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Portofolio",
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Project",
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Contact",
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
              ),

              SizedBox(height: kDefaultPadding * 2),
              // Tags
              //Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
