#!/bin/bash

USERNAME='vassalli'
echo
echo
echo Would you like to import or export\?
OPTIONS='Import Export'

select CHOICE in $OPTIONS
do
	case $CHOICE in
		'Import')
			echo Enter file path+desired file to import: 
			read ORIGIN
			echo `scp ${USERNAME}@rftpexp.rhic.bnl.gov:${ORIGIN} .`
			echo
			break
			;;

		'Export')
			echo Enter file path+desired file to export:
			read ORIGIN
			echo Enter path to destination:
			read DESTINATION
			echo `scp ${ORIGIN} ${USERNAME}@rftpexp.rhic.bnl.gov:${DESTINATION}`
			echo
			break
			;;
		*)
			echo Or neither I guess...
			echo
			break
			;;
	esac
done

