import 'package:flutter/material.dart';
import 'package:hsd_challenge/app/data/models/player.dart';

class TeamTile extends StatelessWidget {
  final List<Player> players;
  final String team;

  const TeamTile({@required this.players, @required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 44.0,
              color: Color(0xffFCFCFC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    team,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Geomanist',
                        fontSize: 12,
                        height: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    players.length.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Geomanist',
                        fontSize: 12,
                        height: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
