#!/bin/bash


RAM() {
	  echo "Total: "  
	  free -g | awk 'NR > 1 { print "["$1,  $2 "]"}'
	  echo "Free: "         
	  free -g | awk 'NR > 1 { print "["$1 ,  $4 "]"}'
}


CPU() {
	  lscpu | grep Model
	  lscpu | grep core
	  lscpu | grep Core
	  lscpu | grep MHz
}


GPU() {
	  glxinfo | grep Device
	  glxinfo | grep Video
}



while [ "$1" != "" ]; do
	  case $1 in
		  ram) RAM
		  ;;
		  gpu) GPU
		  ;;
		  cpu) CPU
		  ;;
	  esac
	  exit 1
done                                                    
info
