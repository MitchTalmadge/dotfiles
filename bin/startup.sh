#!/bin/sh
df_startup() {
  echo "> Running Dotfiles Startup"
  df_install_rust
  echo "> Dotfiles Startup Complete"
}

df_install_rust() {
  if [ -f ~/.cargo/bin/rustc ]; then 
    echo "Rust already installed."
    return
  fi

  echo "Rust is not installed. Installing..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
}

df_startup