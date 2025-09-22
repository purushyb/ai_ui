import 'package:ai_ui/models/aiui_module.dart';
import 'package:ai_ui/service/registry/i_aiui_registry.dart';

class AiuiRegistry implements IAiuiRegistryService {
  final List<AiuiModule> _modules = [];

  @override
  List<AiuiModule> get modules => _modules;

  @override
  AiuiModule getModule(String moduleId) {
    return _modules.firstWhere((module) => module.id == moduleId);
  }

  @override
  Future<bool> registerModule(AiuiModule aiuiModule) async {
    _modules.add(aiuiModule);
    return true;
  }

  @override
  Future<bool> unregisterModule(String id) async {
    _modules.removeWhere((module) => module.id == id);
    return true;
  }
}
