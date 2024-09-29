# Hyperv-client-tools

This will install hyper-v desktop tools on a linux vm - tested on ubuntu24. Does not work on mint 22

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

Check the status of enhanced session mode

    Get-VMHost | select Name, EnableEnhancedSessionMode

Activate the global mode with

    Set-VMHost -EnableEnhancedSessionMode $true

to roll back

    Set-VM "(YOUR VM NAME HERE)" -EnhancedSessionTransportType VMBus

# Usage

boot the machine and you should get a requester box asking what resolution you want to run in during startup. exit the window to boot in normal (not enhanced) mode

if you select a resolution enhanced mode will operate in that resolution for the session. you can break out of enhanced mode. 

'use all my displays' is an option for a nice very full screen session. 
