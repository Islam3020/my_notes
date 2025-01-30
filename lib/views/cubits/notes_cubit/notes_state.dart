part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NoteInitial extends NotesState {}
final class NoteSuccess extends NotesState {}

