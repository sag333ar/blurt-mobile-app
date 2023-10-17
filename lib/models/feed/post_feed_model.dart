// To parse this JSON data, do
//
//     final postFeedModel = postFeedModelFromJson(jsonString);

import 'dart:convert';

import 'package:blurt_mobile_app/models/feed/active_vote_model.dart';
import 'package:blurt_mobile_app/models/feed/beneficiary_model.dart';

List<PostFeedModel> postFeedModelFromJson(String str) => List<PostFeedModel>.from(json.decode(str).map((x) => PostFeedModel.fromJson(x)));

String postFeedModelToJson(List<PostFeedModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostFeedModel {
    final int postId;
    final String author;
    final String permlink;
    final String category;
    final String title;
    final String body;
    final String jsonMetadata;
    final DateTime created;
    final DateTime lastUpdate;
    final int depth;
    final int children;
    final int netRshares;
    final DateTime lastPayout;
    final DateTime cashoutTime;
    final String totalPayoutValue;
    final String curatorPayoutValue;
    final String pendingPayoutValue;
    final String promoted;
    final List<dynamic> replies;
    final int bodyLength;
    final List<ActiveVoteModel> activeVotes;
    final String parentAuthor;
    final String parentPermlink;
    final String url;
    final String rootTitle;
    final List<BeneficiaryModel> beneficiaries;
    final String maxAcceptedPayout;
    final int percentBlurt;

    PostFeedModel({
        required this.postId,
        required this.author,
        required this.permlink,
        required this.category,
        required this.title,
        required this.body,
        required this.jsonMetadata,
        required this.created,
        required this.lastUpdate,
        required this.depth,
        required this.children,
        required this.netRshares,
        required this.lastPayout,
        required this.cashoutTime,
        required this.totalPayoutValue,
        required this.curatorPayoutValue,
        required this.pendingPayoutValue,
        required this.promoted,
        required this.replies,
        required this.bodyLength,
        required this.activeVotes,
        required this.parentAuthor,
        required this.parentPermlink,
        required this.url,
        required this.rootTitle,
        required this.beneficiaries,
        required this.maxAcceptedPayout,
        required this.percentBlurt,
    });

    PostFeedModel copyWith({
        int? postId,
        String? author,
        String? permlink,
        String? category,
        String? title,
        String? body,
        String? jsonMetadata,
        DateTime? created,
        DateTime? lastUpdate,
        int? depth,
        int? children,
        int? netRshares,
        DateTime? lastPayout,
        DateTime? cashoutTime,
        String? totalPayoutValue,
        String? curatorPayoutValue,
        String? pendingPayoutValue,
        String? promoted,
        List<dynamic>? replies,
        int? bodyLength,
        List<ActiveVoteModel>? activeVotes,
        String? parentAuthor,
        String? parentPermlink,
        String? url,
        String? rootTitle,
        List<BeneficiaryModel>? beneficiaries,
        String? maxAcceptedPayout,
        int? percentBlurt,
    }) => 
        PostFeedModel(
            postId: postId ?? this.postId,
            author: author ?? this.author,
            permlink: permlink ?? this.permlink,
            category: category ?? this.category,
            title: title ?? this.title,
            body: body ?? this.body,
            jsonMetadata: jsonMetadata ?? this.jsonMetadata,
            created: created ?? this.created,
            lastUpdate: lastUpdate ?? this.lastUpdate,
            depth: depth ?? this.depth,
            children: children ?? this.children,
            netRshares: netRshares ?? this.netRshares,
            lastPayout: lastPayout ?? this.lastPayout,
            cashoutTime: cashoutTime ?? this.cashoutTime,
            totalPayoutValue: totalPayoutValue ?? this.totalPayoutValue,
            curatorPayoutValue: curatorPayoutValue ?? this.curatorPayoutValue,
            pendingPayoutValue: pendingPayoutValue ?? this.pendingPayoutValue,
            promoted: promoted ?? this.promoted,
            replies: replies ?? this.replies,
            bodyLength: bodyLength ?? this.bodyLength,
            activeVotes: activeVotes ?? this.activeVotes,
            parentAuthor: parentAuthor ?? this.parentAuthor,
            parentPermlink: parentPermlink ?? this.parentPermlink,
            url: url ?? this.url,
            rootTitle: rootTitle ?? this.rootTitle,
            beneficiaries: beneficiaries ?? this.beneficiaries,
            maxAcceptedPayout: maxAcceptedPayout ?? this.maxAcceptedPayout,
            percentBlurt: percentBlurt ?? this.percentBlurt,
        );

    factory PostFeedModel.fromJson(Map<String, dynamic> json) => PostFeedModel(
        postId: json["post_id"],
        author: json["author"],
        permlink: json["permlink"],
        category: json["category"],
        title: json["title"],
        body: json["body"],
        jsonMetadata: json["json_metadata"],
        created: DateTime.parse(json["created"]),
        lastUpdate: DateTime.parse(json["last_update"]),
        depth: json["depth"],
        children: json["children"],
        netRshares: json["net_rshares"],
        lastPayout: DateTime.parse(json["last_payout"]),
        cashoutTime: DateTime.parse(json["cashout_time"]),
        totalPayoutValue: json["total_payout_value"],
        curatorPayoutValue: json["curator_payout_value"],
        pendingPayoutValue: json["pending_payout_value"],
        promoted: json["promoted"],
        replies: List<dynamic>.from(json["replies"].map((x) => x)),
        bodyLength: json["body_length"],
        activeVotes: List<ActiveVoteModel>.from(json["active_votes"].map((x) => ActiveVoteModel.fromJson(x))),
        parentAuthor: json["parent_author"],
        parentPermlink: json["parent_permlink"],
        url: json["url"],
        rootTitle: json["root_title"],
        beneficiaries: List<BeneficiaryModel>.from(json["beneficiaries"].map((x) => BeneficiaryModel.fromJson(x))),
        maxAcceptedPayout: json["max_accepted_payout"],
        percentBlurt: json["percent_blurt"],
    );

    Map<String, dynamic> toJson() => {
        "post_id": postId,
        "author": author,
        "permlink": permlink,
        "category": category,
        "title": title,
        "body": body,
        "json_metadata": jsonMetadata,
        "created": created.toIso8601String(),
        "last_update": lastUpdate.toIso8601String(),
        "depth": depth,
        "children": children,
        "net_rshares": netRshares,
        "last_payout": lastPayout.toIso8601String(),
        "cashout_time": cashoutTime.toIso8601String(),
        "total_payout_value": totalPayoutValue,
        "curator_payout_value": curatorPayoutValue,
        "pending_payout_value": pendingPayoutValue,
        "promoted": promoted,
        "replies": List<dynamic>.from(replies.map((x) => x)),
        "body_length": bodyLength,
        "active_votes": List<dynamic>.from(activeVotes.map((x) => x.toJson())),
        "parent_author": parentAuthor,
        "parent_permlink": parentPermlink,
        "url": url,
        "root_title": rootTitle,
        "beneficiaries": List<dynamic>.from(beneficiaries.map((x) => x.toJson())),
        "max_accepted_payout": maxAcceptedPayout,
        "percent_blurt": percentBlurt,
    };
}



