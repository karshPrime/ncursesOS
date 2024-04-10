session_root "~/Projects/SerenityOS"

if initialize_session "serenity"; then
  new_window "code"
  run_cmd "v -O2 ./src/main.rs ./src/vga_buffer.rs"

  new_window "shell"
  run_cmd "nix-shell --run zsh"
  run_cmd "alias build='cargo bootimage'"
  run_cmd "alias run='qemu-system-x86_64 -drive format=raw,file=target/x86_64-serinity_os/debug/bootimage-serenity_os.bin'"
  run_cmd "clear"

  split_h
  run_cmd "giti"
  run_cmd "c todo"
  select_pane 1
fi

finalize_and_go_to_session

