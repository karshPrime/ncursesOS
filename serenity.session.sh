session_root "~/Projects/SerenityOS"

if initialize_session "serenity"; then
  new_window "code"
  run_cmd "v -O2 ./src/main.rs ./src/vga_buffer.rs"

  new_window "shell"
  split_h
  run_cmd "giti"
  select_pane 1

  select_window 1

fi

finalize_and_go_to_session

