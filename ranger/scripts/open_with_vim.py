import os
from ranger.api.commands import Command

class open_with_sudo_vim(Command):
    """
    :open_with_sudo_vim
    Opens the selected file in a new kitty terminal window with sudo vim.
    """
    def execute(self):
        if self.arg(1):
            target = self.rest(1)
        else:
            target = self.fm.thisfile.path

        # Check if the target is a file
        if not os.path.isfile(target):
            self.fm.notify(f"{target} is not a valid file", bad=True)
            return

        # Open a new kitty terminal and execute sudo vim
        os.system(f'kitty --hold sh -c "sudo vim {target}"')

