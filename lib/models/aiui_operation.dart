import 'package:ai_ui/models/aiui_component.dart';

/// Represents a single operation that can be triggered via AI UI.
class AiuiOperation {
  final String id;
  final String description;
  final List<AiuiParam> inputParams;
  final AiuiComponent ui;

  AiuiOperation({
    required this.id,
    required this.description,
    required this.inputParams,
    required this.ui,
  });
}

class AiuiParam {
  final String name;
  final String type; // "String", "DateTime", etc.

  AiuiParam({required this.name, required this.type});
}
