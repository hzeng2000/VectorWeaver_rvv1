rm -rf *
cmake -DCMAKE_SYSTEM_NAME=Linux -DCMAKE_SYSTEM_PROCESSOR=riscv64 -DCMAKE_C_COMPILER=riscv64-unknown-linux-gnu-gcc -DCMAKE_CXX_COMPILER=riscv64-unknown-linux-gnu-g++ -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DCMAKE_C_FLAGS="-march=rv64gc" -DCMAKE_CXX_FLAGS="-march=rv64gc" -DLLAMA_CURL=OFF -DGGML_RVV=False -D__RVV_ASM_XTHEAD=False ..
make -j96
