# data-science-starter
Repo containing initial setup for a data science project

> The following guide was developed and tested in a Linux environment. Certain parts will differ on other operating systems (especially windows). I have tried to highlight where these differences may crop up. FOr anyone developing on windows - I highly recommend getting WSL 2 (windows subsystem for linux), and using it to run a linux environment on your windows machine. See here <https://docs.microsoft.com/en-us/windows/wsl/install-win10>

## Prerequisites
1. You have python 3.x installed in your environment (the repo is set up by default to work with python 3.8 or higher, and is tested with python 3.8)
2. You have the poetry python package management tool installed in your environment (for instructions on how to do this see <https://python-poetry.org/docs/#installation>)
3. You have gnu make installed, This can be installed in a linux environment via `sudo apt install make` . Installing it is a bit more of a faff on macOS or windows.
   
> Parts of the following guide will mention visual studio code. This isn't strictly a prerequisite, but it is great, and might make your life easier down the line

## Initial setup
1. Go to github, and create a new repo. One of the options on the following page should be to specify a template repo. SPecify the data-science-starter repo as your template (you don't need to include all branches). Fill in the rest of the info and create your repo
2. Clone your repo down to your local machine
