#!/bin/bash
# comment : ini buat input nama
nama=${1:-"default"}
umur=${2:-"unknown"}
#read -p Input nama:  nama
echo "halo $nama"
#read -p input umur: umur
if [ $umur -gt 18 ] 
then
echo "dewasa"
else
echo "masih dibawah 18 kamu"
fi


