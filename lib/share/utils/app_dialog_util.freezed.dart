// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_dialog_util.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppDialogInfo {
  Object? get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String messages, VoidCallback onPressedAction)
        confirmDialog,
    required TResult Function(String title, String messages,
            VoidCallback onRetryAction, VoidCallback onCancelAction)
        errorRetryDialog,
    required TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)
        customDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult? Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult? Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppDialogConfirmDialog value) confirmDialog,
    required TResult Function(_AppDialogErrorRetry value) errorRetryDialog,
    required TResult Function(_AppDialogCustomDialog value) customDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult? Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult? Function(_AppDialogCustomDialog value)? customDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult Function(_AppDialogCustomDialog value)? customDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDialogInfoCopyWith<$Res> {
  factory $AppDialogInfoCopyWith(
          AppDialogInfo value, $Res Function(AppDialogInfo) then) =
      _$AppDialogInfoCopyWithImpl<$Res, AppDialogInfo>;
}

/// @nodoc
class _$AppDialogInfoCopyWithImpl<$Res, $Val extends AppDialogInfo>
    implements $AppDialogInfoCopyWith<$Res> {
  _$AppDialogInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppDialogConfirmDialogImplCopyWith<$Res> {
  factory _$$AppDialogConfirmDialogImplCopyWith(
          _$AppDialogConfirmDialogImpl value,
          $Res Function(_$AppDialogConfirmDialogImpl) then) =
      __$$AppDialogConfirmDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String messages, VoidCallback onPressedAction});
}

/// @nodoc
class __$$AppDialogConfirmDialogImplCopyWithImpl<$Res>
    extends _$AppDialogInfoCopyWithImpl<$Res, _$AppDialogConfirmDialogImpl>
    implements _$$AppDialogConfirmDialogImplCopyWith<$Res> {
  __$$AppDialogConfirmDialogImplCopyWithImpl(
      _$AppDialogConfirmDialogImpl _value,
      $Res Function(_$AppDialogConfirmDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? messages = null,
    Object? onPressedAction = null,
  }) {
    return _then(_$AppDialogConfirmDialogImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String,
      onPressedAction: null == onPressedAction
          ? _value.onPressedAction
          : onPressedAction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AppDialogConfirmDialogImpl implements _AppDialogConfirmDialog {
  const _$AppDialogConfirmDialogImpl(
      {required this.title,
      required this.messages,
      required this.onPressedAction});

  @override
  final String title;
  @override
  final String messages;
  @override
  final VoidCallback onPressedAction;

  @override
  String toString() {
    return 'AppDialogInfo.confirmDialog(title: $title, messages: $messages, onPressedAction: $onPressedAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDialogConfirmDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.onPressedAction, onPressedAction) ||
                other.onPressedAction == onPressedAction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, messages, onPressedAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDialogConfirmDialogImplCopyWith<_$AppDialogConfirmDialogImpl>
      get copyWith => __$$AppDialogConfirmDialogImplCopyWithImpl<
          _$AppDialogConfirmDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String messages, VoidCallback onPressedAction)
        confirmDialog,
    required TResult Function(String title, String messages,
            VoidCallback onRetryAction, VoidCallback onCancelAction)
        errorRetryDialog,
    required TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)
        customDialog,
  }) {
    return confirmDialog(title, messages, onPressedAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult? Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult? Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
  }) {
    return confirmDialog?.call(title, messages, onPressedAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
    required TResult orElse(),
  }) {
    if (confirmDialog != null) {
      return confirmDialog(title, messages, onPressedAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppDialogConfirmDialog value) confirmDialog,
    required TResult Function(_AppDialogErrorRetry value) errorRetryDialog,
    required TResult Function(_AppDialogCustomDialog value) customDialog,
  }) {
    return confirmDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult? Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult? Function(_AppDialogCustomDialog value)? customDialog,
  }) {
    return confirmDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult Function(_AppDialogCustomDialog value)? customDialog,
    required TResult orElse(),
  }) {
    if (confirmDialog != null) {
      return confirmDialog(this);
    }
    return orElse();
  }
}

abstract class _AppDialogConfirmDialog implements AppDialogInfo {
  const factory _AppDialogConfirmDialog(
          {required final String title,
          required final String messages,
          required final VoidCallback onPressedAction}) =
      _$AppDialogConfirmDialogImpl;

  @override
  String get title;
  String get messages;
  VoidCallback get onPressedAction;
  @JsonKey(ignore: true)
  _$$AppDialogConfirmDialogImplCopyWith<_$AppDialogConfirmDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppDialogErrorRetryImplCopyWith<$Res> {
  factory _$$AppDialogErrorRetryImplCopyWith(_$AppDialogErrorRetryImpl value,
          $Res Function(_$AppDialogErrorRetryImpl) then) =
      __$$AppDialogErrorRetryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String messages,
      VoidCallback onRetryAction,
      VoidCallback onCancelAction});
}

/// @nodoc
class __$$AppDialogErrorRetryImplCopyWithImpl<$Res>
    extends _$AppDialogInfoCopyWithImpl<$Res, _$AppDialogErrorRetryImpl>
    implements _$$AppDialogErrorRetryImplCopyWith<$Res> {
  __$$AppDialogErrorRetryImplCopyWithImpl(_$AppDialogErrorRetryImpl _value,
      $Res Function(_$AppDialogErrorRetryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? messages = null,
    Object? onRetryAction = null,
    Object? onCancelAction = null,
  }) {
    return _then(_$AppDialogErrorRetryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String,
      onRetryAction: null == onRetryAction
          ? _value.onRetryAction
          : onRetryAction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onCancelAction: null == onCancelAction
          ? _value.onCancelAction
          : onCancelAction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AppDialogErrorRetryImpl implements _AppDialogErrorRetry {
  const _$AppDialogErrorRetryImpl(
      {required this.title,
      required this.messages,
      required this.onRetryAction,
      required this.onCancelAction});

  @override
  final String title;
  @override
  final String messages;
  @override
  final VoidCallback onRetryAction;
  @override
  final VoidCallback onCancelAction;

  @override
  String toString() {
    return 'AppDialogInfo.errorRetryDialog(title: $title, messages: $messages, onRetryAction: $onRetryAction, onCancelAction: $onCancelAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDialogErrorRetryImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.onRetryAction, onRetryAction) ||
                other.onRetryAction == onRetryAction) &&
            (identical(other.onCancelAction, onCancelAction) ||
                other.onCancelAction == onCancelAction));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, messages, onRetryAction, onCancelAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDialogErrorRetryImplCopyWith<_$AppDialogErrorRetryImpl> get copyWith =>
      __$$AppDialogErrorRetryImplCopyWithImpl<_$AppDialogErrorRetryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String messages, VoidCallback onPressedAction)
        confirmDialog,
    required TResult Function(String title, String messages,
            VoidCallback onRetryAction, VoidCallback onCancelAction)
        errorRetryDialog,
    required TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)
        customDialog,
  }) {
    return errorRetryDialog(title, messages, onRetryAction, onCancelAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult? Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult? Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
  }) {
    return errorRetryDialog?.call(
        title, messages, onRetryAction, onCancelAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
    required TResult orElse(),
  }) {
    if (errorRetryDialog != null) {
      return errorRetryDialog(title, messages, onRetryAction, onCancelAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppDialogConfirmDialog value) confirmDialog,
    required TResult Function(_AppDialogErrorRetry value) errorRetryDialog,
    required TResult Function(_AppDialogCustomDialog value) customDialog,
  }) {
    return errorRetryDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult? Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult? Function(_AppDialogCustomDialog value)? customDialog,
  }) {
    return errorRetryDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult Function(_AppDialogCustomDialog value)? customDialog,
    required TResult orElse(),
  }) {
    if (errorRetryDialog != null) {
      return errorRetryDialog(this);
    }
    return orElse();
  }
}

abstract class _AppDialogErrorRetry implements AppDialogInfo {
  const factory _AppDialogErrorRetry(
      {required final String title,
      required final String messages,
      required final VoidCallback onRetryAction,
      required final VoidCallback onCancelAction}) = _$AppDialogErrorRetryImpl;

  @override
  String get title;
  String get messages;
  VoidCallback get onRetryAction;
  VoidCallback get onCancelAction;
  @JsonKey(ignore: true)
  _$$AppDialogErrorRetryImplCopyWith<_$AppDialogErrorRetryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppDialogCustomDialogImplCopyWith<$Res> {
  factory _$$AppDialogCustomDialogImplCopyWith(
          _$AppDialogCustomDialogImpl value,
          $Res Function(_$AppDialogCustomDialogImpl) then) =
      __$$AppDialogCustomDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Widget? icon,
      EdgeInsetsGeometry? iconPadding,
      Widget? title,
      EdgeInsetsGeometry? titlePadding,
      TextStyle? titleTextStyle,
      Widget? content,
      EdgeInsetsGeometry? contentPadding,
      TextStyle? contentTextStyle,
      List<Widget>? actions,
      bool scrollable});
}

/// @nodoc
class __$$AppDialogCustomDialogImplCopyWithImpl<$Res>
    extends _$AppDialogInfoCopyWithImpl<$Res, _$AppDialogCustomDialogImpl>
    implements _$$AppDialogCustomDialogImplCopyWith<$Res> {
  __$$AppDialogCustomDialogImplCopyWithImpl(_$AppDialogCustomDialogImpl _value,
      $Res Function(_$AppDialogCustomDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? iconPadding = freezed,
    Object? title = freezed,
    Object? titlePadding = freezed,
    Object? titleTextStyle = freezed,
    Object? content = freezed,
    Object? contentPadding = freezed,
    Object? contentTextStyle = freezed,
    Object? actions = freezed,
    Object? scrollable = null,
  }) {
    return _then(_$AppDialogCustomDialogImpl(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      iconPadding: freezed == iconPadding
          ? _value.iconPadding
          : iconPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsGeometry?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Widget?,
      titlePadding: freezed == titlePadding
          ? _value.titlePadding
          : titlePadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsGeometry?,
      titleTextStyle: freezed == titleTextStyle
          ? _value.titleTextStyle
          : titleTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
      contentPadding: freezed == contentPadding
          ? _value.contentPadding
          : contentPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsetsGeometry?,
      contentTextStyle: freezed == contentTextStyle
          ? _value.contentTextStyle
          : contentTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
      scrollable: null == scrollable
          ? _value.scrollable
          : scrollable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppDialogCustomDialogImpl implements _AppDialogCustomDialog {
  const _$AppDialogCustomDialogImpl(
      {this.icon,
      this.iconPadding,
      this.title,
      this.titlePadding,
      this.titleTextStyle,
      this.content,
      this.contentPadding,
      this.contentTextStyle,
      final List<Widget>? actions,
      this.scrollable = false})
      : _actions = actions;

  @override
  final Widget? icon;
  @override
  final EdgeInsetsGeometry? iconPadding;
  @override
  final Widget? title;
  @override
  final EdgeInsetsGeometry? titlePadding;
  @override
  final TextStyle? titleTextStyle;
  @override
  final Widget? content;
  @override
  final EdgeInsetsGeometry? contentPadding;
  @override
  final TextStyle? contentTextStyle;
  final List<Widget>? _actions;
  @override
  List<Widget>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool scrollable;

  @override
  String toString() {
    return 'AppDialogInfo.customDialog(icon: $icon, iconPadding: $iconPadding, title: $title, titlePadding: $titlePadding, titleTextStyle: $titleTextStyle, content: $content, contentPadding: $contentPadding, contentTextStyle: $contentTextStyle, actions: $actions, scrollable: $scrollable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDialogCustomDialogImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconPadding, iconPadding) ||
                other.iconPadding == iconPadding) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titlePadding, titlePadding) ||
                other.titlePadding == titlePadding) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.scrollable, scrollable) ||
                other.scrollable == scrollable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      icon,
      iconPadding,
      title,
      titlePadding,
      titleTextStyle,
      content,
      contentPadding,
      contentTextStyle,
      const DeepCollectionEquality().hash(_actions),
      scrollable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDialogCustomDialogImplCopyWith<_$AppDialogCustomDialogImpl>
      get copyWith => __$$AppDialogCustomDialogImplCopyWithImpl<
          _$AppDialogCustomDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String messages, VoidCallback onPressedAction)
        confirmDialog,
    required TResult Function(String title, String messages,
            VoidCallback onRetryAction, VoidCallback onCancelAction)
        errorRetryDialog,
    required TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)
        customDialog,
  }) {
    return customDialog(icon, iconPadding, title, titlePadding, titleTextStyle,
        content, contentPadding, contentTextStyle, actions, scrollable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult? Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult? Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
  }) {
    return customDialog?.call(
        icon,
        iconPadding,
        title,
        titlePadding,
        titleTextStyle,
        content,
        contentPadding,
        contentTextStyle,
        actions,
        scrollable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String messages, VoidCallback onPressedAction)?
        confirmDialog,
    TResult Function(String title, String messages, VoidCallback onRetryAction,
            VoidCallback onCancelAction)?
        errorRetryDialog,
    TResult Function(
            Widget? icon,
            EdgeInsetsGeometry? iconPadding,
            Widget? title,
            EdgeInsetsGeometry? titlePadding,
            TextStyle? titleTextStyle,
            Widget? content,
            EdgeInsetsGeometry? contentPadding,
            TextStyle? contentTextStyle,
            List<Widget>? actions,
            bool scrollable)?
        customDialog,
    required TResult orElse(),
  }) {
    if (customDialog != null) {
      return customDialog(
          icon,
          iconPadding,
          title,
          titlePadding,
          titleTextStyle,
          content,
          contentPadding,
          contentTextStyle,
          actions,
          scrollable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppDialogConfirmDialog value) confirmDialog,
    required TResult Function(_AppDialogErrorRetry value) errorRetryDialog,
    required TResult Function(_AppDialogCustomDialog value) customDialog,
  }) {
    return customDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult? Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult? Function(_AppDialogCustomDialog value)? customDialog,
  }) {
    return customDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppDialogConfirmDialog value)? confirmDialog,
    TResult Function(_AppDialogErrorRetry value)? errorRetryDialog,
    TResult Function(_AppDialogCustomDialog value)? customDialog,
    required TResult orElse(),
  }) {
    if (customDialog != null) {
      return customDialog(this);
    }
    return orElse();
  }
}

abstract class _AppDialogCustomDialog implements AppDialogInfo {
  const factory _AppDialogCustomDialog(
      {final Widget? icon,
      final EdgeInsetsGeometry? iconPadding,
      final Widget? title,
      final EdgeInsetsGeometry? titlePadding,
      final TextStyle? titleTextStyle,
      final Widget? content,
      final EdgeInsetsGeometry? contentPadding,
      final TextStyle? contentTextStyle,
      final List<Widget>? actions,
      final bool scrollable}) = _$AppDialogCustomDialogImpl;

  Widget? get icon;
  EdgeInsetsGeometry? get iconPadding;
  @override
  Widget? get title;
  EdgeInsetsGeometry? get titlePadding;
  TextStyle? get titleTextStyle;
  Widget? get content;
  EdgeInsetsGeometry? get contentPadding;
  TextStyle? get contentTextStyle;
  List<Widget>? get actions;
  bool get scrollable;
  @JsonKey(ignore: true)
  _$$AppDialogCustomDialogImplCopyWith<_$AppDialogCustomDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}
