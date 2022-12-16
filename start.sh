if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Localusersbot/DQ-the-file-donor.git /DQ-The-File-Donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /koyeb
fi
cd /koyeb
pip3 install -U -r requirements.txt
echo "Starting koyeb...."
python3 bot.py
