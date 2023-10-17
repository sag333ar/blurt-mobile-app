import 'dart:js_interop';
import 'dart:js_util';

import 'package:blurt_mobile_app/resources/enum.dart';

@JS()
external getChainProps(identifier);
@JS()
external getFeed(identifier, type);

Future<String> getChainPropsFromNative() async {
  final String chainPropId =
      'getChainProps_${DateTime.now().toIso8601String()}';
  var promise = getChainProps(chainPropId);
  var contentData = await promiseToFuture(promise);
  return contentData;
}

Future<String> getFeedTypeFromNative(FeedType feedType) async {
  final String feedId = 'getFeed_${DateTime.now().toIso8601String()}';
  var promise = getFeed(feedId, enumToString(feedType));
  var contentData = await promiseToFuture(promise);
  return contentData;
}
