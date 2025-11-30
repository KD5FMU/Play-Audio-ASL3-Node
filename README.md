![PlayAudioLoge](https://github.com/KD5FMU/Play-Audio-ASL3-Node/blob/main/play-audio-github.png)
<br>
# Play-Audio-ASL3-Node
Play an audio file over the air
### Play an Audio File locally over the air Whenever you want ###

1. First navigate to the folder where you store your sccript files, for me it's this one.
```
cd /etc/asterisk/local
```
2. Then we can down load the sceript file that plays the audio file through the asterisk server
```
wget https://raw.githubusercontent.com/KD5FMU/Play-Audio-ASL3-Node/refs/heads/main/playaudio.sh
```
3. Then we need to make it executable
```
sudo chmod +x playaudio.sh
```
Then we need to know where you are storing your audio files, I recommend a place like.. 
```
/usr/local/share/asterisk/sounds/custom
```

What I use it for are some holiday annoucements or local Radio Club announcements and I will put the sounds file I want to play in it's own folder so i will know where it's at. You don't have to do this, it's just what I do.
So for Example: If I wanted to play a special Seasons Greetings ID only Christmas Day then I make a special folder here
```
sudo md /usr/local/share/asterisk/sounds/custom/christmas
```

Then you can convert it from an .mp3 if you need to with this scripot file referenced in one of my other GitHub repositories if you need to

```
https://github.com/KD5FMU/Convert-Audio-File-to-ulaw
```

Or if it's already in an acceptable format just copy the audio file to the folder you desire and then we can setup a cron job to have it play when you want it to.
<br>
For Example: If you want the file to play 15 mins after the hour every hour only on Christmas Day then you can get into crontab thusly, 

```
sudo crontab -e
```

Then make an entry like so, AND you can put a comment about it if you wish to help remind you what the purpose od the cron job entry is for

```
# Audio File to Play a Christmas Greeting 15 mins past every hour only on Christas Day
*/15 * 25 12 * /etc/asterisk/local/playaudio.sh /usr/local/share/asterisk/sounds/custom/christmas/christmas
```

We leave the suffix off of the audio files name so that Asterisk will play it correctly. That's just how Asterisk Rolls.

For more creative ways to shedule a cron job you can consult with this website or ChatGPT

```
https://crontab.guru/
```

Try to have some creative fun with it!
73 DE KD5FMU & "Ham On Y'all!!"
<br>



