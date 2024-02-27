#! /bin/bash

echo "今日も一日お疲れ様でした。" | open_jtalk -x /var/lib/mecab/dic/open-jtalk/naist-jdic/ -m /usr/share/hts-voice/nitech-jp-atr503-m001/nitech_jp_atr503_m001.htsvoice -r 1.0 -ow /dev/stdout | play - 2>/dev/null

echo "オートエイムなんてものは存在しないわ。" | open_jtalk -x /var/lib/mecab/dic/open-jtalk/naist-jdic/ -m /usr/share/hts-voice/nitech-jp-atr503-m001/nitech_jp_atr503_m001.htsvoice -r 1.0 -ow /app/result.wav

