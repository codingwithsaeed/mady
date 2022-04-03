import 'package:equatable/equatable.dart';

const noInternt = 'دستگاه به اینترنت متصل نیست';

abstract class Failure extends Equatable {}

class GeneralFailure extends Failure {
  final String message;

  GeneralFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
