#!/bin/bash

# Set your OpenAI API key
API_KEY="YOUR_API_KEY"

# Check if API_KEY is set
if [[ -z "$API_KEY" ]]; then
  echo "Error: API key is not set. Please set your API key in the script."
  exit 1
fi

# System prompt for the assistant
SYSTEM_PROMPT="You are a knowledgeable Linux assistant. You will only answer Linux-related questions, including topics such as commands, system administration, shell scripting, troubleshooting, networking, and kernel-related concepts. Your goal is to provide clear, concise, and accurate guidance suitable for a technical professional who is learning Linux. Always format command-line examples in proper code blocks using triple backticks, and include brief explanations when appropriate. If the user asks for a script, provide a complete example, and use code blocks for clarity."

# Read user input
echo -n "Ask your Linux assistant: "
read USER_INPUT

# Check if user input is empty
if [[ -z "$USER_INPUT" ]]; then
  echo "Error: No input provided. Please enter a question."
  exit 1
fi

# Make the API request
RESPONSE=$(curl -s -w "%{http_code}" https://api.openai.com/v1/chat/completions \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-4o-mini",
    "messages": [
      {"role": "system", "content": "'"$SYSTEM_PROMPT"'"},
      {"role": "user", "content": "'"$USER_INPUT"'"}
    ]
  }' --output response.json)

# Extract the HTTP status code
HTTP_STATUS=$(tail -n1 <<< "$RESPONSE")

# Check for network or API errors
if [[ "$HTTP_STATUS" -ne 200 ]]; then
  echo "Error: Failed to get a valid response from the API (HTTP Status: $HTTP_STATUS)."
  exit 1
fi

# Parse and display the response
ASSISTANT_RESPONSE=$(jq -r '.choices[0].message.content' response.json)
if [[ -z "$ASSISTANT_RESPONSE" || "$ASSISTANT_RESPONSE" == "null" ]]; then
  echo "Error: Received an empty or invalid response from the API."
  exit 1
fi

echo -e "\nLinux Assistant says:\n$ASSISTANT_RESPONSE"