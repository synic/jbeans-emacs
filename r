#!/usr/bin/env python

import sys
import re

swap_color, with_color = sys.argv[1:]

h = open('jbeans-theme.el', 'r')
data = h.read()
h.close()

data = re.sub(r'%s([ \)])' % swap_color, r'%s\1' % with_color, data)

h = open("jbeans-theme.el", "w")
h.write(data)
h.close()
