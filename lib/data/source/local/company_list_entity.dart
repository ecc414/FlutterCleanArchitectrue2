import 'package:hive/hive.dart';

// Hive adaptor를 만들기 위해
part 'company_list_entity.g.dart';

@HiveType(typeId: 0) // to provide Hive Object
class CompanyListEntity extends HiveObject{
  @HiveField(0)
  String symbol;

  @HiveField(1)
  String name;

  @HiveField(2)
  String exchange;

  CompanyListEntity({
    required this.symbol,
    required this.name,
    required this.exchange,
  });
}
