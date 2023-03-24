class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatData = [
  Chat(
    name: "Dr. Ketan Parmar",
    lastMessage: "Hope you are doing well...",
    image: 'lib/icons/docts/ketan.jpg',
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Dr. Aishwarya Barad",
    lastMessage: "Hello Ajay! I am...",
    image: 'lib/icons/docts/2.jpg',
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Dr. Jai Dhillon",
    lastMessage: "Do you have update...",
    image: 'lib/icons/docts/3.jpg',
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Dr. Ritika Mehrotra",
    lastMessage: "You’re welcome :)",
    image: 'lib/icons/docts/4.jpg',
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Dr. Pranav Shetty",
    lastMessage: "Thanks",
    image: 'lib/icons/docts/5.jpg',
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Dr. Aradhana Tandon",
    lastMessage: "Take Care",
    image: 'lib/icons/docts/6.jpg',
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Dr. Shivani Dalal",
    lastMessage: "How are you feeling today?",
    image: 'lib/icons/docts/7.jpg',
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Dr. Adnan Kamdar",
    lastMessage: "Just stay positive",
    image: 'lib/icons/docts/8.jpg',
    time: "5d ago",
    isActive: false,
  ),
];