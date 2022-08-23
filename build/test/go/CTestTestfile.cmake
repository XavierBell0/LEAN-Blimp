# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/go
# Build directory: /home/pi/LEAN-Blimp/build/test/go
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Go::client_server "/usr/bin/cmake" "-E" "env" "GOPATH=/home/pi/LEAN-Blimp/build/test/types/go:" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/go/../run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/usr/bin/go" "test" "/home/pi/LEAN-Blimp/test/go/client_test.go")
add_test(Go::unit_test "/usr/bin/go" "test" "-v" "./...")
set_tests_properties(Go::unit_test PROPERTIES  WORKING_DIRECTORY "/home/pi/LEAN-Blimp/test/go/../../lcm-go/")
