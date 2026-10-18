#!/usr/bin/env bash

ARCHITECT_MODEL="qwen3.6:27b"
EDITOR_MODEL="qwen2.5-coder:32b"
OLLAMA_SERVE_SCRIPT="${HOME}/.local/bin/ollama-serve.sh"

start_ollama() {
    $OLLAMA_SERVE_SCRIPT
}

stop_ollama() {
    $OLLAMA_SERVE_SCRIPT stop
}

case "$1" in
    3.6plan)
        start_ollama
        echo "Running 3.6plan configuration"
        aider --architect ollama_chat/${ARCHITECT_MODEL} --model ollama_chat/${EDITOR_MODEL}
        ;;
    planMode)
        start_ollama
        echo "Running planMode configuration"
        aider --model ollama_chat/${ARCHITECT_MODEL}
        ;;
    stop)
        echo "Stopping Ollama..."
        stop_ollama
        ;;
    *)
        start_ollama
        echo "Running default configuration"
        aider --model ollama_chat/${EDITOR_MODEL}
        ;;
esac
