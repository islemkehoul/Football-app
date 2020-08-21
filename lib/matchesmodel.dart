// To parse this JSON data, do
//
//     final matches = matchesFromJson(jsonString);

import 'dart:convert';

Matches matchesFromJson(String str) => Matches.fromJson(json.decode(str));

String matchesToJson(Matches data) => json.encode(data.toJson());

class Matches {
    Matches({
        this.count,
        this.filters,
        this.matches,
    });

    int count;
    Filters filters;
    List<Match> matches;

    factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        count: json["count"],
        filters: Filters.fromJson(json["filters"]),
        matches: List<Match>.from(json["matches"].map((x) => Match.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "filters": filters.toJson(),
        "matches": List<dynamic>.from(matches.map((x) => x.toJson())),
    };
}

class Filters {
    Filters({
        this.dateFrom,
        this.dateTo,
        this.permission,
    });

    DateTime dateFrom;
    DateTime dateTo;
    String permission;

    factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        dateFrom: DateTime.parse(json["dateFrom"]),
        dateTo: DateTime.parse(json["dateTo"]),
        permission: json["permission"],
    );

    Map<String, dynamic> toJson() => {
        "dateFrom": "${dateFrom.year.toString().padLeft(4, '0')}-${dateFrom.month.toString().padLeft(2, '0')}-${dateFrom.day.toString().padLeft(2, '0')}",
        "dateTo": "${dateTo.year.toString().padLeft(4, '0')}-${dateTo.month.toString().padLeft(2, '0')}-${dateTo.day.toString().padLeft(2, '0')}",
        "permission": permission,
    };
}

class Match {
    Match({
        this.id,
        this.competition,
        this.season,
        this.utcDate,
        this.status,
        this.matchday,
        this.stage,
        this.group,
        this.lastUpdated,
        this.odds,
        this.score,
        this.homeTeam,
        this.awayTeam,
        this.referees,
    });

    int id;
    Competition competition;
    Season season;
    DateTime utcDate;
    String status;
    dynamic matchday;
    String stage;
    String group;
    DateTime lastUpdated;
    Odds odds;
    Score score;
    Team homeTeam;
    Team awayTeam;
    List<dynamic> referees;

    factory Match.fromJson(Map<String, dynamic> json) => Match(
        id: json["id"],
        competition: Competition.fromJson(json["competition"]),
        season: Season.fromJson(json["season"]),
        utcDate: DateTime.parse(json["utcDate"]),
        status: json["status"],
        matchday: json["matchday"],
        stage: json["stage"],
        group: json["group"],
        lastUpdated: DateTime.parse(json["lastUpdated"]),
        odds: Odds.fromJson(json["odds"]),
        score: Score.fromJson(json["score"]),
        homeTeam: Team.fromJson(json["homeTeam"]),
        awayTeam: Team.fromJson(json["awayTeam"]),
        referees: List<dynamic>.from(json["referees"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "competition": competition.toJson(),
        "season": season.toJson(),
        "utcDate": utcDate.toIso8601String(),
        "status": status,
        "matchday": matchday,
        "stage": stage,
        "group": group,
        "lastUpdated": lastUpdated.toIso8601String(),
        "odds": odds.toJson(),
        "score": score.toJson(),
        "homeTeam": homeTeam.toJson(),
        "awayTeam": awayTeam.toJson(),
        "referees": List<dynamic>.from(referees.map((x) => x)),
    };
}

class Team {
    Team({
        this.id,
        this.name,
    });

    int id;
    String name;

    factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class Competition {
    Competition({
        this.id,
        this.name,
        this.area,
    });

    int id;
    String name;
    Area area;

    factory Competition.fromJson(Map<String, dynamic> json) => Competition(
        id: json["id"],
        name: json["name"],
        area: Area.fromJson(json["area"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "area": area.toJson(),
    };
}

class Area {
    Area({
        this.name,
        this.code,
        this.ensignUrl,
    });

    String name;
    String code;
    dynamic ensignUrl;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        name: json["name"],
        code: json["code"],
        ensignUrl: json["ensignUrl"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "ensignUrl": ensignUrl,
    };
}

class Odds {
    Odds({
        this.msg,
    });

    String msg;

    factory Odds.fromJson(Map<String, dynamic> json) => Odds(
        msg: json["msg"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
    };
}

class Score {
    Score({
        this.winner,
        this.duration,
        this.fullTime,
        this.halfTime,
        this.extraTime,
        this.penalties,
    });

    dynamic winner;
    String duration;
    ExtraTime fullTime;
    ExtraTime halfTime;
    ExtraTime extraTime;
    ExtraTime penalties;

    factory Score.fromJson(Map<String, dynamic> json) => Score(
        winner: json["winner"],
        duration: json["duration"],
        fullTime: ExtraTime.fromJson(json["fullTime"]),
        halfTime: ExtraTime.fromJson(json["halfTime"]),
        extraTime: ExtraTime.fromJson(json["extraTime"]),
        penalties: ExtraTime.fromJson(json["penalties"]),
    );

    Map<String, dynamic> toJson() => {
        "winner": winner,
        "duration": duration,
        "fullTime": fullTime.toJson(),
        "halfTime": halfTime.toJson(),
        "extraTime": extraTime.toJson(),
        "penalties": penalties.toJson(),
    };
}

class ExtraTime {
    ExtraTime({
        this.homeTeam,
        this.awayTeam,
    });

    dynamic homeTeam;
    dynamic awayTeam;

    factory ExtraTime.fromJson(Map<String, dynamic> json) => ExtraTime(
        homeTeam: json["homeTeam"],
        awayTeam: json["awayTeam"],
    );

    Map<String, dynamic> toJson() => {
        "homeTeam": homeTeam,
        "awayTeam": awayTeam,
    };
}

class Season {
    Season({
        this.id,
        this.startDate,
        this.endDate,
        this.currentMatchday,
        this.winner,
    });

    int id;
    DateTime startDate;
    DateTime endDate;
    int currentMatchday;
    dynamic winner;

    factory Season.fromJson(Map<String, dynamic> json) => Season(
        id: json["id"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        currentMatchday: json["currentMatchday"],
        winner: json["winner"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "startDate": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "endDate": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "currentMatchday": currentMatchday,
        "winner": winner,
    };
}
