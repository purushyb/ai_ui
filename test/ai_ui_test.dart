import 'package:flutter_test/flutter_test.dart';
import 'package:ai_ui/ai_ui.dart';
import 'package:ai_ui/ai_ui_platform_interface.dart';
import 'package:ai_ui/ai_ui_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAiUiPlatform
    with MockPlatformInterfaceMixin
    implements AiUiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AiUiPlatform initialPlatform = AiUiPlatform.instance;

  test('$MethodChannelAiUi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAiUi>());
  });

  test('getPlatformVersion', () async {
    AiUi aiUiPlugin = AiUi();
    MockAiUiPlatform fakePlatform = MockAiUiPlatform();
    AiUiPlatform.instance = fakePlatform;

    expect(await aiUiPlugin.getPlatformVersion(), '42');
  });
}
