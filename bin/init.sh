#!/bin/sh
# First script run on both login and non-login shells
# May be run multiple times, so be careful with side effects
DF_LOG_FILE=~/.dotfiles/logs/default.log
DF_PIPE=/tmp/df-log
DF_PIPE_PID=/tmp/df-log-pid

df_init() {
  df_configure_logs
}

df_configure_logs() {
  # Check if logger already running
  if [ -f $DF_PIPE_PID ]; then
    # Check if PID is running
    if ! ps -p $(cat $DF_PIPE_PID) > /dev/null; then
      # Clean up old pipe
      rm $DF_PIPE
      rm $DF_PIPE_PID
    else
      # Logger is already running
      return
    fi
  fi

  # Create a named pipe
  mkfifo $DF_PIPE
  # Create a background job that reads from the named pipe and prepends timestamps
  {
    while true; do
      (awk '{ print strftime("%Y-%m-%d %H:%M:%S"), $0; fflush(); }' < $DF_PIPE >> $DF_LOG_FILE)
    done
  } &
  # Write awk PID to a file
  echo $! > $DF_PIPE_PID
}

df_init