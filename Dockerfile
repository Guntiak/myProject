FROM gradle
RUN mkdir /home/gradle/myProject
WORKDIR /home/gradle/myProject
VOLUME myProject
COPY ./ /home/gradle/myProject

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN zip publish --no-daemon --info
RUN hello publish --no-daemon --info