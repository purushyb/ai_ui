import 'package:ai_ui/models/aiui_module.dart';
import 'package:ai_ui/models/aiui_response.dart';

/// Adapter to abstract away the LLM provider (OpenAI, Anthropic, etc.)
abstract class IAiuiLLMAdapter {
  Future<AiuiResponse> processUtterance(
    String utterance,
    List<AiuiModule> context,
  );
}
