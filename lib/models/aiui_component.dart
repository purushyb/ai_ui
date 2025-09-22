/// Describes a UI element reference.
class AiuiComponent {
  final String type; // "widget" or "screen"
  final String ref; // Widget class name or route path

  AiuiComponent({required this.type, required this.ref});
}
