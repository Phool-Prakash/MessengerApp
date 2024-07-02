import 'package:messenger_app/model/models.dart';

final User user_0 = User(
    name: const Name(fName: 'Saket', lName: 'Kumar'),
    avatarUrl: 'assets/images/avatar_1.png',
    lastActive: DateTime.now());

final User user_1 = User(
    name: const Name(fName: 'Chiya', lName: ''),
    avatarUrl: 'assets/images/avatar_2.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_2 = User(
    name: const Name(fName: 'Phool', lName: 'Prakash'),
    avatarUrl: 'assets/images/avatar_3.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 30)));

final User user_3 = User(
    name: const Name(fName: 'Aashna', lName: 'Joshi'),
    avatarUrl: 'assets/images/avatar_4.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 15)));

final User user_4 = User(
    name: const Name(fName: 'Ritik', lName: 'Raj'),
    avatarUrl: 'assets/images/avatar_5.png',
    lastActive: DateTime.now().subtract(const Duration(hours: 1)));

final User user_5 = User(
    name: const Name(fName: 'Roshan', lName: 'Raj'),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_6 = User(
    name: const Name(fName: 'Roshan', lName: 'Raj'),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_7 = User(
    name: const Name(fName: 'Shubham', lName: 'Singh'),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_8 = User(
    name: const Name(fName: 'Girish', lName: ''),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_9 = User(
    name: const Name(fName: 'Raju', lName: 'Raj'),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final User user_10 = User(
    name: const Name(fName: 'Grinder', lName: ''),
    avatarUrl: 'assets/images/img.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));

final List<Email> emails = [
  Email(
    sender: user_1,
    recipients: [],
    subject: 'Dinner Club',
    content: "I think it's time for us to finally try that new noodle shop"
        " downtown that doesn't use menus. Anyone else have"
        " other suggestions for dinner club this week? "
        "I'm so intrigued by this idea of a noodle restaurant where no one"
        " gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
    sender: user_2,
      recipients: [],
    subject: 'Dinner Club',
    content: "Yes! I forgot about that place! I'm definitely up "
        "for taking a risk this week and handing control over "
        "to this mysterious noodle chef. I wonder what happens "
        "if you have allergies though? Lucky none of us have any "
        "otherwise I'd be a bit concerned.\n\nThis is going to be great."
        " See you all at the usual time?",
  ),
  Email(
      sender: user_3,
      recipients: [],
      subject: 'This food show is made for you',
      content: "Ping– you'd love this new food show I started watching. "
          "It's produced by a Thai drummer who started getting "
          "recognized for the amazing vegan food she always brought"
          " to shows.",
      attachment: [const Attachment(url: 'assets/images/thumbnail_1.png')]),
  Email(
    sender: user_4,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content: 'What do you think about training to be volunteer EMTs?'
        'We could do it together for moral support. Think about it??',
  ),

  Email(
    sender: user_5,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content: 'What do you think about training to be volunteer EMTs?'
        'We could do it together for moral support. Think about it??',
  ),
  Email(
    sender: user_6,
    recipients: [],
    subject: 'Dinner Club',
    content: "Yes! I forgot about that place! I'm definitely up "
        "for taking a risk this week and handing control over "
        "to this mysterious noodle chef. I wonder what happens "
        "if you have allergies though? Lucky none of us have any "
        "otherwise I'd be a bit concerned.\n\nThis is going to be great."
        " See you all at the usual time?",
  ),
  Email(
    sender: user_7,
    recipients: [],
    subject: 'Dinner Club',
    content: "Yes! I forgot about that place! I'm definitely up "
        "for taking a risk this week and handing control over "
        "to this mysterious noodle chef. I wonder what happens "
        "if you have allergies though? Lucky none of us have any "
        "otherwise I'd be a bit concerned.\n\nThis is going to be great."
        " See you all at the usual time?",
  ),
  Email(
    sender: user_8,
    recipients: [],
    subject: 'Dinner Club',
    content: "Yes! I forgot about that place! I'm definitely up "
        "for taking a risk this week and handing control over "
        "to this mysterious noodle chef. I wonder what happens "
        "if you have allergies though? Lucky none of us have any "
        "otherwise I'd be a bit concerned.\n\nThis is going to be great."
        " See you all at the usual time?",
  ),
  Email(
    sender: user_9,
    recipients: [],
    subject: 'Dinner Club',
    content: "I think it's time for us to finally try that new noodle shop"
        " downtown that doesn't use menus. Anyone else have"
        " other suggestions for dinner club this week? "
        "I'm so intrigued by this idea of a noodle restaurant where no one"
        " gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
    sender: user_10,
    recipients: [],
    subject: 'Dinner Club',
    content: "I think it's time for us to finally try that new noodle shop"
        " downtown that doesn't use menus. Anyone else have"
        " other suggestions for dinner club this week? "
        "I'm so intrigued by this idea of a noodle restaurant where no one"
        " gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
];

final List<Email> replies = [
  Email(
    sender: user_2,
    recipients: [user_3, user_2],
    subject: 'Dinner Club',
    content: "I think it's time for us to finally try that "
        "new noodle shop downtown that doesn't use menus."
        "Anyone else have other suggestions for dinner club "
        "this week? I'm so intrigued by this idea of a noodle"
        " restaurant where no one gets to order for themselves - "
        "could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
      sender: user_0,
      recipients: [user_3, user_2],
      subject: 'Dinner Club',
      content: "Yes! I forgot about that place! I'm definitely up for "
          "taking a risk this week and handing control over to "
          "this noodle chef. I wonder what happens if u have "
          "all allergies though? Lucky none of use have any "
          "otherwise I'd be a bit concerned.\n\nThis is going "
          "to be great. See u all at the usual time?"),
  Email(
      sender: user_5,
      recipients: [user_1, user_2],
      subject: 'Dinner Club',
      content: "Yes! I forgot about that place! I'm definitely up for "
          "taking a risk this week and handing control over to "
          "this noodle chef. I wonder what happens if u have "
          "all allergies though? Lucky none of use have any "
          "otherwise I'd be a bit concerned.\n\nThis is going "
          "to be great. See u all at the usual time?")
];


