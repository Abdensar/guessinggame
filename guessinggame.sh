get_file_count() {
    echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
user_guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory? Make a guess:"

while [[ $user_guess -ne $file_count ]]; do
    read -p "Enter your guess: " user_guess
    if [[ $user_guess -lt $file_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $file_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files!"
    fi
done
