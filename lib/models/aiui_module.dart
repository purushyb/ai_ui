import 'package:ai_ui/models/aiui_operation.dart';

/// Represents a feature module with multiple operations.
class AiuiModule {
  final String id;
  final String name;
  final List<AiuiOperation> operations;

  AiuiModule({required this.id, required this.name, required this.operations});
}
