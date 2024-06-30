class Attachment {
  const Attachment({required this.url});
  final String url;
}

class Email {
  Email(
      {required this.sender,
      required this.recipients,
      required this.subject,
      required this.content,
      this.replies = 0,
      this.attachment = const []});
  final User sender;
  final List<User> recipients;
  final String subject;
  final String content;
  final List<Attachment> attachment;
  final double replies;
}

class Name {
  const Name({required this.fName, required this.lName});
  final String fName;
  final String lName;
  String get fullName => '$fName $lName';
}

class User {
  const User(
      {required this.name, required this.avatarUrl, required this.lastActive});
  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}
