#!/usr/bin/env python3

from subprocess import Popen, PIPE

output = Popen(["vagrant", "-v"], stdout=PIPE).communicate()[0].decode("utf-8")

if "Vagrant" not in output:
	print("Something weird with your Vagrant installation, uh.")
else:
	print("Everything looks good, running the up command...")
	Popen(["vagrant", "up"]).wait()
