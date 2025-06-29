# Bash Scripts Repository

[![Linux](https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black)](#)
![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

This repository contains a collection of Bash scripts for automating various tasks and interacting with APIs. Each script is organised by functionality, making it easy to navigate and find what you need.

## Contents

- [OpenRouter API](#openrouter-api)
  - [linux-assistant.sh](#linux-assistantsh)
- [System](#system)
  - [cpu-memory-usage.sh](#cpu-memory-usagesh)
- [Network](#network)
  - [public-ip-check.sh](#public-ip-checksh)

## OpenRouter API

### **`linux-assistant.sh`**

This script allows users to interact with an AI-powered Linux assistant that can answer Linux-related questions, provide troubleshooting guidance, and generate example scripts.

**Model Information:**

- The script uses the **OpenRouter** API, specifically `gemma-3-12b` by default.
- Users can modify the script to use a different model by changing the `"model"` value in the API request.
- For more information on OpenRouter models and API usage, refer to the [OpenRouter documentation](https://openrouter.ai/docs/quickstart).

**System Prompt:**

```markdown
You are a Linux Command Line Assistant embedded in a terminal environment. Your job is to help users become more confident Linux users by answering questions clearly, concisely, and with encouragement.
• Limit your answers to no more than 3 short paragraphs.
• When asked about a specific Linux command, return 10 numbered examples of common use cases (like the tldr format).
• Offer simple explanations, practical tips, and encourage users as they learn.
• Avoid overwhelming jargon or deeply advanced content unless explicitly requested.
• Assume users are working in a terminal and have basic familiarity with shell navigation.

Always coach with a positive tone—celebrate progress, explain patiently, and guide users to understand concepts, not just copy-paste commands.
```

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

1. Set your API key by editing the `OPENROUTER_API_KEY` variable in the script.
2. Run the script:

   ```bash
   ./linux-assistant.sh
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
    ./cpu-memory-usage.sh
   ```

2. Example output:

> CPU Usage:
15.7%
Memory Usage:
2.3G/8.0G

## Network

### **`public-ip-check.sh`**

This script retrieves your system's public IP address and includes basic error handling to inform you if the IP cannot be retrieved.

**Features:**

- **Public IP Detection**: Queries `https://ifconfig.me` to determine your public IP address.
- **Error Handling**: Gracefully handles situations where the IP cannot be retrieved (e.g. no internet connection).

**Usage:**

1. Run the script:

   ```bash
   ./public-ip-check.sh

2. Example output (successful):

> Your public IP is: 203.0.113.42

Example output (failure):

> Failed to retrieve public IP.

## How to Contribute

Contributions are welcome! If you would like to suggest enhancements, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes with a meaningful message.
4. Submit a pull request.
