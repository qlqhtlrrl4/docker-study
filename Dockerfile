#베이스 이미지 명시
#FROM baseImage;
#FROM alpine #alpine 이미지에는 npm 이 들어있지않음 
FROM node:10

WORKDIR /usr/src/app

COPY package.json ./

#추가적 필요한 파일들을 다운로드 받는다
#RUN command
RUN npm install

COPY ./ ./

# 컨테이너 시작시 실행 될 명령어를 명시해준다.
#CMD [ "executable" ]
CMD [ "node", "server.js" ]