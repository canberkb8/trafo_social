import 'package:travel_blog/core/base/model/base_model.dart';
import 'package:travel_blog/ui/profile_page/model/sharedImage_model.dart';

class TravelModel extends BaseModel<TravelModel> {
  String sharedDate;
  List<SharedImg> sharedImg;
  String sharedLat;
  String sharedLong;
  String sharedText;
  String sharedUserId;
  String sharedUserName;
  String sharedUserProfileImg;

  TravelModel(
      {this.sharedDate,
      this.sharedImg,
      this.sharedLat,
      this.sharedLong,
      this.sharedText,
      this.sharedUserId,
      this.sharedUserName,
      this.sharedUserProfileImg});

  TravelModel.fromJson(Map<String, dynamic> json) {
    sharedDate = json['sharedDate'];
    if (json['sharedImg'] != null) {
      sharedImg = new List<SharedImg>();
      json['sharedImg'].forEach((v) {
        sharedImg.add(new SharedImg.fromJson(v));
      });
    }
    sharedLat = json['sharedLat'];
    sharedLong = json['sharedLong'];
    sharedText = json['sharedText'];
    sharedUserId = json['sharedUserId'];
    sharedUserName = json['sharedUserName'];
    sharedUserProfileImg = json['sharedUserProfileImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sharedDate'] = this.sharedDate;
    if (this.sharedImg != null) {
      data['sharedImg'] = this.sharedImg.map((v) => v.toJson()).toList();
    }
    data['sharedLat'] = this.sharedLat;
    data['sharedLong'] = this.sharedLong;
    data['sharedText'] = this.sharedText;
    data['sharedUserId'] = this.sharedUserId;
    data['sharedUserName'] = this.sharedUserName;
    data['sharedUserProfileImg'] = this.sharedUserProfileImg;
    return data;
  }

  @override
  TravelModel fromJson(Map<String, Object> json) {
    return TravelModel.fromJson(json);
  }
}