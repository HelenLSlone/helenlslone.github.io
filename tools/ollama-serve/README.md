# ollama-serve

A bash wrapper for running ollama.

## Configurable options

| Name              | Description                               |
| --------          | -------                                   |
| `OLLAMA_LOG_FILE`   | where the ollama logs should be saved     |


## Usage

- `ollama-serve.sh`:
    - if Ollama is already running, nothing. Otherwise:
    - deletes any existing OLLAMA_LOG_FILE
    - starts Ollama with the logs saved to OLLAMA_LOG_FILE
- `ollama-serve.sh stop`:
    - stops Ollama

## Requirements

- [Ollama](https://ollama.com/)