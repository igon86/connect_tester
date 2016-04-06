# connect_tester
Set of scripts and infrastructure to easily test a CONNECT (http://users.ece.cmu.edu/~mpapamic/connect_beta) generated NoC using Quartus targeting an Altera Stratix V

1. Make sure quartus is in your $PATH
2. add a folder where to store the tarball received from connect and unpack it - this is going to be the work folder for Quartus. This implies parallel synthesis jobs can be run in distinct folders
3. python assignments.py - this generates all the Queartus configuration files in the new folder. This include all the virtual pin assignments around the CONNECT noc - it is necessary to know the number of inputs and outputs of the noc for this to work correctly. Assuming you created a new folder test_noc and untard the CONNECT tarball there then: python assignments.py ./test_noc/build #inputs #outputs
    3.1 Note for topology_generator.py the i/o information is outputted at the end of the topology generation process:
    MAX RecvPORT: 65
    MAX SendPORT: 47
    ...
    COST 26779.125
    This would correspond to the following invocation: python assignments.py ./test_noc/build 48 66
4. cd test_noc
5. /.execute_me
