#ansible staging_servers -m ping | grep "192.168.1"
#ansible staging_servers -m apt -a "name=apache2 state=absent" -b

ansible video_ALL -m ping | grep "UNREACHABLE" | tee -a ping.log
