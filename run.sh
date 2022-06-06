set -ex

#export AR=$HOME/code/wasi-sdk-16.0/bin/llvm-ar
#export CC=$HOME/code/wasi-sdk-16.0/bin/clang

export RUSTFLAGS="-Clinker-plugin-lto -C target-feature=+mutable-globals"
export CFLAGS=-flto=thin

cargo build --release --target wasm32-wasi
wasm-tools print ./target/wasm32-wasi/release/app.wasm
