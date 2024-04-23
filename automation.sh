
# Task Description: Automate the process of dumping the contents of the download folder into a file with the current date and time.

# Step 1: Identify the repetitive task to be automated
# The repetitive task is manually dumping the contents of the download folder into a file, which needs to be automated.

# Step 2: Design and implement the automation script

# Define the path to the download folder

# Define the path to the destination file with the current date and time

# Step 3: Test the automation script
# To test the script, run it and check if the contents of the download folder are correctly dumped into the destination file with the current date and time.

# Step 4: Document the development process
# The script first defines the path to the download folder and the destination file, incorporating the current date and time into the filename.
# Then, it uses the ls command to list the contents of the download folder and redirects the output to the destination file.
# Finally, testing instructions should be provided to verify that the script functions as expected.

# Dump the contents of the download folder into the destination file
#current_datetime=$(date +"%Y-%m-%d")
#mkdir ~/Downloads/$current_datetime

#for f in /Downloads/*; do
 #   if [ ! -d f ]; then
  #  mv f /Downloads/$current_datetime/
   # fi
#done

#$currrent_datetime

current_datetime=$(date +"%Y-%m-%d")
mkdir -p ~/Downloads/$current_datetime

for f in ~/Downloads/*; do
    if [ ! -d "$f" ]; then
        mv "$f" ~/Downloads/$current_datetime/
    fi
done

echo "$current_datetime"
