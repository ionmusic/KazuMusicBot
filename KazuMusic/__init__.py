from KazuMusic.core.bot import KazuMusic
from KazuMusic.core.dir import dirr
from KazuMusic.core.git import git
from KazuMusic.core.userbot import Userbot
from KazuMusic.misc import dbb, heroku, sudo

from .logging import LOGGER


dirr()

git()

dbb()

heroku()

sudo()

# Clients
app = KazuMusic()
userbot = Userbot()


from .platforms import *

YouTube = YouTubeAPI()
Carbon = CarbonAPI()
Spotify = SpotifyAPI()
Apple = AppleAPI()
Resso = RessoAPI()
SoundCloud = SoundAPI()
Telegram = TeleAPI()
