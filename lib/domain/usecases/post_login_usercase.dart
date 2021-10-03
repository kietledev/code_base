import 'package:code_base/common/core/params/params.dart';
import 'package:code_base/common/core/resources/resources.dart';
import 'package:code_base/common/core/usecase/usecase.dart';
import 'package:code_base/domain/entities/entities.dart';
import 'package:code_base/domain/repositories/repositories.dart';

class PostLoginUseCase implements UseCase<DataState<User>, LoginRequest> {
  final UserRepository _userRepository;

  PostLoginUseCase(this._userRepository);

  @override
  Future<DataState<User>> call({LoginRequest? params}) {
    return _userRepository.postLogin(params!);
  }
}
