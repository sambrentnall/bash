#!/bin/bash

Environment=$1

if [[ $Environment =~ ^(dev|svt|uat|prod)$ ]]; then

    case $Environment in
    
    dev)    Env=Dev     Grp=Dev ;;
    svt)    Env=Svt     Grp=Svt ;;
    uat)    Env=UAT     Grp=Uat ;;
    prod)   Env=Prod    Grp=Prod ;;
    
    esac

    echo $Env
    echo $Grp

    mkdir -p /mnt/middleware"$Env"/4pl/{IIBtoDP,DPtoIIB,WincantonToThales,ThalesToWincanton}
    chgrp -R middleware"$Grp" /mnt/middleware"$Env"
    chmod -R 775 /mnt/middleware"$Env"/4pl
    
else echo "$Environment is not valid, specify either dev, svt, uat or prod"
fi