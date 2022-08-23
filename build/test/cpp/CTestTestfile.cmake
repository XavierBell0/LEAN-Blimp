# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/cpp
# Build directory: /home/pi/LEAN-Blimp/build/test/cpp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CPP::memq_test "/home/pi/LEAN-Blimp/build/test/cpp/test-cpp-memq_test")
add_test(CPP::client_server "/usr/bin/python" "/home/pi/LEAN-Blimp/test/cpp/../run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/home/pi/LEAN-Blimp/build/test/cpp/test-cpp-client")
