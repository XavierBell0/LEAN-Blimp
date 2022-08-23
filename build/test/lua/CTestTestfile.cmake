# CMake generated Testfile for 
# Source directory: /home/pi/LEAN-Blimp/test/lua
# Build directory: /home/pi/LEAN-Blimp/build/test/lua
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Lua::client_server "/usr/bin/cmake" "-E" "env" "LUA_PATH=/home/pi/LEAN-Blimp/build/test/types/?.lua;/home/pi/LEAN-Blimp/build/test/types/?/init.lua" "LUA_CPATH=/home/pi/LEAN-Blimp/build/lcm-lua/lcm.so" "/usr/bin/python" "/home/pi/LEAN-Blimp/test/lua/../run_client_server_test.py" "/home/pi/LEAN-Blimp/build/test/c/test-c-server" "/usr/bin/lua" "/home/pi/LEAN-Blimp/test/lua/client.lua")
