Save a data.osm.pbf file in this folder
Open project in QGIS
Zoom to extent of some layers




"""
Define new functions using @qgsfunction. feature and parent must always be the
last args. Use args=-1 to pass a list of values as arguments
"""

from qgis.core import *
from qgis.gui import *

import re

'''
Example: getTag("other_tags",'railway') -> 'platform'
'''
@qgsfunction(args="auto", group='Custom')
def getTag(attr, tag, feature, parent):
    tag=tag
    attr=attr
    regexp='"'+tag+'"=>"(.+?)"'
    re_output=re.search(regexp,attr)

    if re_output:
        result = re_output.group(1)

    else:
        return ''

    return result
