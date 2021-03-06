stow: nixpkgs 


emacs:
	if test ! -d $(HOME)/.config/emacs; then mkdir $(HOME)/.config/emacs; fi
	stow -Sv -d config/ -t $(HOME)/.config/emacs emacs

nixpkgs:
	if test ! -d $(HOME)/.nixpkgs; then mkdir $(HOME)/.nixpkgs; fi
	stow -Sv -d config/ -t $(HOME)/.nixpkgs nixpkgs

.PHONY: stow nixpkgs
