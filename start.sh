if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone github.com/TeamInfinityGo/InfinityMovieBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /InfinityMovieBot 
fi
cd /InfinityMovieBot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
