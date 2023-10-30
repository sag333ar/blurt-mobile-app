import 'package:blurt_mobile_app/resources/enum.dart';
import 'package:flutter/services.dart';

const String channel = 'app.the-blurt-mobile/bridge';
const platform = MethodChannel(channel);

Future<String> getChainPropsFromPlatform() async {
  final String chainPropId =
      'getChainProps_${DateTime.now().toIso8601String()}';
  final String response = await platform.invokeMethod('getChainProps', {
    'id': chainPropId,
  });
  return response;
}

Future<String> getFeedTypeFromPlatform(FeedType feedType) async {
  final String feedId = 'getFeed_${DateTime.now().toIso8601String()}';
  final String feedResponse = await platform.invokeMethod('getFeed', {
    'id': feedId,
    'feed_type': enumToString(feedType), // trending, hot, created
  });
  return feedResponse;
}
