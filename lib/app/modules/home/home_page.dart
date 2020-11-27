import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hsd_challenge/app/data/models/player.dart';
import 'package:hsd_challenge/app/modules/home/home_controller.dart';
import 'package:hsd_challenge/app/modules/home/local_widgets/refresh_button.dart';
import 'package:hsd_challenge/app/modules/home/local_widgets/team_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            'NBA Teams',
            style: TextStyle(
              fontFamily: 'Geomanist',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color(0xff2D2E2F),
            ),
          ),
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xff522D2E2F),
            size: 20.0,
          ),
          backgroundColor: Color.fromRGBO(252, 252, 252, 0.9),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: _.teams.length,
          itemBuilder: (context, index) {
            final String team = _.teams.keys.elementAt(index);
            final List<Player> players = _.teams[team];

            return (index == _.teams.length - 1)
                ? refreshButtonAnimated(_.controller, _.incrementPage)
                : TeamTile(
                    players: players,
                    team: team,
                    controller: _.controller,
                  );
          },
        ),
      ),
    );
  }
}
