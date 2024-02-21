#!/bin/sh
{
  df_startup() {
    echo "> Running Dotfiles Startup"
    df_install_rust
  }

  df_install_rust() {
    if [ -f ~/.cargo/bin/rustc ]; then 
      echo "Rust is installed."
      return
    fi

    echo "Rust is not installed. Installing..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  }

  df_startup
} >> /tmp/df-log 2>&1