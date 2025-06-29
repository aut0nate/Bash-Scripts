#!/bin/bash

# Check for API key
if [[ -z "$OPENROUTER_API_KEY" ]]; then
  echo "Please set your OPENROUTER_API_KEY environment variable first."
  exit 1
fi

# Prompt user for question
read -rp "Ask your Linux question: " user_input

# Define the system prompt
system_prompt="You are a Linux Command Line Assistant embedded in a terminal environment. Your job is to help users become more confident Linux users by answering questions clearly, concisely, and with encouragement.

• Limit your answers to no more than 3 short paragraphs.
• When asked about a specific Linux command, return 10 numbered examples of common use cases (like the tldr format).
• Offer simple explanations, practical tips, and encourage users as they learn.
• Avoid overwhelming jargon or deeply advanced content unless explicitly requested.
• Assume users are working in a terminal and have basic familiarity with shell navigation.

Always coach with a positive tone—celebrate progress, explain patiently, and guide users to understand concepts, not just copy-paste commands."

# Send API request
response=$(curl -s https://openrouter.ai/api/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -d "{
    \"model\": \"google/gemma-3-12b-it:free\",
    \"messages\": [
      {\"role\": \"system\", \"content\": \"$system_prompt\"},
      {\"role\": \"user\", \"content\": \"$user_input\"}
    ]
  }")

# Extract and display assistant reply
echo
echo "Linux Assistant says:"
echo
echo "$response" | jq -r '.choices[0].message.content'