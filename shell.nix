# shell.nix

with (import <nixpkgs> {});
mkShell {
    buildInputs = [
	pkgs.neovim
        pkgs.rustup
        pkgs.cargo
        pkgs.qemu
    ];

    # Install dependencies
    shellHook = ''
	rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-gnu
	rustup component add llvm-tools-preview
	cargo install bootimage
    '';
}

