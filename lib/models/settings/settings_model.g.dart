// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSettingsModelCollection on Isar {
  IsarCollection<int, SettingsModel> get settingsModels => this.collection();
}

const SettingsModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'SettingsModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'themeMode',
        type: IsarType.byte,
        enumMap: {"system": 0, "light": 1, "dark": 2},
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, SettingsModel>(
    serialize: serializeSettingsModel,
    deserialize: deserializeSettingsModel,
    deserializeProperty: deserializeSettingsModelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSettingsModel(IsarWriter writer, SettingsModel object) {
  IsarCore.writeByte(writer, 1, object.themeMode.index);
  return object.id;
}

@isarProtected
SettingsModel deserializeSettingsModel(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final ThemeMode _themeMode;
  {
    if (IsarCore.readNull(reader, 1)) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode = _settingsModelThemeMode[IsarCore.readByte(reader, 1)] ??
          ThemeMode.system;
    }
  }
  final object = SettingsModel(
    id: _id,
    themeMode: _themeMode,
  );
  return object;
}

@isarProtected
dynamic deserializeSettingsModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        if (IsarCore.readNull(reader, 1)) {
          return ThemeMode.system;
        } else {
          return _settingsModelThemeMode[IsarCore.readByte(reader, 1)] ??
              ThemeMode.system;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SettingsModelUpdate {
  bool call({
    required int id,
    ThemeMode? themeMode,
  });
}

class _SettingsModelUpdateImpl implements _SettingsModelUpdate {
  const _SettingsModelUpdateImpl(this.collection);

  final IsarCollection<int, SettingsModel> collection;

  @override
  bool call({
    required int id,
    Object? themeMode = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (themeMode != ignore) 1: themeMode as ThemeMode?,
        }) >
        0;
  }
}

sealed class _SettingsModelUpdateAll {
  int call({
    required List<int> id,
    ThemeMode? themeMode,
  });
}

class _SettingsModelUpdateAllImpl implements _SettingsModelUpdateAll {
  const _SettingsModelUpdateAllImpl(this.collection);

  final IsarCollection<int, SettingsModel> collection;

  @override
  int call({
    required List<int> id,
    Object? themeMode = ignore,
  }) {
    return collection.updateProperties(id, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
    });
  }
}

extension SettingsModelUpdate on IsarCollection<int, SettingsModel> {
  _SettingsModelUpdate get update => _SettingsModelUpdateImpl(this);

  _SettingsModelUpdateAll get updateAll => _SettingsModelUpdateAllImpl(this);
}

sealed class _SettingsModelQueryUpdate {
  int call({
    ThemeMode? themeMode,
  });
}

class _SettingsModelQueryUpdateImpl implements _SettingsModelQueryUpdate {
  const _SettingsModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<SettingsModel> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
    });
  }
}

extension SettingsModelQueryUpdate on IsarQuery<SettingsModel> {
  _SettingsModelQueryUpdate get updateFirst =>
      _SettingsModelQueryUpdateImpl(this, limit: 1);

  _SettingsModelQueryUpdate get updateAll =>
      _SettingsModelQueryUpdateImpl(this);
}

class _SettingsModelQueryBuilderUpdateImpl
    implements _SettingsModelQueryUpdate {
  const _SettingsModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<SettingsModel, SettingsModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (themeMode != ignore) 1: themeMode as ThemeMode?,
      });
    } finally {
      q.close();
    }
  }
}

extension SettingsModelQueryBuilderUpdate
    on QueryBuilder<SettingsModel, SettingsModel, QOperations> {
  _SettingsModelQueryUpdate get updateFirst =>
      _SettingsModelQueryBuilderUpdateImpl(this, limit: 1);

  _SettingsModelQueryUpdate get updateAll =>
      _SettingsModelQueryBuilderUpdateImpl(this);
}

const _settingsModelThemeMode = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

extension SettingsModelQueryFilter
    on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeGreaterThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeLessThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeLessThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterFilterCondition>
      themeModeBetween(
    ThemeMode lower,
    ThemeMode upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }
}

extension SettingsModelQueryObject
    on QueryBuilder<SettingsModel, SettingsModel, QFilterCondition> {}

extension SettingsModelQuerySortBy
    on QueryBuilder<SettingsModel, SettingsModel, QSortBy> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension SettingsModelQuerySortThenBy
    on QueryBuilder<SettingsModel, SettingsModel, QSortThenBy> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<SettingsModel, SettingsModel, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension SettingsModelQueryWhereDistinct
    on QueryBuilder<SettingsModel, SettingsModel, QDistinct> {
  QueryBuilder<SettingsModel, SettingsModel, QAfterDistinct>
      distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }
}

extension SettingsModelQueryProperty1
    on QueryBuilder<SettingsModel, SettingsModel, QProperty> {
  QueryBuilder<SettingsModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SettingsModel, ThemeMode, QAfterProperty> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension SettingsModelQueryProperty2<R>
    on QueryBuilder<SettingsModel, R, QAfterProperty> {
  QueryBuilder<SettingsModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SettingsModel, (R, ThemeMode), QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension SettingsModelQueryProperty3<R1, R2>
    on QueryBuilder<SettingsModel, (R1, R2), QAfterProperty> {
  QueryBuilder<SettingsModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SettingsModel, (R1, R2, ThemeMode), QOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}
