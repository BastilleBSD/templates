echo "starting test script"
cd ../../
pwd
bastille template testrun www/nginx
echo "template applied"
bastille cmd testrun service nginx status
bastille rdr testrun tcp 80 80
bastille rdr testrun list
ifconfig
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)
echo "tested response"
echo "response is:" $response

service_name="xnginx"
jail_name="testrun"

service_status=$(jexec testrun service $service_name status)

# Check the service status and provide appropriate output
if echo "$service_status" | grep -q "is running"; then
  echo "$service_name is running in jail $jail_name."
else
  echo "$service_name is not running in jail $jail_name."
  exit 1
fi



