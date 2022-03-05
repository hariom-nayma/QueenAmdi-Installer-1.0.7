FROM blackamda/queenamdi:public

RUN git clone https://github.com/hariom-nayma/SadSouL47 /root/SadSouL47
WORKDIR /root/SadSouL47/
ENV TZ=Asia/Mumbai
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]
