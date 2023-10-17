import 'dart:convert';

import 'package:blurt_mobile_app/models/feed/post_feed_model.dart';
import 'package:blurt_mobile_app/resources/enum.dart';
import 'package:blurt_mobile_app/services/service.dart'
    if (dart.library.io) 'package:blurt_mobile_app/services/mobile_service.dart'
    if (dart.library.html) 'package:blurt_mobile_app/services/web_service.dart';

import 'package:blurt_mobile_app/models/chain_prop_model.dart';

class ApiService {
  Future<ChainPropModel> getChainProps() async {
    String responseJson = await getChainPropsFromNative();
    Map<String, dynamic> data = json.decode(json.decode(responseJson)['data']);
    return ChainPropModel.fromJson(data);
  }

  Future<List<PostFeedModel>> getFeed(FeedType type) async {
    String responseJson = await getFeedTypeFromNative(type);
    List data = json.decode(json.decode(responseJson)['data']);
    return data.map((e) => PostFeedModel.fromJson(e)).toList() ;
  }
}
