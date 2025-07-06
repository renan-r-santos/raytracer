default: lint test

lint: fmt-check clippy

clippy:
    cargo clippy --locked --all-targets --all-features -- -D warnings

fmt-check:
    cargo fmt --all --check

format:
    cargo fmt --all

test:
    cargo nextest run
