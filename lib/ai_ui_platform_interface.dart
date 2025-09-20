import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ai_ui_method_channel.dart';

abstract class AiUiPlatform extends PlatformInterface {
  /// Constructs a AiUiPlatform.
  AiUiPlatform() : super(token: _token);

  static final Object _token = Object();

  static AiUiPlatform _instance = MethodChannelAiUi();

  /// The default instance of [AiUiPlatform] to use.
  ///
  /// Defaults to [MethodChannelAiUi].
  static AiUiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AiUiPlatform] when
  /// they register themselves.
  static set instance(AiUiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
