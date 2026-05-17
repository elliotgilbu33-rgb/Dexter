# DEXTER AI

**An adaptive, voice-controlled AI desktop assistant for Windows.**

Fully local. Zero API keys. No cloud dependency.

## Features

- Voice-activated ("Hey Dexter") with always-on listening mode
- Speech-to-text via Whisper (local)
- AI reasoning via Ollama + Qwen (local LLM)
- Text-to-speech via Piper (local, Ryan voice)
- System control: launch apps, manage windows, control media
- File search, system monitoring, web search
- Floating always-on-top overlay with animated orb
- System tray integration + auto-start
- Adaptive intelligence — understands context, not just commands

## Quick Start

### Prerequisites
- Windows 10/11
- 8GB+ RAM (16GB recommended)
- ~10GB free disk space
- GPU optional (runs on CPU, faster with GPU)

### Installation

1. Download the latest `Dexter-AI-Installer.msi` from [Releases](https://github.com/elliotgilbu33-rgb/dexter-ai/releases)
2. Run the installer
3. On first launch, the setup wizard will download AI models (~3GB):
   - Ollama + Qwen 2.5 3B (LLM)
   - Whisper tiny.en (speech-to-text)
   - Piper + Ryan voice (text-to-speech)
4. That's it — say **"Hey Dexter"** to activate

### Building from Source

```bash
git clone https://github.com/elliotgilbu33-rgb/dexter-ai.git
cd dexter-ai
npm install
cargo tauri build
```

The installer will be in `src-tauri/target/release/bundle/msi/`.

## Voice Commands

Dexter understands natural language — no rigid commands needed. Examples:

- "Open Spotify"
- "Launch Discord and Chrome"
- "How's my system doing?"
- "This feels slow, optimize it"
- "Help me focus"
- "Search for gaming laptops"
- "Organize my workspace"
- "What's my CPU usage?"

## Architecture

- **Frontend:** React + TypeScript + Tailwind CSS
- **Backend:** Rust via Tauri 2.0
- **STT:** Whisper (whisper.cpp)
- **LLM:** Ollama (Qwen 2.5)
- **TTS:** Piper (Ryan voice)
- **Memory:** SQLite + JSONL
- **Build:** GitHub Actions → MSI installer

## License

MIT
