 set -e ; verilator -CFLAGS -fPIC -CFLAGS -m64 -CFLAGS -shared -CFLAGS -Wno-attributes -LDFLAGS -fPIC -LDFLAGS -m64 -LDFLAGS -shared -LDFLAGS -Wno-attributes -CFLAGS -I/usr/local/jdk1.8/include -CFLAGS -I/usr/local/jdk1.8/include/linux -CFLAGS -fvisibility=hidden -LDFLAGS -fvisibility=hidden -CFLAGS -std=c++11 -LDFLAGS -std=c++11 --output-split 5000 --output-split-cfuncs 500 --output-split-ctrace 500 -Wno-WIDTH -Wno-UNOPTFLAT -Wno-CMPCONST -Wno-UNSIGNED --x-assign unique --trace-depth 0 -O3 -CFLAGS -O3 -CFLAGS -DTRACE --trace  --Mdir verilator --top-module booth4  -cc "/mnt/mydata/spinal_works/cardiff-b0/tmp/job_1/booth4.v" --exe verilator/Vbooth4__spinalWrapper.cpp 