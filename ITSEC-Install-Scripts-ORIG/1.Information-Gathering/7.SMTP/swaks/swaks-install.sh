#!/bin/bash

#1i
. /opt/ownsec/ITSEC-Install-Scripts-ORIG/001.functions/all-scripts.sh

GITREPO=https://github.com/roman-rybalko/swaks.git
BRANCH=master
GITREPOROOT=/opt/ITSEC/1.Information-Gathering/7.SMTP/swaks/roman-rybalko/swaks
GITCLONEDIR=/opt/ITSEC/1.Information-Gathering/7.SMTP/swaks/roman-rybalko
EXECUTEABLE1=swaks
EXECUTEABLE2=swaks
#ph1b
DSKTPFLS=/opt/ownsec/ITSEC-Install-Scripts-ORIG/1.Information-Gathering/7.SMTP/swaks
DSKTPFLSDEST=/home/$USER/.local/share/applications/1.Information-Gathering/7.SMTP/swaks
DSKTPFL=swaks.desktop
APTLSTDIR=/opt/ownsec/ITSEC-Install-Scripts-ORIG/0.Initial/lst/apt
#ph1a

echo "${bold}
 ______        ___    _  ______  
/ ___\ \      / / \  | |/ / ___| 
\___ \\ \ /\ / / _ \ | ' /\___ \ 
 ___) |\ V  V / ___ \| . \ ___) |
|____/  \_/\_/_/   \_\_|\_\____/ 
            
INSTALL
${normal}"

#plh11
GITCLONEFUNC

### DEPS:
# no deps noted, feel free to add ...
### DEPS END

GITSBMDLINIT

CHMODXEX1
SYMLINKEX2TO1
#333d
CPDESKTFL