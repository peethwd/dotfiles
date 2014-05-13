# count lines in latex file via untex
function texCount(){
    if [ $# -gt 0 ] ; then
        untex -imo "$1" | wc -w
    else 
        echo Files required
    fi
}
