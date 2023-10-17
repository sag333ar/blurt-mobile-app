import 'dart:js_interop';
import 'dart:js_util';
import 'dart:developer';

@JS()
external getChainProps(identifier);
@JS()
external getFeed(identifier, type);

void call() async {
  var id = 'getChainProps_${DateTime.now().toIso8601String()}';
  var promise = getChainProps(id);
  var contentData = await promiseToFuture(promise);

  print(contentData);

  var feedId = 'getFeed_${DateTime.now().toIso8601String()}';
  var promiseFeed = getFeed(feedId, 'trending');
  var contentDataFeed = await promiseToFuture(promiseFeed);

  print(contentDataFeed);

  log('web service');
}
