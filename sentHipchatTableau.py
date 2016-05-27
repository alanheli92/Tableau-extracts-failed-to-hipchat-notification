#!/usr/bin/env python
import os
import hipchat
import logging
import sys

#Open and read the file
file = open('output', 'r')

#YOur hiphat roomid. example 1234567
room_id=2758905

#the name of who is sending the message
from_name='Tableau Error'

#Your hipchat token id. Ask to your hipchat admin It shoul be form by 30characters
hipster=hipchat.HipChat(token='...........................')

#Color of the message
message_color='red'

#read each line of the file then sent it
for line in file:
        line = line.rstrip()
        if line != '':
                hipster.message_room(room_id, from_name, line, color=message_color, notify=True)
