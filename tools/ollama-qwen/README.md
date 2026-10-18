# ollama-aider

A bash wrapper for Qwen locally with Ollama.

## Configurable options

| Name              | Description                               |
| --------          | -------                                   |
| `ARCHITECT_MODEL`   | the model used for planning / design      |
| `EDITOR_MODEL`      | the model used for executing / coding     |


## Usage

- `ollama-qwen.sh`: 
    - starts Ollama (if not already running)
    - runs Ollama with the EDITOR_MODEL
- `ollama-qwen.sh planMode`:
    - starts Ollama (if not already running)
    - runs Ollama  with the ARCHITECT_MODEL
- `ollama-qwen.sh stop`:
    - stops Ollama

## Requirements

- [Ollama](https://ollama.com/) - with the models you set as ARCHITECT_MODEL and EDITOR_MODEL pulled.
- [ollama-serve.sh](../ollama-serve/) - saved to your local bin alongside this file.