import 'dart:math';

import 'package:ai_ui/models/aiui_component.dart';
import 'package:ai_ui/models/aiui_module.dart';
import 'package:ai_ui/models/aiui_response.dart';
import 'package:ai_ui/service/llm/i_aiui_llm_service.dart';

class DevAiuiLlmService implements IAiuiLLMService {
  @override
  Future<AiuiResponse> processUtterance(
    String utterance,
    List<AiuiModule> context,
  ) async {
    return AiuiResponse(
      operationId: context
          .elementAt(Random().nextInt(context.length - 1))
          .operations
          .first
          .id,
      params: {},
      ui: AiuiComponent(type: "Screen", ref: "ref"),
    );
  }
}
