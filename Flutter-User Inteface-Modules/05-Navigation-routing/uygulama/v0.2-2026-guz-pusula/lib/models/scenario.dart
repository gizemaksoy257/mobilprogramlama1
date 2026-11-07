class Scenario {
  const Scenario({
    required this.id,
    required this.category,
    required this.title,
    required this.subtitle,
    required this.source,
    required this.message,
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.clues,
    required this.safeAction,
    required this.explanation,
  });

  final int id;
  final String category;
  final String title;
  final String subtitle;
  final String source;
  final String message;
  final String question;
  final List<String> options;
  final int correctIndex;
  final List<String> clues;
  final String safeAction;
  final String explanation;
}
