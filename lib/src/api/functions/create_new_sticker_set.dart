import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a new sticker set. Returns the newly created sticker set
/// Returns [StickerSet]
@immutable
class CreateNewStickerSet extends TdFunction {
  const CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.isMasks,
    required this.stickers,
    required this.source,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [title] Sticker set title; 1-64 characters
  final String title;

  /// [name] Sticker set name. Can contain only English letters, digits and
  /// underscores. Must end with *"_by_
  final String name;

  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks
  final bool isMasks;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All
  /// stickers must be of the same type. For animated stickers,
  /// uploadStickerFile must be used before the sticker is shown
  final List<InputSticker> stickers;

  /// [source] Source of the sticker set; may be empty if unknown
  final String source;

  static const String constructor = 'createNewStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'title': title,
        'name': name,
        'is_masks': isMasks,
        'stickers': stickers.map((item) => item.toJson()).toList(),
        'source': source,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
