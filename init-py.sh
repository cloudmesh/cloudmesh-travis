 docker run --name travis-debug -dit travisci/ci-python:packer-1490914243 /sbin/init
 
 docker exec -it travis-debug bash -l
 
 
 su - travis
 
