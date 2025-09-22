import 'package:ai_ui/models/aiui_component.dart';

/// Unified response object returned by AI UI engine.
class AiuiResponse {
  final String operationId;
  final Map<String, dynamic> params;
  final AiuiComponent ui;

  AiuiResponse({
    required this.operationId,
    required this.params,
    required this.ui,
  });
}
