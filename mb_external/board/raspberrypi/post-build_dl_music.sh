#!/bin/bash -e

MUSIC_DIR=${TARGET_DIR}/media/music
mkdir -p "${MUSIC_DIR}"
cd "${MUSIC_DIR}"

# Debussy - Clair de lune
#FILENAME="Debussy - Clair de Lune"
#FILE="${FILENAME}.mp3"
#if [ ! -f "${FILE}" ]; then
#    URL="https://www.youtube.com/watch?v=Yaxu4qEXDJs"
#    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
#    ffmpeg -i "${FILE}" -ss 00:00:00.00 -t 00:05:10.00 -c copy "tmp.mp3"
#    rm "${FILE}"
#    mv tmp.mp3 "${FILE}"
#fi

FILENAME="Moonlight Sonata"
FILE="${FILENAME}.mp3"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=sbTVZMJ9Z2I"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
    ffmpeg -i "${FILE}" -ss 00:00:04.00 -t 00:07:00.00 -c copy "tmp.mp3"
    rm "${FILE}"
    mv tmp.mp3 "${FILE}"
fi


FILENAME="Une Libellule"
FILE="${FILENAME}.mp3"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=3tJR-JIMaMo"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
    ffmpeg -i "${FILE}" -ss 00:00:00.00 -t 00:02:15.00 -c copy "tmp.mp3"
    rm "${FILE}"
    mv tmp.mp3 "${FILE}"
fi

# Berceuse de Brahms
FILENAME="Brahms - Berceuse"
FILE="${FILENAME}.mp3"

if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=PDJqRR1X1QU"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
fi

cd ${MUSIC_DIR}
replaygain *
