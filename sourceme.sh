#!/usr/bin/env bash

# Set PYTHONPATH accordingly
if [ -z "$PYTHONPATH" ]
then
    export PYTHONPATH=$PWD
else
    export PYTHONPATH=$PWD:$PYTHONPATH
fi

# Set MYPYPATH accordingly
if [ -z "$MYPYPATH" ]
then
    export MYPYPATH=$PWD/toolbox-xyce-tools
else
    export MYPYPATH=$PWD/toolbox-xyce-tools:$MYPYPATH
fi

# Set TOOLBOX-XYCE-TOOLS_HOME variable
export TOOLBOX-XYCE-TOOLS_HOME=$PWD
