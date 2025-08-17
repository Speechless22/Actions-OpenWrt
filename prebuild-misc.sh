fix_rust_compile_error() {
    if [ -f "$BUILD_ROOT/feeds/packages/lang/rust/Makefile" ]; then
        sed -i 's/download-ci-llvm=true/download-ci-llvm=false/g' "$BUILD_ROOT/feeds/packages/lang/rust/Makefile"
    fi
}

fix_rust_compile_error