import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Asynchronously uploads a file to the cloud without sending it in a
/// message. updateFile will be used to notify about upload progress and
/// successful completion of the upload. The file will not have a persistent
/// remote identifier until it will be sent in a message
/// Returns [File]
@immutable
class UploadFile extends TdFunction {
  const UploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });

  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the
  /// earlier the file will be uploaded. If the priorities of two files are
  /// equal, then the first one for which uploadFile was called will be uploaded
  /// first
  final int priority;

  static const String constructor = 'uploadFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file': file.toJson(),
        'file_type': fileType?.toJson(),
        'priority': priority,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
