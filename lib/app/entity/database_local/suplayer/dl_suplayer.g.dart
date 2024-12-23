// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dl_suplayer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDlSuplayerCollection on Isar {
  IsarCollection<DlSuplayer> get dlSuplayers => this.collection();
}

const DlSuplayerSchema = CollectionSchema(
  name: r'DlSuplayer',
  id: -3932526444960373313,
  properties: {
    r'addess': PropertySchema(
      id: 0,
      name: r'addess',
      type: IsarType.string,
    ),
    r'idServer': PropertySchema(
      id: 1,
      name: r'idServer',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 3,
      name: r'phone',
      type: IsarType.string,
    )
  },
  estimateSize: _dlSuplayerEstimateSize,
  serialize: _dlSuplayerSerialize,
  deserialize: _dlSuplayerDeserialize,
  deserializeProp: _dlSuplayerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dlSuplayerGetId,
  getLinks: _dlSuplayerGetLinks,
  attach: _dlSuplayerAttach,
  version: '3.1.0+1',
);

int _dlSuplayerEstimateSize(
  DlSuplayer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.addess;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idServer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dlSuplayerSerialize(
  DlSuplayer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addess);
  writer.writeString(offsets[1], object.idServer);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.phone);
}

DlSuplayer _dlSuplayerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DlSuplayer(
    addess: reader.readStringOrNull(offsets[0]),
    id: id,
    idServer: reader.readStringOrNull(offsets[1]),
    name: reader.readString(offsets[2]),
    phone: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _dlSuplayerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dlSuplayerGetId(DlSuplayer object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dlSuplayerGetLinks(DlSuplayer object) {
  return [];
}

void _dlSuplayerAttach(IsarCollection<dynamic> col, Id id, DlSuplayer object) {
  object.id = id;
}

extension DlSuplayerQueryWhereSort
    on QueryBuilder<DlSuplayer, DlSuplayer, QWhere> {
  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DlSuplayerQueryWhere
    on QueryBuilder<DlSuplayer, DlSuplayer, QWhereClause> {
  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DlSuplayerQueryFilter
    on QueryBuilder<DlSuplayer, DlSuplayer, QFilterCondition> {
  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'addess',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      addessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'addess',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addess',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addess',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addess',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> addessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addess',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      addessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addess',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idServer',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      idServerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idServer',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      idServerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idServer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      idServerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> idServerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idServer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      idServerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      idServerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }
}

extension DlSuplayerQueryObject
    on QueryBuilder<DlSuplayer, DlSuplayer, QFilterCondition> {}

extension DlSuplayerQueryLinks
    on QueryBuilder<DlSuplayer, DlSuplayer, QFilterCondition> {}

extension DlSuplayerQuerySortBy
    on QueryBuilder<DlSuplayer, DlSuplayer, QSortBy> {
  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByAddess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByAddessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByIdServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByIdServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension DlSuplayerQuerySortThenBy
    on QueryBuilder<DlSuplayer, DlSuplayer, QSortThenBy> {
  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByAddess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByAddessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByIdServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByIdServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension DlSuplayerQueryWhereDistinct
    on QueryBuilder<DlSuplayer, DlSuplayer, QDistinct> {
  QueryBuilder<DlSuplayer, DlSuplayer, QDistinct> distinctByAddess(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addess', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QDistinct> distinctByIdServer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idServer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlSuplayer, DlSuplayer, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }
}

extension DlSuplayerQueryProperty
    on QueryBuilder<DlSuplayer, DlSuplayer, QQueryProperty> {
  QueryBuilder<DlSuplayer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DlSuplayer, String?, QQueryOperations> addessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addess');
    });
  }

  QueryBuilder<DlSuplayer, String?, QQueryOperations> idServerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idServer');
    });
  }

  QueryBuilder<DlSuplayer, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DlSuplayer, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }
}
