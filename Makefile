MAKEFLAGS += --silent

APP_DIR=apps
LIB_DIR=libs

NAME=$$name

help:
	echo "[Rust Application Tasks]"
	echo "- make new.app name=<NAME>"
	echo "- make new.lib name=<NAME>"
	echo "- make test name=<NAME>"
	echo "- make clean"
	echo "- make build"
	echo "- make release name=<NAME>"

new.app:
	cargo new "${APP_DIR}/${NAME}"  --vcs git

new.lib:
	cargo new "${LIB_DIR}/${NAME}" --lib --vcs git

test:
	cd "${NAME}" && cargo test

clean:
	cargo clean

build:
	cargo build --workspace

release:
	cd "${NAME}" && cargo build --release

