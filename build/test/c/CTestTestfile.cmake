# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/c
# Build directory: /home/pi/LEAN-Blimp/build/test/c
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(C::memq_test "/home/pi/LEAN-Blimp/build/test/c/test-c-memq_test")
add_test(C::eventlog_test "/home/pi/LEAN-Blimp/build/test/c/test-c-eventlog_test")
add_test(C::client_server "/usr/bin/python" "/home/pi/LEAN-Blimp/test/c/../run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/home/pi/LEAN-Blimp/build/test/c/test-c-client")
