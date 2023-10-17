import 'package:blurt_mobile_app/resources/enum.dart';

Future<String> getChainPropsFromNative() {
  return _error();
}

Future<String> getFeedTypeFromNative(FeedType feedType) {
  return _error();
}

Future<String> _error() {
  return Future.value('error');
}
