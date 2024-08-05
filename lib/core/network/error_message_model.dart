import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final int? statusCode;
  final String detail;
  final bool? success;

  const ErrorMessageModel({
     this.statusCode,
     required this.detail,
     this.success,
  });

  factory ErrorMessageModel.fromJson(Map<String,dynamic> json){
    return ErrorMessageModel
      (
      statusCode: json["status_code"],
      detail: json["detail"],
      success: json["success"],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>[
    statusCode,
    detail,
    success,
  ];
}