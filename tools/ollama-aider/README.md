# ollama-aider

A bash wrapper for running Aider with local models via Ollama.

## Configurable options

| Name              | Description                               |
| --------          | -------                                   |
| ARCHITECT_MODEL   | the model used for planning / design      |
| EDITOR_MODEL      | the model used for executing / coding     |


## Usage

- qwen-aider: 
    - starts Ollama (if not already running)
    - launches Aider with the EDITOR_MODEL
- qwen-aider planMode:
    - starts Ollama (if not already running)
    - launches Aider with the ARCHITECT_MODEL
- qwen-aider 3.6plan:
    - starts Ollama (if not already running)
    - launches Aider with the ARCHITECT_MODEL for --architect and the EDITOR_MODEL for --model
- qwen-aider stop:
    - stops Ollama

## Requirements

- [Ollama](https://ollama.com/) - with the models you set as ARCHITECT_MODEL and EDITOR_MODEL pulled.
- [Aider](https://aider.chat/)