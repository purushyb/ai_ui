import 'package:ai_ui/contracts/i_aiui_llm_adapter.dart';
import 'package:ai_ui/models/aiui_response.dart';
import 'package:ai_ui/service/engine/i_aiui_service.dart';
import 'package:ai_ui/service/registry/i_aiui_registry.dart';

/// Main engine that loads context and processes user input.
class AiuiEngine implements IAiuiService {
  final IAiuiRegistry registry;
  final IAiuiLLMAdapter llm;

  AiuiEngine({required this.registry, required this.llm});

  @override
  Future<AiuiResponse?> handle(String utterance) async {
    final response = await llm.processUtterance(utterance, registry.modules);

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
