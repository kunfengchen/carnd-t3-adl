#! /bin/bash
nvidia-docker run -it \
    --env="DISPALY" \
    --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume "$HOME/sharefolder:/sharefolder" \
    --volume "$HOME/sharefolder:/sharefolder" \
    --volume "/media/kchen/ssd2/git:/git" \
    --name adl \
    kunfengchen/udacity/carnd-t3-adl bash

### If exists the container, retunr to it by:
### docker start -ai adl

### To addtional process:
### docker exec -it adl /bin/bash
