# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/python
# Build directory: /home/pi/LEAN-Blimp/build/test/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Python::bool_test "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/bool_test.py")
add_test(Python::byte_array_test "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/byte_array_test.py")
add_test(Python::lcm_file_test "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/lcm_file_test.py")
add_test(Python::lcm_memq_test "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/lcm_memq_test.py")
add_test(Python::lcm_thread_test "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/lcm_thread_test.py")
add_test(Python::client_server "/usr/bin/cmake" "-E" "env" "PYTHONPATH=/home/pi/LEAN-Blimp/build/test/types:/home/pi/LEAN-Blimp/build/lib/python2.7/dist-packages" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/python/client.py")
