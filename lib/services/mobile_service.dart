import 'dart:developer';

import 'package:blurt_mobile_app/resources/enum.dart';
import 'package:flutter/services.dart';

const String channel = 'app.the-blurt-mobile/bridge';

Future<String> getChainPropsFromNative() async {
  const platform = MethodChannel(channel);
  final String chainPropId =
      'getChainProps_${DateTime.now().toIso8601String()}';
  final String response = await platform.invokeMethod('getChainProps', {
    'id': chainPropId,
  });
  return response;
}

Future<String> getFeedTypeFromNative(FeedType feedType) async {
  const platform = MethodChannel(channel);
  final String feedId = 'getFeed_${DateTime.now().toIso8601String()}';
  final String feedResponse = await platform.invokeMethod('getFeed', {
    'id': feedId,
    'feed_type': enumToString(feedType), // trending, hot, created
  });
  return feedResponse;
}
