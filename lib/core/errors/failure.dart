abstract class Failure {}

class GeneralFailure extends Failure {
  final String message;

  GeneralFailure({required this.message});
}
