# Bash Scripts Repository

![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

This repository contains a collection of Bash scripts for automating various tasks and interacting with APIs. Each script is organised by functionality, making it easy to navigate and find what you need.

## Contents

- [OpenAI API](#openai-api)
  - [linux-assistant.sh](#linux-assistantsh)
- [System](#system)
  - [cpu-memory-usage.sh](#cpu-memory-usagesh)

## OpenAI API

### **`linux-assistant.sh`**

This script allows users to interact with an AI-powered Linux assistant that can answer Linux-related questions, provide troubleshooting guidance, and generate example scripts.

**Model Information:**

- The script uses **OpenAI’s ChatGPT** model, specifically `gpt-4o-mini` by default.
- Users can modify the script to use a different model by changing the `"model"` value in the API request.
- For more information on OpenAI models and API usage, refer to the [OpenAI Development Platform Documentation](https://platform.openai.com/docs/quickstart).

**System Prompt:**

>You are a knowledgeable Linux assistant. You will only answer Linux-related questions, including topics such as commands, system administration, shell scripting, troubleshooting, networking, and kernel-related concepts. Your goal is to provide clear, concise, and accurate guidance suitable for a technical professional who is learning Linux. Always format command-line examples in proper code blocks using triple backticks, and include brief explanations when appropriate. If the user asks for a script, provide a complete example, and use code blocks for clarity.

**Features:**

- Supports a wide range of Linux topics, including:
  - Commands
  - System administration
  - Shell scripting
  - Troubleshooting
  - Networking
  - Kernel-related concepts
- Formats responses in proper code blocks.
- Includes error handling for missing API keys, empty input, and API request failures.

**Usage:**

1. Set your OpenAI API key by editing the `API_KEY` variable in the script.
2. Run the script:

   ```bash
   ./openai-api/linux-assistant.sh
   ```

3. Ask your Linux assistant a question.

## System

### **`cpu-memory-usage.sh`**

This script displays the current CPU and memory usage in a simple and readable format. It uses standard Linux utilities like top, grep, awk, and free to retrieve and format the system information.

**Features:**

- CPU Usage: Displays the combined user and system CPU usage percentage.
- Memory Usage: Shows the used memory and total memory in human-readable format.

**Usage:**

1. Run the script:

   ```bash
    ./system/cpu-memory-usage.sh
   ```

2. Example output:

> CPU Usage:
15.7%
Memory Usage:
2.3G/8.0G

## How to Contribute

Contributions are welcome! If you would like to suggest enhancements, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes with a meaningful message.
4. Submit a pull request.
