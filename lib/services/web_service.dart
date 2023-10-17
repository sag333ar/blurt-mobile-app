import 'dart:js_interop';
import 'dart:js_util';

@JS()
external _getChainProps(identifier);
@JS()
external _getFeed(identifier, type);

void getChainProps() async {
  var id = 'getChainProps_${DateTime.now().toIso8601String()}';
  var promise = _getChainProps(id);
  var contentData = await promiseToFuture(promise);

  print(contentData);
}

void getFeedType(String feedType) async {
  var feedId = 'getFeed_${DateTime.now().toIso8601String()}';
  var promiseFeed = _getFeed(feedId, feedType);
  var contentDataFeed = await promiseToFuture(promiseFeed);

  print(contentDataFeed);
}
