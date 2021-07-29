#!/bin/bash
ngrok http 8081 &
python parlai/chat_service/services/browser_chat/run.py --config-path parlai/chat_service/tasks/chatbot/config.yml --port 10002 &
sleep 6
python parlai/chat_service/services/browser_chat/client.py --port 10002 --host localhost --serving-port 8081
