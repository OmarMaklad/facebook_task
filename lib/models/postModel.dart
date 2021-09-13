// To parse this JSON data, do
//
//     final postsModel = postsModelFromJson(jsonString);

import 'dart:convert';

PostsModel postsModelFromJson(String str) => PostsModel.fromJson(json.decode(str));

String postsModelToJson(PostsModel data) => json.encode(data.toJson());

class PostsModel {
  PostsModel({
    this.data,
  });

  List<Datum>? data;

  factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.postType,
    this.avatar,
    this.userName,
    this.body,
    this.date,
    this.photos,
    this.peopleReacted,
    this.numReactions,
    this.comments,
  });

  int? postType;
  String? avatar;
  String? userName;
  String? body;
  String? date;
  List<String>? photos;
  String? peopleReacted;
  String? numReactions;
  List<Comment>? comments;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    postType: json["postType"],
    avatar: json["avatar"],
    userName: json["user_name"],
    body: json["body"],
    date: json["date"],
    photos: List<String>.from(json["photos"].map((x) => x)),
    peopleReacted: json["peopleReacted"],
    numReactions: json["numReactions"],
    comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "postType": postType,
    "avatar": avatar,
    "user_name": userName,
    "body": body,
    "date": date,
    "photos": List<dynamic>.from(photos!.map((x) => x)),
    "peopleReacted": peopleReacted,
    "numReactions": numReactions,
    "comments": List<dynamic>.from(comments!.map((x) => x.toJson())),
  };
}

class Comment {
  Comment({
    this.commentAvatar,
    this.commentBody,
    this.commentUserName,
  });

  String? commentAvatar;
  String? commentBody;
  String? commentUserName;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    commentAvatar: json["commentAvatar"],
    commentBody: json["commentBody"],
    commentUserName: json["CommentUserName"],
  );

  Map<String, dynamic> toJson() => {
    "commentAvatar": commentAvatar,
    "commentBody": commentBody,
    "CommentUserName": commentUserName,
  };
}
