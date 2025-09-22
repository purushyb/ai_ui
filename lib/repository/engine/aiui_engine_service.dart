import 'package:ai_ui/service/llm/dev_aiui_llm_service.dart';
import 'package:ai_ui/service/llm/i_aiui_llm_service.dart';
import 'package:ai_ui/models/aiui_response.dart';
import 'package:ai_ui/repository/engine/i_aiui_service.dart';
import 'package:ai_ui/service/registry/i_aiui_registry.dart';

/// Main engine that loads context and processes user input.
class AiuiEngineRepository implements IAiuiEngineRepository {
  final IAiuiRegistryService registry;
  final IAiuiLLMService _llm = DevAiuiLlmService();

  AiuiEngineRepository({required this.registry});

  @override
  Future<AiuiResponse?> handle(String utterance) async {
    final response = await _llm.processUtterance(utterance, registry.modules);

    // Validate operation exists
    final module = registry.modules
        .expand((m) => m.operations)
        .firstWhere(
          (op) => op.id == response.operationId,
          orElse: () =>
              throw Exception("Unknown operation: ${response.operationId}"),
        );

    // Validate params match schema
    for (var param in module.inputParams) {
      if (!response.params.containsKey(param.name)) {
        throw Exception("Missing param: ${param.name}");
      }
    }

    return response;
  }
}
