import 'package:json_annotation/json_annotation.dart';

part 'result_response.g.dart';

@JsonSerializable()
class ResultResponse {
  int count;
  String next;
  // String previous;
  List<Map<String, dynamic>> results;

  // ResultResponse(this.count, this.next, this.previous, this.result);
  ResultResponse(this.count, this.next, this.results);

  static Map<String, dynamic> toJson(ResultResponse instance) {
    return _$ResultResponseToJson(instance);
  }

  static ResultResponse fromJson(Map<String, dynamic> json) {
    return _$ResultResponseFromJson(json);
  }
}
