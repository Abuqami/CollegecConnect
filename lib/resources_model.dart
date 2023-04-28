class ResourcesModel {
  String id;
  String userID;
  final String academic;
  final String title;
  final String description;
  String youtubeLink;
  String soundCloudLink;
  String spotifyLink;
  final String timestamp;

  ResourcesModel({
    this.id = '',
    this.userID = '',
    required this.academic,
    required this.title,
    required this.description,
    this.youtubeLink = '',
    this.soundCloudLink = '',
    this.spotifyLink = '',
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userID': userID,
        'academic': academic,
        'title': title,
        'description': description,
        'youtube_link': youtubeLink,
        'sound_cloud_link': soundCloudLink,
        'spotify_link': spotifyLink,
        'date': timestamp,
      };

  static ResourcesModel fromJson(Map<String, dynamic> json) => ResourcesModel(
        id: json['id'] ?? '',
        userID: json['userID'] ?? '',
        academic: json['academic'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? '',
        youtubeLink: json['youtube_link'] ?? '',
        soundCloudLink: json['sound_cloud_link'] ?? '',
        spotifyLink: json['spotify_link'] ?? '',
        timestamp: json['date'] ?? '',
      );
}
