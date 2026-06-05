echo "Sleeping for 30 seconds..." # manda a dormir al proceso
sleep 30 # & # lo manda al background

# Creates a file
echo "Creating the file test123"

touch test123
sleep 30 # & # lo manda al background

echo "deleting the file test123"
rm test123

