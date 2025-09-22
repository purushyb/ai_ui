import 'package:ai_ui/models/aiui_response.dart';

abstract class IAiuiService {
  Future<AiuiResponse?> handle(String utterance);
}
