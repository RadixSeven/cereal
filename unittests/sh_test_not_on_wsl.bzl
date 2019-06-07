# This macro expands to nothing if the host is not linux or is Windows
# Subsystem for Linux ... it would be better to have tests that only
# ran on selected hosts (i.e. in a heterogenous cluster) but this will
# have to do

with allow_unsafe_import():
    import sys

def sh_test_not_on_wsl(name, test, args):
    '''
    Create a sh_test() with the same arguments but only if this is a linux
    machine not running WSL
    '''
    if not host_info().os.is_linux:
        return
    # No way to do absolute path
    add_build_file_dep('//../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../../proc/version')
    with open('/proc/version') as pv:
        if 'Microsoft' in "".join(pv.readlines()):
            return
    sh_test(name=name, test=test, args=args)
