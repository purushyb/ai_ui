# AI UI

AI UI is an SDK that provides **AI-driven UI/UX functionality**.  
It connects a **Large Language Model (LLM)** with native app modules to decide *what* and *how* to respond to the user, either by showing UI components or performing app operations.

---

## 🔑 Core Concepts

### LLM-driven responses
- The model interprets user utterances and decides the correct UI or flow.

### Feature Modules (App Modules)
- Encapsulate functionality (e.g., **Exam Scheduling**, **Profile Settings**).

---

## ⚙️ Modes of Operation

### 1. **AI UI Mode**
- Navigate directly to relevant screens.  
- Highlights the exact UI element where the action can be performed.  
- Provides contextual feedback (e.g., snackbar messages).

**Example:**
- User: *“Where can I change my profile picture?”*  
  → SDK navigates to **Profile Settings** screen, highlights avatar edit field, and shows a snackbar: *“Tap here to update your picture”*.

---

### 2. **Chat Mode**
- Conversational responses with inline UI components.  
- Supports both “hit & fetch” style and completable interactions.

**Flow:**
1. User asks a question → SDK fetches a matching UI element.  
2. UI element is rendered inline or navigates to a screen.  
3. User completes operation conversationally.

**Examples:**
- User: *“What is my next exam date?”*  
  → SDK fetches and shows the **Exam Info** UI component.

- User: *“Change next exam date to 25 September.”*  
  → SDK completes the update and shows confirmation UI.

---

## ⚙️ Context Engine

- At **compile time**, a **context JSON map** is generated.  
- This map:
  - Describes available feature modules and operations.  
  - Is used at runtime to decide what UI or action to perform.

**Security & Performance Considerations:**
- No sensitive information stored.  
- Lightweight representation reduces memory and security overhead.

---

## 📦 Example Use Cases

- **Education Apps**: Change exam schedules, fetch upcoming test dates.  
- **Productivity Apps**: Create tasks via chat or jump to “Add Task” screen.  
- **Settings Apps**: Navigate users to hidden settings via text/voice.

---

## 🚧 Roadmap / Next Steps

- [ ] Define JSON schema for context map.  
- [ ] Create UI component registry (mapping feature modules → widgets/screens).  
- [ ] Define LLM interface contracts (prompt formatting, output parsing).  
- [ ] Implement demo app with both modes (**AI UI** & **Chat Mode**).  
