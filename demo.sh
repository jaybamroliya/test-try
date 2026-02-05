echo "Starting worker agent..."
python agent/worker_server.py &

echo "Starting policy copilot..."
python policy/policy_server.py &

sleep 2

echo "Running demo task..."
python cli/policycopilot.py run "Summarize customers and email results"