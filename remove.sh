#!/bin/bash


figlet E X P R E S S
echo -e '\e[31m[INFO] Removing all the dependencies...'

progress_bar() {
    local duration="$1"
    local width="${2:-50}"  # Default width: 50 characters
    local progress_char="${3:-█}"  # Default progress character: █
    local empty_char="${4:--}"  # Default empty character: -

    local percentage
    local progress_count

    for ((i = 0; i <= duration; i++)); do
        # Calculate progress
        percentage=$((i * 100 / duration))

        # Calculate number of progress characters
        progress_count=$((i * width / (duration)))

        # Print the progress bar
        printf "["
        for ((j = 0; j < progress_count; j++)); do
            printf "%s" "$progress_char"
        done
        for ((j = 0; j < (width - progress_count); j++)); do
            printf "%s" "$empty_char"
        done
        printf "] %d%%\r" "$percentage"

        # Sleep for a short duration to simulate progress
        sleep 1
    done

    # Move to a new line after the progress bar is complete
    printf "\n"
}

# Example usage: Run the progress_bar function for 10 seconds
#echo "Progress bar with default settings (10 seconds, width: 50)"
echo -e '\e[31m'
progress_bar 2
echo -e '\e[0m'

sudo rm -rf /bin/express

echo -e '\e[31mDependencies have been successfully removed!!\e[0m'
echo -e '\e[32mWe hope to see you again. Roger!!\e[0m'
