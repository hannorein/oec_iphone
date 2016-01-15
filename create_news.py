#!/usr/bin/python
import subprocess

N = 10
for i in xrange(N):
    s = subprocess.check_output(["git", "log", "-n", "1", "--skip=%i"%i, "--no-merges", "--format=%s%b"],cwd="../open_exoplanet_catalogue")
    d = subprocess.check_output(["git", "log", "-n", "1", "--skip=%i"%i, "--no-merges", "--format=%cr"],cwd="../open_exoplanet_catalogue")
    print s.strip()
    print d.strip()


