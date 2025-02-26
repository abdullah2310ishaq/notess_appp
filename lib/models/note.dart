class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}

List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Go to Uni',
    content: 'Attend classes and complete assignments.',
    modifiedTime: DateTime.now().subtract(Duration(days: 1)).add(Duration(hours: 10)),
  ),
  Note(
    id: 1,
    title: 'Meeting with Prof',
    content: 'Discuss research project progress.',
    modifiedTime: DateTime.now().subtract(Duration(days: 1)).add(Duration(hours: 11)),
  ),
  Note(
    id: 2,
    title: 'Study Group',
    content: 'Review course materials with study group.',
    modifiedTime: DateTime.now().subtract(Duration(days: 1)).add(Duration(hours: 15)),
  ),
  Note(
    id: 3,
    title: 'Gym Workout',
    content: 'Hit the gym for a workout session.',
    modifiedTime: DateTime.now().subtract(Duration(days: 1)).add(Duration(hours: 16)),
  ),
  Note(
    id: 4,
    title: 'Cook Dinner',
    content: 'Prepare a healthy dinner at home.',
    modifiedTime: DateTime.now().subtract(Duration(days: 1)).add(Duration(hours: 18)),
  ),
];

