BASE_DIR=$(dirname "$0")

# [rust installation](https://www.rust-lang.org/tools/install)
curl https://sh.rustup.rs -sSf | sh

bash $BASE_DIR/pkg.sh