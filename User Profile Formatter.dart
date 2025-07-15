enum UserRole { Admin, Guest, Member }

String formatUserProfile(dynamic user) {
  String? firstName = user['firstName'];
  String? lastName = user['lastName'];
  dynamic role = user['role'];

  String fullName = (firstName ?? '') + " " + (lastName ?? '');

  UserRole userRole = role is String
      ? (role == 'Admin'
          ? UserRole.Admin
          : role == 'Member'
              ? UserRole.Member
              : UserRole.Guest)
      : UserRole.Guest;

  return "Name: ${fullName.trim().isNotEmpty ? fullName.trim() : 'Unknown User'}, Role: ${userRole.name}";
}

void main() {
  var user1 = {'firstName': 'kholoud', 'lastName': 'mohamed', 'role': 'Admin'};
  var user2 = {'firstName': null, 'lastName': null, 'role': 'Unknown'};

  print(formatUserProfile(user1));
  print(formatUserProfile(user2));
}

