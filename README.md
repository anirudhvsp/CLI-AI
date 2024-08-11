# CLI-AI

This repository contains two scripts, one for Windows and one for Linux, that make a POST request to an AWS Lambda function running a Python package called `g4f`. This can be run locally as well but good for headless VMs and machines you don't wanna install python on.

## Features

- **Cross-platform support**: Compatible with both Windows and Linux systems.
- **Minimal setup**: Requires only setting an environment variable for the API URL.
- **Formatted output**: Responses are formatted for better readability.

## Prerequisites

- `curl` installed on your system.
- An AWS Lambda function with the `g4f` API set up.
- API URL for your AWS Lambda function.

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### Linux Commands
```bash
export AI_CHAT_API_URL="https://your-lambda-url.amazonaws.com"
echo 'export PATH=$PATH:/path/to/your-repo' >> ~/.bashrc
source ~/.bashrc
```

### Windows Commands
```bash
setx AI_CHAT_API_URL "https://your-lambda-url.amazonaws.com"
setx PATH "%PATH%;C:\path\to\your-repo"
```

## Usage

### Same for Windows and Linux
```bash
askAi is 9.11 greater than 9.9
```
