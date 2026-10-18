#!/usr/bin/env bash

export OLLAMA_CONTEXT_LENGTH=65536
export OLLAMA_API_BASE="http://localhost:11434"
OLLAMA_LOG_FILE="${HOME}/.ollama/serve.log"

start_ollama() {
    if pgrep -f "ollama serve" > /dev/null; 
    then
       echo "Ollama is already running"
    else
        echo "Starting Ollama..."
        rm -f $OLLAMA_LOG_FILE
        ollama serve > $OLLAMA_LOG_FILE 2>&1 &
    fi
}

case "$1" in
    stop)
        echo "Stopping Ollama..."
        pkill -f "ollama serve"
        ;;
    *)
        if pgrep -f "ollama serve" > /dev/null; 
        then
        echo "Ollama is already running"
        else
            echo "Starting Ollama..."
            rm -f $OLLAMA_LOG_FILE
            ollama serve > $OLLAMA_LOG_FILE 2>&1 &
        fi
        ;;
esac