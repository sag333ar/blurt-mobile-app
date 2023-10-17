import 'dart:developer';

import 'package:flutter/services.dart';

void call()async{
       const platform = MethodChannel('app.the-blurt-mobile/bridge');
          var id = 'getChainProps_${DateTime.now().toIso8601String()}';
          final String response = await platform.invokeMethod('getChainProps', {
            'id': id,
          });
          log('Response received from platform is - $response');

          var feedId = 'getFeed_${DateTime.now().toIso8601String()}';
          final String feedResponse = await platform.invokeMethod('getFeed', {
            'id': feedId,
            'feed_type': 'trending', // trending, hot, created
          });
          log('Response received from platform is - $feedResponse');
  }