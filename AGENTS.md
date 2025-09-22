# Repository Guidelines

## Project Structure & Module Organization
- `lib/`: Public package API. Core entrypoints in `ai_ui.dart`, channel/bridge code in `ai_ui_method_channel.dart`, abstractions in `ai_ui_platform_interface.dart`, and domain contracts in `lib/contracts/`.
- `test/`: Unit/widget tests (e.g., `ai_ui_test.dart`, `ai_ui_method_channel_test.dart`).
- `example/`: Minimal app to try the plugin (`cd example && flutter run`).
- Root config: `pubspec.yaml`, `analysis_options.yaml`, `README.md`, `CHANGELOG.md`.

## Build, Test, and Development Commands
- Install deps: `flutter pub get`
- Format (fixes): `dart format --fix .`
- Static analysis: `flutter analyze`
- Run tests: `flutter test -r expanded`
- Try example app: `cd example && flutter run`
- Publish check: `flutter pub publish --dry-run`

## Coding Style & Naming Conventions
- Follow `flutter_lints` (see `analysis_options.yaml`). Use 2-space indentation.
- Files: `snake_case.dart`; classes/types: `UpperCamelCase`; members/functions: `lowerCamelCase`.
- Public APIs in `lib/` should have `///` doc comments and small, composable methods.
- Avoid sweeping reformatting of untouched files; keep diffs minimal.

## Testing Guidelines
- Framework: `flutter_test` with fakes/mocks where needed (see `ai_ui_method_channel_test.dart`).
- Name tests `*_test.dart`; mirror `lib/` structure when practical.
- Prefer fast, isolated tests for platform interface and contracts in `lib/contracts/`.
- Run `flutter analyze && flutter test` locally before opening a PR.

## Commit & Pull Request Guidelines
- Commits: short imperative subject (e.g., "add method channel guard"); include context in body if needed.
- Reference issues (`#123`) when relevant. Group related changes per commit.
- PRs must include: clear description, linked issues, test coverage for new logic, and screenshots/GIFs for UI changes (example app).
- Update `CHANGELOG.md` and bump `pubspec.yaml` version for user-visible changes.

## Security & Configuration Tips
- Do not commit secrets or machine-specific files (`.dart_tool/`, IDE metadata).
- Plugin platforms are placeholders; add platforms via `flutter create -t plugin --platforms ...` before platform-specific code.
- Keep API changes backwards-compatible when possible; document breaking changes prominently.

## Agent-Specific Instructions
- Obey this file’s guidance across the repo. Prefer surgical changes; do not reformat unrelated code.
- Before proposing changes, run: `flutter pub get && flutter analyze && flutter test`.
