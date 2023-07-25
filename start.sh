if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Joelkb/DQ-the-file-donor.git /tovinobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tovinobot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting tovinobot"
python3 bot.py
