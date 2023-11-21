#!/bin/bash

# Steganography using Steghide

echo "Welcome to Steghide - Image Steganography Tool"
echo "----------------------------------------------"

# Extracting the secret file from the image
read -p "Enter the name of the image file you need to extract(with extension): " image_file
read -p "Enter a passphrase: " passphrase
echo "Extracting the secret file from the image..."
steghide extract -sf "$image_file" -p "$passphrase"

if [ $? -eq 0 ]; then
    echo "Secret file extracted successfully!"
else
    echo "Error extracting the secret file."
    exit 1
fi

echo "Process completed."
