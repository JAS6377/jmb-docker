# jmb-docker
<b>Guides, source code for the bot, and credit to the original developer: jagrosh. All I did was put it into a container.</b>

--JMusicBot wiki: https://jmusicbot.com

--jagrosh's GitHub repo: https://github.com/jagrosh/MusicBot
<br></br>

This is a personal project. The container uses eclipse-temurin:17-jdk as a base image and simply throws JMusicBot onto it.

!!! You MUST set the TOKEN and OWNER variables for this to work:

<code>docker run -e TOKEN=[Bot_Token] -e OWNER=[Owner_ID] [image]</code><br></br>

The container set up to check for new versions on restart. Simply restart the container and it'll re-run the update script. It's clunky, but it works.

DockerHub: https://hub.docker.com/r/jas6377/jmusicbot-docker
