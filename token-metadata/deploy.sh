#!/usr/bin/env bash
set -euo pipefail

solana airdrop -k keypairs/owner.json 1000

cargo build-bpf

solana program deploy \
--program-id keypairs/deploy-key-token-metadata.json \
--keypair keypairs/owner.json \
target/deploy/mpl_token_metadata.so 
