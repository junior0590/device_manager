import 'package:equatable/equatable.dart';
import '../../../../../utilities/helpers/helpers.dart';

class UpdatesDto extends Equatable {
  final int? rec_id;
  final String? user_name;
  final String? date;
  final String? description;

  UpdatesDto({
    this.rec_id,
    this.user_name,
    this.date,
    this.description
    }
      );

  UpdatesDto copyWith({
    int? rec_id,
    String? user_name,
    String? date,
    String? description,
  }) =>
      UpdatesDto(
        rec_id: rec_id ?? this.rec_id,
        user_name: user_name ?? this.user_name,
        date: date ?? this.date,
        description: description ?? this.description,
      );

  @override
  List<Object?> get props => [
    rec_id,
    user_name,
    date,
    description
  ];
}
