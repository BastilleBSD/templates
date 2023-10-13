echo "starting test script"
cd ../../
pwd
bastille template testrun www/nginx
echo "template applied"
bastille cmd testrun service status nginx
bastille rdr testrun tcp 80 80
bastille rdr testrun list
ifconfig
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)
echo "tested response"
echo "response is:" $response


# Define the name of the service you want to check
service_name="nginx"

# Use the `service` command to check if the service is running
if service $service_name status | grep -q "is running"; then
  echo "$service_name is running."
else
  echo "$service_name is not running."
fi
