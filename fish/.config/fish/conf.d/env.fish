fish_add_path /sbin
fish_add_path ~/.nix-profile/bin
fish_add_path ~/.local/bin
fish_add_path ~/bin
set -g -x NIX_PROFILES "/nix/var/nix/profiles/default $HOME/.nix-profile"
set -g -x NIX_SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
