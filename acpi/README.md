# Use iMac powerbutton to toggle TDM

Since the powerbutton is the only physical button on the iMac, the following instructions allow using the powerbutton to toggle TDM (and to switch off the iMac as well, of course). No more keyboard/mouse are needed and the iMac can be used as an external monitor.

How it works:
- After boot, iMac starts in TDM mode
- One press of the power button toggles TDM mode
- Two presses of the power button (within 1 second) switches off the iMac

# How to use

Install by following the instructions in the main README file

Upon startup, switch TDM on:
```
cp rc.local /etc/rc.local
```

Add acpi powerbutton event and script to handle event:
```
cp powerbutton /etc/acpi/events
cp powerbutton.sh /etc/acpi
```

Restart acpid
```
systemctl restart acpid
```

_Note_: This was tested on a end-2009 27" iMac running Ubuntu 20.10
