#!/usr/bin/env bash

taskDescription=$(~/.local/bin/task/get-task-description.sh)
echo "[task]" >> ~/.local/bin/task/tasks.toml
echo "description = $taskDescription" >> ~/.local/bin/task/tasks.toml
echo "" >> ~/.local/bin/task/tasks.toml
