import '../tdapi.dart';

/// Checks phone number confirmation code
/// Returns [Ok]
class CheckPhoneNumberConfirmationCode extends TdFunction {
  CheckPhoneNumberConfirmationCode({required this.code});

  /// [code] Confirmation code to check
  final String code;

  static const String CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};
}
