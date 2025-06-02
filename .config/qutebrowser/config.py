import catppuccin

config.load_autoconfig(False)
config.source('keymaps.py')

# darkmode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = "never"
catppuccin.setup(c, 'mocha', False)

# fileselect
c.fileselect.handler = "external"
c.fileselect.folder.command = ["st", "-e", "yazi", "--chooser-file={}"]
c.fileselect.single_file.command = ["st", "-e", "yazi", "--chooser-file={}"]
c.fileselect.multiple_files.command = ["st", "-e", "yazi", "--chooser-file={}"]

c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0"
c.content.autoplay = False

c.url.default_page = "https://bing.com"
c.url.start_pages = "https://github.com"
c.url.searchengines = {"DEFAULT": "https://bing.com/search?q={}"}
