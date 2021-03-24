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
    export MYPYPATH=$PWD/toolbox_xyce_tools
else
    export MYPYPATH=$PWD/toolbox_xyce_tools:$MYPYPATH
fi

# Set TOOLBOX_XYCE_TOOLS_HOME variable
export TOOLBOX_XYCE_TOOLS_HOME=$PWD
