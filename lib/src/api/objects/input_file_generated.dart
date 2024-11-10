import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A file generated by the application. The application must handle updates
/// updateFileGenerationStart and updateFileGenerationStop to generate the
/// file when asked by TDLib
@immutable
class InputFileGenerated extends InputFile {
  const InputFileGenerated({
    required this.originalPath,
    required this.conversion,
    required this.expectedSize,
  });

  /// [originalPath] Local path to a file from which the file is generated. The
  /// path doesn't have to be a valid path and is used by TDLib only to detect
  /// name and MIME type of the generated file
  final String originalPath;

  /// [conversion] String specifying the conversion applied to the original
  /// file; must be persistent across application restarts. Conversions
  /// beginning with '#' are reserved for internal TDLib usage
  final String conversion;

  /// [expectedSize] Expected size of the generated file, in bytes; pass 0 if
  /// unknown
  final int expectedSize;

  static const String constructor = 'inputFileGenerated';

  static InputFileGenerated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileGenerated(
      originalPath: json['original_path'] as String,
      conversion: json['conversion'] as String,
      expectedSize: json['expected_size'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'original_path': originalPath,
        'conversion': conversion,
        'expected_size': expectedSize,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
