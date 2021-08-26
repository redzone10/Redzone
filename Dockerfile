# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Redzone ━━━━━

RUN git clone -b Redzone https://github.com/Redzone/Redzone /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Redzone/Redzone/Redzone/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
