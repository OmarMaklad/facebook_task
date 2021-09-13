import 'package:facebook_task/data/cubit.dart';
import 'package:facebook_task/data/state.dart';
import 'package:facebook_task/widgets/AnimatedWidgets.dart';
import 'package:facebook_task/widgets/commentCard.dart';
import 'package:facebook_task/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class PostsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10),
      child: BlocConsumer<PostCubit,PostStates>(
          listener: (context, state) => null,
          builder:(context, state) {
            final cubit =PostCubit.get(context);
            return state is PostLoading?
            CircularProgressIndicator(): Container(
              width: double.infinity,
              color: facebook_dgrey_color,
              child: AnimatedWidgets(
                duration: 2,
                horizontalOffset: 100,
                virticaloffset: 50,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:cubit.postModel.data?.length ,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, int index){
                      return PostCard(
                        image: cubit.postModel.data![index].photos!.isEmpty?" ":cubit.postModel.data?[index].photos?[0],
                        date: cubit.postModel.data?[index].date,
                        type: cubit.postModel.data?[index].postType,
                        body: cubit.postModel.data?[index].body,
                        reactions: cubit.postModel.data?[index].peopleReacted,
                        images: cubit.postModel.data?[index].photos,
                        numOfReactions: cubit.postModel.data?[index].numReactions,
                        userName: cubit.postModel.data?[index].userName,
                        userImage: cubit.postModel.data?[index].avatar,
                        child: Column(
                          children: <Widget>[
                            CommentCard(
                              commentBody: cubit.postModel.data?[index].comments?[0].commentBody,
                              commentUserName: cubit.postModel.data?[index].comments?[0].commentUserName,
                              commentUserImage: cubit.postModel.data?[index].comments?[0].commentAvatar,
                            ),
                          ],
                        ),

                      );
                    }),
              ),
            );}
      ),
    );
  }
}
