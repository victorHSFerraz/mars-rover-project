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

  PhotoManifest({
    this.name,
    this.landingDate,
    this.launchDate,
    this.status,
    this.maxSol,
    this.maxDate,
    this.totalPhotos,
  });

  PhotoManifest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    landingDate = json['landing_date'];
    launchDate = json['launch_date'];
    status = json['status'];
    maxSol = json['max_sol'];
    maxDate = json['max_date'];
    totalPhotos = json['total_photos'];
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

    return data;
  }
}
