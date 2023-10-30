import 'dart:convert';

class ChainPropResponseModel {
  final String id;
  final String type;
  final ChainPropModel data;
  final bool valid;
  final String errorMessage;

  ChainPropResponseModel(
      {required this.id,
      required this.type,
      required this.data,
      required this.valid,
      required this.errorMessage});

  factory ChainPropResponseModel.fromJson(Map<String, dynamic> json) =>
      ChainPropResponseModel(
          id: json['id'],
          type: json['type'],
          data: ChainPropModel.fromRawJson(json['data']),
          valid: json['valid'],
          errorMessage: json['error']);
}

class ChainPropModel {
  final String accountCreationFee;
  final int maximumBlockSize;
  final int accountSubsidyBudget;
  final int accountSubsidyDecay;
  final String operationFlatFee;
  final String bandwidthKbytesFee;
  final String proposalFee;

  ChainPropModel({
    required this.accountCreationFee,
    required this.maximumBlockSize,
    required this.accountSubsidyBudget,
    required this.accountSubsidyDecay,
    required this.operationFlatFee,
    required this.bandwidthKbytesFee,
    required this.proposalFee,
  });

  ChainPropModel copyWith({
    String? accountCreationFee,
    int? maximumBlockSize,
    int? accountSubsidyBudget,
    int? accountSubsidyDecay,
    String? operationFlatFee,
    String? bandwidthKbytesFee,
    String? proposalFee,
  }) =>
      ChainPropModel(
        accountCreationFee: accountCreationFee ?? this.accountCreationFee,
        maximumBlockSize: maximumBlockSize ?? this.maximumBlockSize,
        accountSubsidyBudget: accountSubsidyBudget ?? this.accountSubsidyBudget,
        accountSubsidyDecay: accountSubsidyDecay ?? this.accountSubsidyDecay,
        operationFlatFee: operationFlatFee ?? this.operationFlatFee,
        bandwidthKbytesFee: bandwidthKbytesFee ?? this.bandwidthKbytesFee,
        proposalFee: proposalFee ?? this.proposalFee,
      );

  factory ChainPropModel.fromRawJson(String str) =>
      ChainPropModel.fromJson((json.decode(str)));

  factory ChainPropModel.fromJson(Map<String, dynamic> json) => ChainPropModel(
        accountCreationFee: json["account_creation_fee"],
        maximumBlockSize: json["maximum_block_size"],
        accountSubsidyBudget: json["account_subsidy_budget"],
        accountSubsidyDecay: json["account_subsidy_decay"],
        operationFlatFee: json["operation_flat_fee"],
        bandwidthKbytesFee: json["bandwidth_kbytes_fee"],
        proposalFee: json["proposal_fee"],
      );
}
