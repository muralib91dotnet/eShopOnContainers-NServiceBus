echo --------------------------
echo 💥 Payment.API 💥
echo --------------------------
ls --all
echo --------------------------
# dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet Identity.API.dll
# dockerize -wait tcp://sql.data:1433 -wait http://sql.data -timeout 50s -wait-retry-interval 20s tail -f /dev/null
sleep 100
dockerize -wait tcp://sql.data:1433 -wait http://rabbitmq:15672 -timeout 60s -wait-retry-interval 90s tail -f /dev/null
echo --------------------------