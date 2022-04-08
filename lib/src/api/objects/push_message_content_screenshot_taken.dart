import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A screenshot of a message in the chat has been taken
@immutable
class PushMessageContentScreenshotTaken extends PushMessageContent {
  const PushMessageContentScreenshotTaken();

  static const String constructor = 'pushMessageContentScreenshotTaken';

  static PushMessageContentScreenshotTaken? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentScreenshotTaken();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
