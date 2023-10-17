enum FeedType{trending,hot}


   String enumToString(Object o) => o.toString().split('.').last;

   
   T enumFromString<T>(String key, List<T> values) {
    return values.firstWhere(
      (element) =>
          key.toLowerCase() == enumToString(element as Object).toLowerCase(),
    );
  }