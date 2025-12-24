#!/bin/bash
# post_gen_project.sh: The 'Amal' (Work) of flattening the directory

# 1. Move all files (including hidden ones) up to the current working directory
# We use 'Sabr' (Probing) to ensure we don't move the script itself into a loop
find . -maxdepth 1 -mindepth 1 -not -name "." -exec mv {} .. \;

# 2. Clean up the temporary directory created by Cookiecutter
cd ..
rmdir "{{ cookiecutter.service_name }}"

echo "Deployment complete. Files have been moved to the current directory."