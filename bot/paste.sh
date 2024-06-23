#!/usr/bin/bash

paste(){
    tg --replymsg "$RET_CHAT_ID" "$RET_MSG_ID" "Pasting your message, wait a second ...."
    random=$(echo $RANDOM)
    filename=$(echo "paste_${random}.txt")
    echo "$RET_REPLIED_MSG_TEXT" >> ${filename}
    result=$(curl -X POST -F "file=@${filename}" https://paste.fosscu.org/file)
    tg --editmsg "$RET_CHAT_ID" "$SENT_MSG_ID" "https://paste.fosscu.org/paste/${result}"
    rm ${filename}
}
