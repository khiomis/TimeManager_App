class KhiomisError extends Error {
  final Map<String, String> messages;

  KhiomisError({required this.messages});
}