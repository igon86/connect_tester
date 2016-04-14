'''
This script will create a set of dirs in folder sys.arg[1]
It will also create the templace for a condor submit file
'''

import os
import sys
import errno

fallback_nocs = [0,1,2,3]
iterations = range(0,200,40)

assert os.path.isdir(sys.argv[1])

for n in fallback_nocs:
    for i in iterations:
        new_dir = os.path.join( sys.argv[1],"noc{0}_iter{1}".format(n,i) )
        # add the suffix if provided
        if len(sys.argv) == 3:
            new_dir += "_{2}".format(sys.argv[2]) 
        
        try:
            os.makedirs( new_dir )
        except OSError as exception: #it is fine if the directory is already there
            if exception.errno != errno.EEXIST:
                raise
            
        print "initial_dir = {0}\narguments = {1} {2} comm_stats_file\nqueue".format(os.path.abspath(new_dir), i, n)
        
