# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/java
# Build directory: /home/pi/LEAN-Blimp/build/test/java
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Java::client_server "/usr/bin/python" "/home/pi/LEAN-Blimp/test/java/../run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/usr/bin/java" "-cp" "/home/pi/LEAN-Blimp/build/test/java/lcm-test.jar:/home/pi/LEAN-Blimp/build/test/types/lcm-test-types.jar:/home/pi/LEAN-Blimp/build/lcm-java/lcm.jar:/home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/hamcrest-core-1.3.jar:/home/pi/LEAN-Blimp/build/test/java/junit-4.11/junit-4.11.jar" "LcmTestClient")
subdirs("hamcrest-core-1.3")
subdirs("junit-4.11")
