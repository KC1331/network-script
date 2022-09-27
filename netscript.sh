value(){

echo  -e "Enter the value : \c  "
}
first_page(){
echo "*******************************************************************************************"
echo "[1] Edit a connection"
echo "[2] Activate a connection"
echo "[3] set hostname"
echo " "
value
read value1
}

edit_a_connection(){

echo "*******************************************************************************************"
	echo "[1] Add"
	echo "[2] Edit"
	echo "[3] Delete"
	echo " "
	value
	read value2
}
add_connection(){
	
echo "*******************************************************************************************"
		echo "select connection type : "
		echo "[1] Ethernet"
		echo "[2] wifi"
	        echo " "
		value
		read value3
	}

ethernet(){

<<comment
	configuration{

		     echo " Select configuration :"
		     echo "[1] Automatic"
		     echo "[2] Manual"
		     echo " "
		     value
		     read value4
	     }
	command1(){
		nmcli c add conname $con_name type $value3 ifname $dev_name
	}
	command2(){
		nmcli c mod $con_name ipv4.addresses $ipadd;
		nmcli c mod $con_name ipv4.gateway $gate;
		nmcli c mod $con_name ipv4.dns $dns;
		nmcli c mod $con_name ipv4.method manual;
	}

		     echo -e "Connection name : \c"
		     read con_name
		     echo -e "device name : \c"
		     read dev_name
		     configuration
		     if [ $value == 1 ]
		     then
			     command1
		     if [ $value4 == 2 ]
		     then
			     command1
			     command2
		     else
			     configuration
		      fi
comment
	      }
first_page
if [ $value1 == 1 ]
then
	edit_a_connection
	if [ $value2 == 1 ]
	then
		add_connection
	        if [ $value3 == 1 ]
	        then
		    ethernet
		fi
                    
	             
	fi

fi



