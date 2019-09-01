# dotfiles

Just like every other programmer who has ever wasted their entire weekend creating dotfiles, I have created a dotfile setup fit for royalty. If you were to look up "perfect dotfiles" in the dictionary, you would find nothing because that's two words. If, however, you looked it up in some mythical programmer dictionary, you might find a link to this repository. Truly, these dotfiles were born in the heavens, hand-crafted from the tears of angels, and brought to you on this earth through my repository. The world is complete now. You're welcome.

In all honesty though I just wanted something that would put me into my favorite shell (zsh), and if not that, my second favorite (bash), and if not that, ...

Yeah, I could just ask the sysadmin to change my default shell, but who has the time or social energy for that? I want to be able to hop onto any system, git clone this sucker, and be on my way in zsh. So that's what I made.

This setup contains configurations for all the shells I expect myself to encounter, complete with migration support so that when I sign into an existing server, I can update everything to my newest mandatory standards. Never again will I have to ctrl+b inside tmux. 

Plus, I have inheritance. Wanna add an alias for all bourne shells? Can do. Just wanna change a setting in zsh? Can do that too. 

And finally, since there will be times when I need custom configs on some servers, I have the ability to amend any config file without touching the originals. No git conflicts here!

TL;DR: My dotfiles are better than yours. Did that make you angery?

---

## Folder Structure

### bin
Contains scripts for installing, updating, migrating, etc.
Pretty boring, honestly.

### shells
Config files for each shell individually, all bourne shells, and all shells in general. Also contains an amend directory for making amendments to the originals so you can use a custom-config on certain servers.

### tools
For the tools, like tmux, vim, etc.
