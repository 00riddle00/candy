
# =============
#  MIF
# =============

alias mif='ssh -f -N togi3017@uosis.mif.vu.lt -L 5555:linux:3389' # create ssh tunnel to mif and run it in the background

# ==================
#  subscription-demo
# ==================

alias ve='export VENV=$MAIN_HOME/pro/subscription-demo/env'

alias run='
    rm /home/riddle/pro/subscription-demo/app/subscriptions.sqlite &&
    ve &&
    $VENV/bin/python3 setup.py develop &&
    $VENV/bin/initialize_subscriptions_db development.ini'

alias run2='
    ve &&
    rm -r $VENV &&
    python3 -m venv $VENV &&
    $VENV/bin/pip3 install --upgrade pip setuptools &&
    run &&
    chmod -R +x $VENV &&
    $VENV/bin/pip install -e ".[testing]" &&
    $VENV/bin/pserve development.ini --reload'

#alias test='ve &&$VENV/bin/py.test --cov -q'

alias senv='source $VENV/bin/activate'

# =============
#  kk servai
# =============

alias ss1='ssh test@141.98.10.154'
alias ss2='ssh userv@141.98.10.54 -p 22033'
alias ss3='ssh userv@141.98.10.157 -p 22033'
alias ss4='ssh userv@141.98.10.158 -p 22033'
