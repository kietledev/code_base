import 'package:code_base/common/core/params/params.dart';
import 'package:code_base/common/core/resources/resources.dart';
import 'package:code_base/domain/entities/entities.dart';

abstract class UserRepository {
  // API methods
  Future<DataState<User>> postLogin(LoginRequest params);

  // Database methods
  Future<User> getSaveUser();

  Future<void> saveArticle(User user);

  Future<void> removeArticle(User user);
}
