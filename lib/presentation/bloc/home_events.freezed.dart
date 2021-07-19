// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  InitEvent init() {
    return const InitEvent();
  }

  ScrollExtentReachedEvent scrollExtentReached() {
    return const ScrollExtentReachedEvent();
  }

  SearchEnteredEvent searchEntered(String searchTerm) {
    return SearchEnteredEvent(
      searchTerm,
    );
  }

  TimerElapsedEvent timerElapsed(String searchTerm) {
    return TimerElapsedEvent(
      searchTerm,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() scrollExtentReached,
    required TResult Function(String searchTerm) searchEntered,
    required TResult Function(String searchTerm) timerElapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? scrollExtentReached,
    TResult Function(String searchTerm)? searchEntered,
    TResult Function(String searchTerm)? timerElapsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
    required TResult Function(SearchEnteredEvent value) searchEntered,
    required TResult Function(TimerElapsedEvent value) timerElapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    TResult Function(SearchEnteredEvent value)? searchEntered,
    TResult Function(TimerElapsedEvent value)? timerElapsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $InitEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) then) =
      _$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(InitEvent _value, $Res Function(InitEvent) _then)
      : super(_value, (v) => _then(v as InitEvent));

  @override
  InitEvent get _value => super._value as InitEvent;
}

/// @nodoc

class _$InitEvent implements InitEvent {
  const _$InitEvent();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() scrollExtentReached,
    required TResult Function(String searchTerm) searchEntered,
    required TResult Function(String searchTerm) timerElapsed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? scrollExtentReached,
    TResult Function(String searchTerm)? searchEntered,
    TResult Function(String searchTerm)? timerElapsed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
    required TResult Function(SearchEnteredEvent value) searchEntered,
    required TResult Function(TimerElapsedEvent value) timerElapsed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    TResult Function(SearchEnteredEvent value)? searchEntered,
    TResult Function(TimerElapsedEvent value)? timerElapsed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements HomeEvent {
  const factory InitEvent() = _$InitEvent;
}

/// @nodoc
abstract class $ScrollExtentReachedEventCopyWith<$Res> {
  factory $ScrollExtentReachedEventCopyWith(ScrollExtentReachedEvent value,
          $Res Function(ScrollExtentReachedEvent) then) =
      _$ScrollExtentReachedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScrollExtentReachedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $ScrollExtentReachedEventCopyWith<$Res> {
  _$ScrollExtentReachedEventCopyWithImpl(ScrollExtentReachedEvent _value,
      $Res Function(ScrollExtentReachedEvent) _then)
      : super(_value, (v) => _then(v as ScrollExtentReachedEvent));

  @override
  ScrollExtentReachedEvent get _value =>
      super._value as ScrollExtentReachedEvent;
}

/// @nodoc

class _$ScrollExtentReachedEvent implements ScrollExtentReachedEvent {
  const _$ScrollExtentReachedEvent();

  @override
  String toString() {
    return 'HomeEvent.scrollExtentReached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScrollExtentReachedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() scrollExtentReached,
    required TResult Function(String searchTerm) searchEntered,
    required TResult Function(String searchTerm) timerElapsed,
  }) {
    return scrollExtentReached();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? scrollExtentReached,
    TResult Function(String searchTerm)? searchEntered,
    TResult Function(String searchTerm)? timerElapsed,
    required TResult orElse(),
  }) {
    if (scrollExtentReached != null) {
      return scrollExtentReached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
    required TResult Function(SearchEnteredEvent value) searchEntered,
    required TResult Function(TimerElapsedEvent value) timerElapsed,
  }) {
    return scrollExtentReached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    TResult Function(SearchEnteredEvent value)? searchEntered,
    TResult Function(TimerElapsedEvent value)? timerElapsed,
    required TResult orElse(),
  }) {
    if (scrollExtentReached != null) {
      return scrollExtentReached(this);
    }
    return orElse();
  }
}

abstract class ScrollExtentReachedEvent implements HomeEvent {
  const factory ScrollExtentReachedEvent() = _$ScrollExtentReachedEvent;
}

/// @nodoc
abstract class $SearchEnteredEventCopyWith<$Res> {
  factory $SearchEnteredEventCopyWith(
          SearchEnteredEvent value, $Res Function(SearchEnteredEvent) then) =
      _$SearchEnteredEventCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class _$SearchEnteredEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $SearchEnteredEventCopyWith<$Res> {
  _$SearchEnteredEventCopyWithImpl(
      SearchEnteredEvent _value, $Res Function(SearchEnteredEvent) _then)
      : super(_value, (v) => _then(v as SearchEnteredEvent));

  @override
  SearchEnteredEvent get _value => super._value as SearchEnteredEvent;

  @override
  $Res call({
    Object? searchTerm = freezed,
  }) {
    return _then(SearchEnteredEvent(
      searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEnteredEvent implements SearchEnteredEvent {
  const _$SearchEnteredEvent(this.searchTerm);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'HomeEvent.searchEntered(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchEnteredEvent &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @JsonKey(ignore: true)
  @override
  $SearchEnteredEventCopyWith<SearchEnteredEvent> get copyWith =>
      _$SearchEnteredEventCopyWithImpl<SearchEnteredEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() scrollExtentReached,
    required TResult Function(String searchTerm) searchEntered,
    required TResult Function(String searchTerm) timerElapsed,
  }) {
    return searchEntered(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? scrollExtentReached,
    TResult Function(String searchTerm)? searchEntered,
    TResult Function(String searchTerm)? timerElapsed,
    required TResult orElse(),
  }) {
    if (searchEntered != null) {
      return searchEntered(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
    required TResult Function(SearchEnteredEvent value) searchEntered,
    required TResult Function(TimerElapsedEvent value) timerElapsed,
  }) {
    return searchEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    TResult Function(SearchEnteredEvent value)? searchEntered,
    TResult Function(TimerElapsedEvent value)? timerElapsed,
    required TResult orElse(),
  }) {
    if (searchEntered != null) {
      return searchEntered(this);
    }
    return orElse();
  }
}

abstract class SearchEnteredEvent implements HomeEvent {
  const factory SearchEnteredEvent(String searchTerm) = _$SearchEnteredEvent;

  String get searchTerm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchEnteredEventCopyWith<SearchEnteredEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerElapsedEventCopyWith<$Res> {
  factory $TimerElapsedEventCopyWith(
          TimerElapsedEvent value, $Res Function(TimerElapsedEvent) then) =
      _$TimerElapsedEventCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class _$TimerElapsedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $TimerElapsedEventCopyWith<$Res> {
  _$TimerElapsedEventCopyWithImpl(
      TimerElapsedEvent _value, $Res Function(TimerElapsedEvent) _then)
      : super(_value, (v) => _then(v as TimerElapsedEvent));

  @override
  TimerElapsedEvent get _value => super._value as TimerElapsedEvent;

  @override
  $Res call({
    Object? searchTerm = freezed,
  }) {
    return _then(TimerElapsedEvent(
      searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimerElapsedEvent implements TimerElapsedEvent {
  const _$TimerElapsedEvent(this.searchTerm);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'HomeEvent.timerElapsed(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerElapsedEvent &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @JsonKey(ignore: true)
  @override
  $TimerElapsedEventCopyWith<TimerElapsedEvent> get copyWith =>
      _$TimerElapsedEventCopyWithImpl<TimerElapsedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() scrollExtentReached,
    required TResult Function(String searchTerm) searchEntered,
    required TResult Function(String searchTerm) timerElapsed,
  }) {
    return timerElapsed(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? scrollExtentReached,
    TResult Function(String searchTerm)? searchEntered,
    TResult Function(String searchTerm)? timerElapsed,
    required TResult orElse(),
  }) {
    if (timerElapsed != null) {
      return timerElapsed(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
    required TResult Function(SearchEnteredEvent value) searchEntered,
    required TResult Function(TimerElapsedEvent value) timerElapsed,
  }) {
    return timerElapsed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    TResult Function(SearchEnteredEvent value)? searchEntered,
    TResult Function(TimerElapsedEvent value)? timerElapsed,
    required TResult orElse(),
  }) {
    if (timerElapsed != null) {
      return timerElapsed(this);
    }
    return orElse();
  }
}

abstract class TimerElapsedEvent implements HomeEvent {
  const factory TimerElapsedEvent(String searchTerm) = _$TimerElapsedEvent;

  String get searchTerm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimerElapsedEventCopyWith<TimerElapsedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
