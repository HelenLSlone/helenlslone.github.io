#!/usr/bin/env bash

export OLLAMA_CONTEXT_LENGTH=65536
export OLLAMA_API_BASE="http://localhost:11434"
ARCHITECT_MODEL="qwen3.6:27b"
EDITOR_MODEL="qwen2.5-coder:32b"

start_ollama() {
    if pgrep -f "ollama serve" > /dev/null; 
    then
       echo "Ollama is already running"
    else
        echo "Starting Ollama..."
        ollama serve > ~/.ollama/serve.log 2>&1 &
    fi
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
        pkill -f "ollama serve"
        ;;
    *)
        start_ollama
        echo "Running default configuration"
        aider --model ollama_chat/${EDITOR_MODEL}
        ;;
esac
