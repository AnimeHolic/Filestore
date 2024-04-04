if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VJBots/Kidungamani-Files /Kidungamani-Files
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Kidungamani-Files
fi
cd /Kidungamani-Files
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
