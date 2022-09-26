echo "[1] Edit a connection"
echo "[2] Activate a connection"
echo "[3] set hostname"
echo " " 
echo  -e "Enter the value : \c " 
read value1

if [ $value1 == 1 ]
then
	echo "[1] Add"
	echo "[2] Edit"
	echo "[3] Delete"
        echo  -e "Enter the value : \c " 
	read value2
	if [ $value2 == 1 ]
	then
		echo "select type"
		echo "[1] Ethernet"
		echo "[2] wifi"
                echo  -e "Enter the value : \c " 
	        read value3
		
	        if [ $value3 == 1 ]
	        then
		     echo "Conn  name :"
		     echo "device name : "
		     echo "ip add :"
		fi
                    
	             
	fi

fi



