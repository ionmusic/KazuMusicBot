FROM nikolaik/python-nodejs:python3.10-nodejs18
ENV API_ID=17075103
ENV API_HASH=097920d1b5cd9c2d417c60ce680b9c43
ENV AUTO_LEAVING_ASSISTANT=True
ENV BOT_TOKEN=6483025445:AAEIOmwDHah79UTH2CJR_GT6ahicHUnCe7s
ENV DURATION_LIMIT=5000
ENV MONGO_DB_URI=mongodb+srv://kontol:meledak@cluster0.uwhp6cf.mongodb.net/?retryWrites=true&w=majority
ENV LOG_GROUP_ID=-1001837838911
ENV MUSIC_BOT_NAME=Kazu
ENV OWNER_ID=961659670
ENV STRING_SESSION=BQClqK4LpGYN0W4WBo6954qVvt0c1Fgkn5E5finTEe5RtR3eXLRlOUpwts1r8GMW23oW_cmNvOtj4JnyGejg5ic3SOSPgfnOZLthhHzTVk3y2jqHJ88IYv5WtYCvGBmgjypVW5q9RrnsCjY1Ges77v7C8-EY_wKNkRwynDUZ3RbS1jBpeYJjmbIXDc-zQVQTOPzsaRW28LferUCFxXKF5Uu3_EGjHZQGVoA6aEOd-hVYchm7LzPz9o_6RV9TeN0cfzssWZsYtH6deo4SF9LoJgpBTFPlMwq9rgG62Id43MJmmIJdje_fD2SSJP3ZmccxCTFnvXzUNT0U1wjNo6jAAQ2eAAAAAY6DflkA
ENV UPSTREAM_BRANCH=main
ENV UPSTREAM_REPO=https://github.com/ionmusic/KazuMusicBot
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m KazuMusic
