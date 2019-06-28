#!/bin/bash
xvfb-run -s "-screen 0 1280x720x24" jupyter notebook --ip 0.0.0.0 --allow-root "$@" --NotebookApp.token=""


