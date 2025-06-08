#!/bin/bash

for i in {1..3}; do
	samba-tool group add group$i;
done

for i in {1..10}; do
	samba-tool user add user$i P@ssw0rd;
	samba-tool group addmembers group1 user$i;
done

for i in {11..20}; do
	samba-tool user add user$i P@ssw0rd;
	samba-tool group addmembers group2 user$i;
done

for i in {21..30}; do
        samba-tool user add user$i P@ssw0rd;
        samba-tool group addmembers group3 user$i;
done


