# Hyperv-client-tools

This will install hyper-v desktop tools on a linux vm on the tested distros. It pre-emtively installs all the latest updates, you may wish to disable that part (first section of the script. 

I did not write this script, I simply found it in a variety of places and mirrored it and wrote this readme. Thanks to the original author and testers.

Tested and working on:

- Ubuntu 24

Tested NOT working on:

- Mint 22

Future testing: 

- Kali v??.?
- Debian v12.?

# Ubuntu 24+

run the script with

    sudo sh ./hyperv-setup-ubuntu24.sh

It may prompt you to reboot and run again, do that if it asks. 

Shut down the machine and enable the enhanced mode on the host

# Kali

run 

    kali-tweaks

select Virtualization, then Configure the system for Hyper-V enhanced session mode

Shut down the machine and enable the enhanced mode on the host

# Enabling the enhanced mode on the host

    Set-VM -VMName "Ubuntu Hyper-V" -EnhancedSessionTransportType HvSocket

Check the status of enhanced session global mode: 

    Get-VMHost | select Name, EnableEnhancedSessionMode

Activate the global mode: 

    Set-VMHost -EnableEnhancedSessionMode $true

To roll back:

    Set-VM "(YOUR VM NAME HERE)" -EnhancedSessionTransportType VMBus

# Usage

Boot the machine and you should get a requester box asking what resolution you want to run in during startup. Exit the window to boot in normal (not enhanced) mode. If you select a resolution enhanced mode will operate in that resolution for the session. You can break out of enhanced mode with the enhanced mode ribbon button (doesn't always result in a useable terminal) or by rebooting

'Use all my displays' is an option for a nice very full screen session. 

