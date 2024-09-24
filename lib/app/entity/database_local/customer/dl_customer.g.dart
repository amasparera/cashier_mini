// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dl_customer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDlCustomerCollection on Isar {
  IsarCollection<DlCustomer> get dlCustomers => this.collection();
}

const DlCustomerSchema = CollectionSchema(
  name: r'DlCustomer',
  id: -2081901495008329562,
  properties: {
    r'addess': PropertySchema(
      id: 0,
      name: r'addess',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 1,
      name: r'gender',
      type: IsarType.byte,
      enumMap: _DlCustomergenderEnumValueMap,
    ),
    r'idServer': PropertySchema(
      id: 2,
      name: r'idServer',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 4,
      name: r'phone',
      type: IsarType.string,
    )
  },
  estimateSize: _dlCustomerEstimateSize,
  serialize: _dlCustomerSerialize,
  deserialize: _dlCustomerDeserialize,
  deserializeProp: _dlCustomerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dlCustomerGetId,
  getLinks: _dlCustomerGetLinks,
  attach: _dlCustomerAttach,
  version: '3.1.0+1',
);

int _dlCustomerEstimateSize(
  DlCustomer object,
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

void _dlCustomerSerialize(
  DlCustomer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addess);
  writer.writeByte(offsets[1], object.gender.index);
  writer.writeString(offsets[2], object.idServer);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.phone);
}

DlCustomer _dlCustomerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DlCustomer(
    addess: reader.readStringOrNull(offsets[0]),
    gender: _DlCustomergenderValueEnumMap[reader.readByteOrNull(offsets[1])] ??
        EnumGender.lakiLaki,
    id: id,
    idServer: reader.readStringOrNull(offsets[2]),
    name: reader.readString(offsets[3]),
    phone: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _dlCustomerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (_DlCustomergenderValueEnumMap[reader.readByteOrNull(offset)] ??
          EnumGender.lakiLaki) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DlCustomergenderEnumValueMap = {
  'lakiLaki': 0,
  'perempuan': 1,
};
const _DlCustomergenderValueEnumMap = {
  0: EnumGender.lakiLaki,
  1: EnumGender.perempuan,
};

Id _dlCustomerGetId(DlCustomer object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dlCustomerGetLinks(DlCustomer object) {
  return [];
}

void _dlCustomerAttach(IsarCollection<dynamic> col, Id id, DlCustomer object) {
  object.id = id;
}

extension DlCustomerQueryWhereSort
    on QueryBuilder<DlCustomer, DlCustomer, QWhere> {
  QueryBuilder<DlCustomer, DlCustomer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DlCustomerQueryWhere
    on QueryBuilder<DlCustomer, DlCustomer, QWhereClause> {
  QueryBuilder<DlCustomer, DlCustomer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterWhereClause> idBetween(
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

extension DlCustomerQueryFilter
    on QueryBuilder<DlCustomer, DlCustomer, QFilterCondition> {
  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'addess',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      addessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'addess',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessEqualTo(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessGreaterThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessLessThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessBetween(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessStartsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessEndsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessContains(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessMatches(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> addessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addess',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      addessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addess',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> genderEqualTo(
      EnumGender value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> genderGreaterThan(
    EnumGender value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> genderLessThan(
    EnumGender value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> genderBetween(
    EnumGender lower,
    EnumGender upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idServer',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      idServerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idServer',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerEqualTo(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerLessThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerBetween(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerEndsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerContains(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> idServerMatches(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      idServerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      idServerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameContains(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneEqualTo(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneGreaterThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneLessThan(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneBetween(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneStartsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneEndsWith(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneContains(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneMatches(
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

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }
}

extension DlCustomerQueryObject
    on QueryBuilder<DlCustomer, DlCustomer, QFilterCondition> {}

extension DlCustomerQueryLinks
    on QueryBuilder<DlCustomer, DlCustomer, QFilterCondition> {}

extension DlCustomerQuerySortBy
    on QueryBuilder<DlCustomer, DlCustomer, QSortBy> {
  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByAddess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByAddessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByIdServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByIdServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension DlCustomerQuerySortThenBy
    on QueryBuilder<DlCustomer, DlCustomer, QSortThenBy> {
  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByAddess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByAddessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addess', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByIdServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByIdServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idServer', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension DlCustomerQueryWhereDistinct
    on QueryBuilder<DlCustomer, DlCustomer, QDistinct> {
  QueryBuilder<DlCustomer, DlCustomer, QDistinct> distinctByAddess(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addess', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QDistinct> distinctByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender');
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QDistinct> distinctByIdServer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idServer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DlCustomer, DlCustomer, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }
}

extension DlCustomerQueryProperty
    on QueryBuilder<DlCustomer, DlCustomer, QQueryProperty> {
  QueryBuilder<DlCustomer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DlCustomer, String?, QQueryOperations> addessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addess');
    });
  }

  QueryBuilder<DlCustomer, EnumGender, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<DlCustomer, String?, QQueryOperations> idServerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idServer');
    });
  }

  QueryBuilder<DlCustomer, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DlCustomer, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }
}
