#$RGName = "Accel-Smart-SpacesRG"
#$location = "East US 2"
#$IoTHubName = "iothubdrheiak37umsq"
#function deploydevicestoiothub($RGName,$location,$IoTHubName)
function deploydevicestoiothub()
{
$RGName = "Accel-Smart-SpacesRG"
$location = "East US 2"
$IoTHubName = "accelIoTHuba6pyfofrme6d6"


   Write-Output "Passed Parms = $RGName $location $IoTHubName"
   $newDeviceID = "smartspace-iotdevice" # New DeviceID

   Add-AzIotHubDevice -ResourceGroupName $RGName -IotHubName $IoTHubName -DeviceId $newDeviceID

<PS> Add-AzIotHubDevice -ResourceGroupName 'Accel-Smart-SpacesRG' -IotHubName 'accelIoTHuba6pyfofrme6d6' -DeviceId 'smartspace-iotdevice'


    #---
    # Set Digital Twin Properties:

az login --identity
&& az config set extension.use_dynamic_install=yes_without_prompt 
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}'
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}' 
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/SETPOINT\", \"value\": \"67\"}'
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/CURRTEMP\", \"value\": \"67\"}'
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/LASTUPDT\", \"value\": \"2022-04-15 16:52:16.5\"}'
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/CHILL_RATE\", \"value\": \"-1.5\"}'
&& az iot hub digital-twin update --hub-name 'accelIoTHuba6pyfofrme6d6' --device-id 'smartspace-iotdevice' --json-patch '{\"op\":\"add\", \"path\":\"/RUN_STATE\", \"value\": \"Stopped\"}'",



    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}' 
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/SETPOINT\", \"value\": \"67\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CURRTEMP\", \"value\": \"67\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/LASTUPDT\", \"value\": \"2022-04-15 16:52:16.5\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CHILL_RATE\", \"value\": \"-1.5\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/RUN_STATE\", \"value\": \"Stopped\"}'


az iot hub device-twin update -n 'accelIoTHuba6pyfofrme6d6' -d smartspace-iotdevice --set tags='{\"location\":{\"region\":\"US\"}}'




    #---
    $newDeviceID = "smartspace-hvac01-iotdevice" # New DeviceID
    Add-AzIotHubDevice -ResourceGroupName $RGName -IotHubName $IoTHubName -DeviceId $newDeviceID
    #---
    # Set Digital Twin Properties:
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}' 
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/LASTUPDT\", \"value\": \"2022-04-15 16:52:16.5\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CHILL_RATE\", \"value\": \"-2.0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CURRTEMP\", \"value\": \"63\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER\", \"value\": \"0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER_RATE\", \"value\": \"3500\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/RUN_STATE\", \"value\": \"Running\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_SETPOINT\", \"value\": \"45\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_ENTER\", \"value\": \"66\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_LEAVE\", \"value\": \"63\"}'

    #---
    $newDeviceID = "smartspace-hvac02-iotdevice" # New DeviceID
    Add-AzIotHubDevice -ResourceGroupName $RGName -IotHubName $IoTHubName -DeviceId $newDeviceID
    #---
    # Set Digital Twin Properties:
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}' 
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/LASTUPDT\", \"value\": \"2022-04-15 16:52:16.5\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CHILL_RATE\", \"value\": \"-2.0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CURRTEMP\", \"value\": \"63\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER\", \"value\": \"0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER_RATE\", \"value\": \"3500\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/RUN_STATE\", \"value\": \"Running\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_SETPOINT\", \"value\": \"45\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_ENTER\", \"value\": \"66\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_LEAVE\", \"value\": \"63\"}'

    #---
    $newDeviceID = "smartspace-hvac03-iotdevice" # New DeviceID
    Add-AzIotHubDevice -ResourceGroupName $RGName -IotHubName $IoTHubName -DeviceId $newDeviceID
    #---
    # Set Digital Twin Properties:
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/TEMP_UNITS\", \"value\": \"F\"}' 
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/LASTUPDT\", \"value\": \"2022-04-15 16:52:16.5\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CHILL_RATE\", \"value\": \"-2.0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/CURRTEMP\", \"value\": \"63\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER\", \"value\": \"0\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/REALPOWER_RATE\", \"value\": \"3500\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/RUN_STATE\", \"value\": \"Running\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_SETPOINT\", \"value\": \"45\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_ENTER\", \"value\": \"66\"}'
    az iot hub digital-twin update --hub-name $IoTHubName --device-id $newDeviceID --json-patch '{\"op\":\"add\", \"path\":\"/H2O_TEMP_LEAVE\", \"value\": \"63\"}'
    }