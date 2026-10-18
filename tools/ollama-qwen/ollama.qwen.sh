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
    planMode)
        start_ollama
        echo "Running architect configuration"
        ollama run ${ARCHITECT_MODEL}
        ;;
    stop)
        stop_ollama
        ;;
    *)
        start_ollama
        echo "Running default configuration"
        ollama run ${EDITOR_MODEL}
        ;;
esac
