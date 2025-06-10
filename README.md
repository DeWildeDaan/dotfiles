# dotfiles
Repository containing handy dotfiles and configfiles for setting up a new ubuntu env

# Installing Fonts
1. Go to the [Powerline Fonts](https://github.com/powerline/fonts) Github page.
2. Click on the green “Clone or download” button.
3. Click “Download ZIP”
4. Save the file fonts-master.zip to your Downloads folder or wherever you want to put it.
5. Extract fonts-master.zip.
6. Go into the fonts-master folder and the other fonts-master folder inside that. Rather than opening each folder and trying to install each font file ending with .ttf or .otf with the Windows Font Viewer, we will use a PowerShell batch script ( .ps1) called install.ps1. But a few things need to be done to make it work.
7. You need to open PowerShell as an Administrator;
Window Key + X then select “Windows PowerShell (Admin)”. Click “Yes” when the User Access Control (UAC) prompt shows up. Because PowerShell started with the Administrator user rather than the regular user (you), PowerShell starts up in `C:\WINDOWS\system32` instead of `C:\Users\${env:UserName}`, you will need to navigate to the fonts-master folder in the Downloads folder. You can do this by typing `cd ${HOME}\Downloads\fonts-master\fonts-master`.
8. Next we need to tell the Execution Policy to stand down. If you don’t do this, the script won’t be allowed to run. This isn’t the same as what Linux does where the script is given execution privileges. Rather it is the inverse. The Execution Policy is a blanket approach to preventing scripts from executing. We will need to set to Execution Policy to Bypass, so that we may run this script. If you entered something else, you can reset the execution policy to Restricted later. So type `Set-ExecutionPolicy Bypass`. You will likely be warned you are changing the Execution Policy, type y for Yes then enter.
9. Now we can run the `install.ps1` file! Type `.\install.ps1`. If you are Installing a newer version, you will likely be prompted for every font that is replaced. (I should look into that.) Otherwise new fonts will be installed.
10. Just to be sure, reset the Execution Policy back to the Default setting. `Set-ExecutionPolicy Default` then type y for Yes like before.
11. In the settings of your terminal application; select any font that includes `... for Powerline`