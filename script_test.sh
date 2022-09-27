function value(){

echo  -e "Enter the value : \c  "
}

function first_page(){
echo "*******************************************************************************************"
echo "[1] Edit a connection"
echo "[2] Activate a connection"
echo "[3] set hostname"
echo " "
value
read value1
}

function edit_a_connection(){

echo "*******************************************************************************************"
	echo "[1] Add"
	echo "[2] Edit"
	echo "[3] Delete"
	echo " "
	value
	read value2
}
function add_connection(){
	
echo "*******************************************************************************************"
		echo "select connection type : "
		echo "[1] Ethernet"
		echo "[2] wifi"
	        echo " "
		value
		read value3
	}

function ethernet(){
	
	function configuration(){
			echo " Select configuration : "
			echo "[1] Automatic"
		    echo "[2] Manual"
		    echo " "
		    value
		    read value4
	     					}
	function command1(){
		nmcli c add conname $con_name type $value3 ifname $dev_name
	}
	function command2(){
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
		     if [ $value4 == 1 ]
		     then
			     command1
			 fi
		     if [ $value4 == 2 ]
		     then
			     command1
			     command2
		     else
			     configuration
		      fi

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



