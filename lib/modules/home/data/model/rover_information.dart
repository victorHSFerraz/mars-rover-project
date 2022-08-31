class RoverInformation {
  PhotoManifest? photoManifest;

  RoverInformation({this.photoManifest});

  RoverInformation.fromJson(Map<String, dynamic> json) {
    photoManifest = json['photo_manifest'] != null ? PhotoManifest.fromJson(json['photo_manifest']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (photoManifest != null) {
      data['photo_manifest'] = photoManifest!.toJson();
    }
    return data;
  }
}

class PhotoManifest {
  String? name;
  String? landingDate;
  String? launchDate;
  String? status;
  int? maxSol;
  String? maxDate;
  int? totalPhotos;
  List<Photos>? photos;

  PhotoManifest(
      {this.name,
      this.landingDate,
      this.launchDate,
      this.status,
      this.maxSol,
      this.maxDate,
      this.totalPhotos,
      this.photos});

  PhotoManifest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    landingDate = json['landing_date'];
    launchDate = json['launch_date'];
    status = json['status'];
    maxSol = json['max_sol'];
    maxDate = json['max_date'];
    totalPhotos = json['total_photos'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['landing_date'] = landingDate;
    data['launch_date'] = launchDate;
    data['status'] = status;
    data['max_sol'] = maxSol;
    data['max_date'] = maxDate;
    data['total_photos'] = totalPhotos;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Photos {
  int? sol;
  String? earthDate;
  int? totalPhotos;
  List<String>? cameras;

  Photos({this.sol, this.earthDate, this.totalPhotos, this.cameras});

  Photos.fromJson(Map<String, dynamic> json) {
    sol = json['sol'];
    earthDate = json['earth_date'];
    totalPhotos = json['total_photos'];
    cameras = json['cameras'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sol'] = sol;
    data['earth_date'] = earthDate;
    data['total_photos'] = totalPhotos;
    data['cameras'] = cameras;
    return data;
  }
}
