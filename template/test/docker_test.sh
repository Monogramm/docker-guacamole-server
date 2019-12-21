#!/bin/sh

set -e

echo "Waiting to ensure everything is fully ready for the tests..."
sleep 60

echo "Checking main containers are reachable..."
if ! sudo ping -c 10 -q postgres ; then
    echo 'Apache Guacamole Server Database container is not responding!'
    # TODO Display logs to help bug fixing
    #echo 'Check the following logs for details:'
    #tail -n 100 logs/*.log
    exit 2
fi

if ! sudo ping -c 10 -q guacd ; then
    echo 'Apache Guacamole Server container is not responding!'
    # TODO Display logs to help bug fixing
    #echo 'Check the following logs for details:'
    #tail -n 100 logs/*.log
    exit 4
fi

if ! sudo ping -c 10 -q guacamole ; then
    echo 'Apache Guacamole Frontend container is not responding!'
    # TODO Display logs to help bug fixing
    #echo 'Check the following logs for details:'
    #tail -n 100 logs/*.log
    exit 8
fi

# XXX Add your own tests
# https://docs.docker.com/docker-hub/builds/automated-testing/
#echo "Executing Apache Guacamole Server app tests..."
## TODO Test result of tests

# Success
echo 'Docker tests successful'
exit 0
