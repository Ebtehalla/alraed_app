// ignore_for_file: no_leading_underscores_for_local_identifiers

class PlayerModel {
  int? playerNumber;
  String? playerImage;
  String? playerName;
  String? playerPosition;

  PlayerModel(
      {this.playerNumber,
      this.playerImage,
      this.playerName,
      this.playerPosition});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    if (json["playerNumber"] is int) {
      playerNumber = json["playerNumber"];
    }
    if (json["playerImage"] is String) {
      playerImage = json["playerImage"];
    }
    if (json["playerName"] is String) {
      playerName = json["playerName"];
    }
    if (json["playerPosition"] is String) {
      playerPosition = json["playerPosition"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["playerNumber"] = playerNumber;
    _data["playerImage"] = playerImage;
    _data["playerName"] = playerName;
    _data["playerPosition"] = playerPosition;
    return _data;
  }
}
