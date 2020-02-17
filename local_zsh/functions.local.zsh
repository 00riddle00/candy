
# =============
#  MIF
# =============

## copy to mif
function mif.send() { scp -rp "$MAIN_HOME/Downloads/$1" "togi3017@uosis.mif.vu.lt:/stud3/2015/togi3017/Desktop"; }

## copy from mif
function mif.get() { scp -rp "togi3017@uosis.mif.vu.lt:/stud3/2015/togi3017/Desktop/$1" "$MAIN_HOME/Downloads"; }
