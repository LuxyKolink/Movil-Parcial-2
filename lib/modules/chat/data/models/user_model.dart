class UserModel {
  String email;
  String photoUrl;
  String firstName;
  String secondName;
  String phoneNumer;
  String role;
  String password;

  UserModel({
    required this.email,
    required this.photoUrl,
    required this.firstName,
    required this.secondName,
    required this.phoneNumer,
    required this.role,
    required this.password,
  });

  static List<UserModel> getUsers() {
    List<UserModel> users = [];

    users.add(UserModel(
        email: 'sants@',
        photoUrl: 'assets/img/profile_icon.png',
        firstName: 'Santiago',
        secondName: 'Molano',
        phoneNumer: '3123396899',
        role: 'Gerente',
        password: 'soypro123'));

    users.add(UserModel(
        email: 'kevs@',
        photoUrl: 'assets/img/profile_icon.png',
        firstName: 'Kevin',
        secondName: 'Quintana',
        phoneNumer: '3184022339',
        role: 'Gerente',
        password: 'pene123'));

    return users;
  }
}
