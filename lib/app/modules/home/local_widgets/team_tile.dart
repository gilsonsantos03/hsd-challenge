import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:hsd_challenge/app/data/models/player.dart';
import 'package:hsd_challenge/app/modules/home/local_widgets/text_styles.dart';

class TeamTile extends StatelessWidget {
  final List<Player> players;
  final String team;
  final AnimateIconController controller;

  const TeamTile({
    @required this.players,
    @required this.team,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 44.0,
            padding: EdgeInsets.only(left: 24.0, top: 16.0),
            color: Color.fromRGBO(252, 252, 252, 1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Container(
                  child: Text(
                    team,
                    style: kTeamStyle,
                  ),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Container(
                  child: Text(
                    players.length.toString(),
                    style: kCountPlayerStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 24.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 24.0, bottom: 24.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFCFCFC),
                        child: Text(
                          players[index].firstName.split('').first,
                          style: kPlayerFirstLetterAndFullNameStyle,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              players[index].id.toString(),
                              style: kPlayerIdStyle,
                            ),
                          ),
                          Container(
                            child: Text(
                              '${players[index].firstName} ${players[index].lastName}',
                              style: kPlayerFirstLetterAndFullNameStyle,
                            ),
                          ),
                          //refreshButton()
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
