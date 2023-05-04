// import 'package:json_annotation/json_annotation.dart';
//
// part 'proposal_tool_detail.g.dart';
//
// @JsonSerializable()
// class ProposalToolDetail {
//
//   int? totalProjectCostProposal;
//
//   int? totalSystemCost;
//
//   String? totalSystemCostSubtitle;
//
//   int? batterySystempercent;
//
//   int? roofingpercent;
//
//   int? electricalpercent;
//
//   double? addittionalProjectspercent;
//
//   TotalCappedCommission? totalCappedCommission;
//
//   List<double>? totalCumulativeSavings;
//
//   double? estSavingsPercentOver30Years;
//
//   double? estSavingsOver30Years;
//
//   int? principalAmount;
//
//   double? paymentsForTheFirst1618Months;
//
//   double? IRR;
//
//   double? monthlyPayment;
//
//   double? penaltyPayment;
//
//   int? sales_rep_profit_margin;
//
//   int? system_size;
//
//   double? total_to_partner;
//
//   double? kw;
//
//   double? w;
//
//   String? NYSERDARebate;
//
//   int? NYSERDA;
//
//   int? federalTaxCredit;
//
//   int? NYTaxCredit;
//
//   String? production;
//
//   int? consumption;
//
//   FinanceOption? financeOption;
//
//   @JsonKey(name: "USAStates")
//   List<USAStates>? usaStates;
//
//   ProposalToolDetail({  });
//
//   factory ProposalToolDetail.fromJson(Map<String, dynamic> json) => _$ProposalToolDetailFromJson(json);
//   Map<String, dynamic> toJson() => _$ProposalToolDetailToJson(this);
//
// }
//
// @JsonSerializable()
// class TotalCappedCommission {
//
//   double? result;
//
//   int? batterySystempercent;
//
//   int? roofingpercent;
//
//   int? electricalpercent;
//
//   double? addittionalProjectspercent;
//
//   TotalCappedCommission({ this.result, this.batterySystempercent, this.roofingpercent, this.electricalpercent, this.addittionalProjectspercent });
//
// factory TotalCappedCommission.fromJson(Map<String, dynamic> json) => _$TotalCappedCommissionFromJson(json);
// Map<String, dynamic> toJson() => _$TotalCappedCommissionToJson(this);
//
// }
//
// @JsonSerializable()
// class FinanceOption {
//
//   @JsonKey(name: "rec_id")
//   int? recId;
//
//   @JsonKey(name: "finance_option")
//   String? financeOption;
//
//   String? broker;
//
//   @JsonKey(name: "finance_option_type")
//   String? financeOptionType;
//
//   @JsonKey(name: "dealer_fee")
//   String? dealerFee;
//
//   @JsonKey(name: "df_after_bridge_loan")
//   String? dfAfterBridgeLoan;
//
//   @JsonKey(name: "first_16_18_months_payments")
//   String? first1618MonthsPayments;
//
//   @JsonKey(name: "monthly_payment")
//   String? monthlyPayment;
//
//   @JsonKey(name: "penalty_payment")
//   String? penaltyPayment;
//
//   @JsonKey(name: "df_after_bridge_loan_total")
//   String? dfAfterBridgeLoanTotal;
//
//   @JsonKey(name: "interest_rate")
//   String? interestRate;
//
//   @JsonKey(name: "term_years")
//   String? termYears;
//
//   @JsonKey(name: "term_months")
//   String? termMonths;
//
//   @JsonKey(name: "tax_term")
//   String? taxTerm;
//
//   @JsonKey(name: "down_payment")
//   String? downPayment;
//
//   @JsonKey(name: "second_milestone")
//   String? secondMilestone;
//
//   @JsonKey(name: "final_payment")
//   String? finalPayment;
//
//   String? title;
//
//   @JsonKey(name: "without_bridge_loan")
//   String? withoutBridgeLoan;
//
//   @JsonKey(name: "without_bridge_loan_1")
//   String? withoutBridgeLoan1;
//
//   String? disclamer;
//
//   @JsonKey(name: "with_bridge_loan")
//   String? withBridgeLoan;
//
//   @JsonKey(name: "with_bridge_loan_disclaimer")
//   String? withBridgeLoanDisclaimer;
//
//   @JsonKey(name: "battery_pmt_adder")
//   String? batteryPmtAdder;
//
//   @JsonKey(name: "battery_pmt_adder_1")
//   String? batteryPmtAdder1;
//
//   @JsonKey(name: "default_value")
//   String? defaultValue;
//
//   String? status;
//
//   @JsonKey(name: "created_at")
//   String? createdAt;
//
//   @JsonKey(name: "updated_at")
//   String? updatedAt;
//
//   FinanceOption({  });
//
//   factory FinanceOption.fromJson(Map<String, dynamic> json) => _$FinanceOptionFromJson(json);
//   Map<String, dynamic> toJson() => _$FinanceOptionToJson(this);
//
// }
//
// class Example extends StatefulWidget {
//   const Example({Key? key}) : super(key: key);
//
//   @override
//   State<Example> createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


