PATH="/home/aka/android/toolchains/aosp-clang/bin:$PATH"
make O=out ARCH=arm64 msm8953-perf_defconfig
make -j$(nproc --all) O=out \
    ARCH=arm64 \
    CC=clang \
    CLANG_TRIPLE=aarch64-linux-gnu- \
    CROSS_COMPILE=aarch64-linux-gnu- \
    CROSS_COMPILE_ARM32=arm-linux-androideabi-
	
