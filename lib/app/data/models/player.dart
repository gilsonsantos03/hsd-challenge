import 'package:meta/meta.dart';

class Player {
  Player({
    @required this.id,
    @required this.firstName,
    @required this.heightFeet,
    @required this.heightInches,
    @required this.lastName,
    @required this.position,
    @required this.team,
    @required this.weightPounds,
  });

  final int id;
  final String firstName;
  final int heightFeet;
  final int heightInches;
  final String lastName;
  final String position;
  final Team team;
  final int weightPounds;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json["id"],
        firstName: json["first_name"],
        heightFeet: json["height_feet"],
        heightInches: json["height_inches"],
        lastName: json["last_name"],
        position: json["position"],
        team: Team.fromJson(json["team"]),
        weightPounds: json["weight_pounds"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "height_feet": heightFeet,
        "height_inches": heightInches,
        "last_name": lastName,
        "position": position,
        "team": team.toJson(),
        "weight_pounds": weightPounds,
      };
}

class Team {
  Team({
    @required this.id,
    @required this.abbreviation,
    @required this.city,
    @required this.conference,
    @required this.division,
    @required this.fullName,
    @required this.name,
  });

  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String fullName;
  final String name;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        abbreviation: json["abbreviation"],
        city: json["city"],
        conference: json["conference"],
        division: json["division"],
        fullName: json["full_name"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "abbreviation": abbreviation,
        "city": city,
        "conference": conference,
        "division": division,
        "full_name": fullName,
        "name": name,
      };
}
