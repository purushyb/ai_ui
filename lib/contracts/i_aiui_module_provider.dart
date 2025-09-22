import 'package:ai_ui/models/aiui_module.dart';

/// Base contract for app developers to register their feature modules.
abstract class IAiuiModuleProvider {
  List<AiuiModule> getModules();
}
