// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlayerModel {
  String? id;
  int? playerNumber;
  String? playerName;
  String? playerPosition;
  String? playerImage;

  PlayerModel({
    this.playerNumber,
    this.playerName,
    this.playerPosition,
    this.playerImage,
    this.id,
  });

  PlayerModel.fromJson(Map<String, dynamic> json) {
    playerNumber = json['playerNumber'];
    playerName = json['playerName'];
    playerPosition = json['playerPosition'];
    playerImage = json['playerImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['playerNumber'] = playerNumber;
    data['playerName'] = playerName;
    data['playerPosition'] = playerPosition;
    data['playerImage'] = playerImage;
    return data;
  }

  @override
  String toString() {
    return 'PlayerModel(playerNumber: $playerNumber, playerName: $playerName, playerPosition: $playerPosition, playerImage: $playerImage)';
  }

  @override
  bool operator ==(covariant PlayerModel other) {
    if (identical(this, other)) return true;

    return other.playerNumber == playerNumber &&
        other.playerName == playerName &&
        other.playerPosition == playerPosition &&
        other.playerImage == playerImage;
  }

  @override
  int get hashCode {
    return playerNumber.hashCode ^
        playerName.hashCode ^
        playerPosition.hashCode ^
        playerImage.hashCode;
  }

  PlayerModel copyWith({
    String? id,
    int? playerNumber,
    String? playerName,
    String? playerPosition,
    String? playerImage,
  }) {
    return PlayerModel(
      id: id,
      playerNumber: playerNumber ?? this.playerNumber,
      playerName: playerName ?? this.playerName,
      playerPosition: playerPosition ?? this.playerPosition,
      playerImage: playerImage ?? this.playerImage,
    );
  }
}
