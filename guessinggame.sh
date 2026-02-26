#!/bin/bash

# guessinggame.sh
# This script lets the user guess the number of files in the current directory

# Function to get number of files
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Function to handle user guesses
play_game() {
    local files=$1
    local guess

    echo "Welcome to the Guessing Game!"
    echo "Can you guess how many files are in the current directory?"

    while true; do
        read -p "Enter your guess: " guess

        # Validate input
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        # Compare guess to actual file count
        if [ "$guess" -lt "$files" ]; then
            echo "Too low. Try again!"
        elif [ "$guess" -gt "$files" ]; then
            echo "Too high. Try again!"
        else
            echo "Congratulations! You guessed correctly: $files files."
            break
        fi
    done
}

# Main program
file_count=$(get_file_count)
play_game "$file_count"
