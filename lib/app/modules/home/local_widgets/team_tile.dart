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
            padding: EdgeInsets.only(left: 24.0, top: 16.0),
            color: Color(0xffFCFCFC),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Container(
                  child: Text(
                    team,
                    style: TextStyle(
                      fontFamily: 'Geomanist',
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                      color: Color(0xff2D2E2F),
                    ),
                  ),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Container(
                  child: Text(
                    players.length.toString(),
                    style: TextStyle(
                        fontFamily: 'Geomanist',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        color: Color.fromRGBO(45, 46, 47, 0.8)),
                  ),
                )
              ],
            ),
          ),
          Container(
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
                          'G',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                              color: Colors.black),
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
                              style: TextStyle(
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Color.fromRGBO(45, 46, 47, 0.53),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '${players[index].firstName} ${players[index].lastName}',
                              style: TextStyle(
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.w800,
                                fontSize: 16.0,
                                color: Color.fromRGBO(45, 46, 47, 1),
                              ),
                            ),
                          )
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
