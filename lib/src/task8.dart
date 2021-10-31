abstract class User {
  final String email;
  User(this.email);
}

mixin EmailSystem on User {
  String getMailSystem() => email.substring(email.indexOf('@') + 1);
}

class AdminUser extends User with EmailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  final Set<T> _users = {};

  UserManager([List<T> users = const []]) {
    _users.addAll(users);
  }

  bool add(T user) => _users.add(user);
  bool remove(T user) => _users.remove(user);

  Set<String> get emailList => _users
      .map((user) => user is AdminUser ? user.getMailSystem() : user.email)
      .toSet();

  int get length => _users.length;
}
