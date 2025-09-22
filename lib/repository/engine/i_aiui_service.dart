import 'package:ai_ui/models/aiui_response.dart';

abstract class IAiuiEngineRepository {
  Future<AiuiResponse?> handle(String utterance);
}
