// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dl_income.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDlIncomeCollection on Isar {
  IsarCollection<DlIncome> get dlIncomes => this.collection();
}

const DlIncomeSchema = CollectionSchema(
  name: r'DlIncome',
  id: 2110081624121510946,
  properties: {
    r'dateCreated': PropertySchema(
      id: 0,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'idDay': PropertySchema(
      id: 1,
      name: r'idDay',
      type: IsarType.string,
    ),
    r'totalIncome': PropertySchema(
      id: 2,
      name: r'totalIncome',
      type: IsarType.double,
    ),
    r'totalOutcome': PropertySchema(
      id: 3,
      name: r'totalOutcome',
      type: IsarType.double,
    ),
    r'totalProfit': PropertySchema(
      id: 4,
      name: r'totalProfit',
      type: IsarType.double,
    )
  },
  estimateSize: _dlIncomeEstimateSize,
  serialize: _dlIncomeSerialize,
  deserialize: _dlIncomeDeserialize,
  deserializeProp: _dlIncomeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dlIncomeGetId,
  getLinks: _dlIncomeGetLinks,
  attach: _dlIncomeAttach,
  version: '3.1.0+1',
);

int _dlIncomeEstimateSize(
  DlIncome object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.idDay;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dlIncomeSerialize(
  DlIncome object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateCreated);
  writer.writeString(offsets[1], object.idDay);
  writer.writeDouble(offsets[2], object.totalIncome);
  writer.writeDouble(offsets[3], object.totalOutcome);
  writer.writeDouble(offsets[4], object.totalProfit);
}

DlIncome _dlIncomeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DlIncome(
    dateCreated: reader.readDateTimeOrNull(offsets[0]),
    id: id,
    idDay: reader.readStringOrNull(offsets[1]),
    totalIncome: reader.readDoubleOrNull(offsets[2]),
    totalOutcome: reader.readDoubleOrNull(offsets[3]),
    totalProfit: reader.readDoubleOrNull(offsets[4]),
  );
  return object;
}

P _dlIncomeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dlIncomeGetId(DlIncome object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dlIncomeGetLinks(DlIncome object) {
  return [];
}

void _dlIncomeAttach(IsarCollection<dynamic> col, Id id, DlIncome object) {
  object.id = id;
}

extension DlIncomeQueryWhereSort on QueryBuilder<DlIncome, DlIncome, QWhere> {
  QueryBuilder<DlIncome, DlIncome, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DlIncomeQueryWhere on QueryBuilder<DlIncome, DlIncome, QWhereClause> {
  QueryBuilder<DlIncome, DlIncome, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DlIncome, DlIncome, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterWhereClause> idBetween(
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

extension DlIncomeQueryFilter
    on QueryBuilder<DlIncome, DlIncome, QFilterCondition> {
  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> dateCreatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateCreated',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      dateCreatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateCreated',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> dateCreatedEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      dateCreatedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> dateCreatedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> dateCreatedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCreated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idDay',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idDay',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idDay',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idDay',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idDay',
        value: '',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> idDayIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idDay',
        value: '',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalIncomeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalIncome',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalIncomeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalIncome',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalIncomeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalIncome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalIncomeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalIncome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalIncomeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalIncome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalIncomeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalIncome',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalOutcomeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalOutcome',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalOutcomeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalOutcome',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalOutcomeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalOutcome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalOutcomeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalOutcome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalOutcomeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalOutcome',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalOutcomeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalOutcome',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalProfitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalProfit',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalProfitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalProfit',
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalProfitEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalProfit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition>
      totalProfitGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalProfit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalProfitLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalProfit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterFilterCondition> totalProfitBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalProfit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension DlIncomeQueryObject
    on QueryBuilder<DlIncome, DlIncome, QFilterCondition> {}

extension DlIncomeQueryLinks
    on QueryBuilder<DlIncome, DlIncome, QFilterCondition> {}

extension DlIncomeQuerySortBy on QueryBuilder<DlIncome, DlIncome, QSortBy> {
  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByIdDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idDay', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByIdDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idDay', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIncome', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIncome', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalOutcome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOutcome', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalOutcomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOutcome', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalProfit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProfit', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> sortByTotalProfitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProfit', Sort.desc);
    });
  }
}

extension DlIncomeQuerySortThenBy
    on QueryBuilder<DlIncome, DlIncome, QSortThenBy> {
  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByIdDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idDay', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByIdDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idDay', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIncome', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIncome', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalOutcome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOutcome', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalOutcomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalOutcome', Sort.desc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalProfit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProfit', Sort.asc);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QAfterSortBy> thenByTotalProfitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalProfit', Sort.desc);
    });
  }
}

extension DlIncomeQueryWhereDistinct
    on QueryBuilder<DlIncome, DlIncome, QDistinct> {
  QueryBuilder<DlIncome, DlIncome, QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<DlIncome, DlIncome, QDistinct> distinctByIdDay(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idDay', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlIncome, DlIncome, QDistinct> distinctByTotalIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalIncome');
    });
  }

  QueryBuilder<DlIncome, DlIncome, QDistinct> distinctByTotalOutcome() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalOutcome');
    });
  }

  QueryBuilder<DlIncome, DlIncome, QDistinct> distinctByTotalProfit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalProfit');
    });
  }
}

extension DlIncomeQueryProperty
    on QueryBuilder<DlIncome, DlIncome, QQueryProperty> {
  QueryBuilder<DlIncome, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DlIncome, DateTime?, QQueryOperations> dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<DlIncome, String?, QQueryOperations> idDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idDay');
    });
  }

  QueryBuilder<DlIncome, double?, QQueryOperations> totalIncomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalIncome');
    });
  }

  QueryBuilder<DlIncome, double?, QQueryOperations> totalOutcomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalOutcome');
    });
  }

  QueryBuilder<DlIncome, double?, QQueryOperations> totalProfitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalProfit');
    });
  }
}
