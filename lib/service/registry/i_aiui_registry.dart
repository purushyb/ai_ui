import 'package:ai_ui/models/aiui_module.dart';

abstract class IAiuiRegistryService {
  List<AiuiModule> get modules;
  AiuiModule getModule(String moduleId);
  Future<bool> registerModule(AiuiModule aiuiModule);
  Future<bool> unregisterModule(String id);
}
