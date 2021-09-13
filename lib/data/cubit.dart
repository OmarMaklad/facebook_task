



import 'dart:async';
import 'dart:convert';

import 'package:facebook_task/data/state.dart';
import 'package:facebook_task/models/postModel.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class PostCubit extends Cubit<PostStates>{
  PostCubit() : super(PostInit());

  static PostCubit get (context)=> BlocProvider.of(context);
  late PostsModel postModel;
  Future<void> getPostData() async {
     emit(PostLoading());
   try{
     var response = await rootBundle.loadString('assets/json/posts.json');
     var posts = jsonDecode(response);
     postModel = PostsModel.fromJson(posts);
     emit(PostInit());
   }catch(e){

   }
    print(postModel.data?[0].userName);
  }

  }
