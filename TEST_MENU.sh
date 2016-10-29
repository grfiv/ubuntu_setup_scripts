#!/bin/bash

# present the installation-file menu
# ==================================

function pause() {
    # wait for input
    #
    # usage: pause
   echo -n "... press Enter "
   read -p "$*"
}
export -f pause

# create an array of all *.sh files in the directory
# --------------------------------------------------
declare -a EXEC_FILE_LIST
shopt -s nullglob
EXEC_FILE_LIST=(*.sh)

# create an array of the scripts that have already been run
# ---------------------------------------------------------
declare -a FILES_RUN
FILES_RUN[${#FILES_RUN[@]}]="TEST_MENU.sh";

# the main body of the script
# ---------------------------
while true; do
    echo -e "\n List of installation files";

    # display the list of files
    # -------------------------
    for i in "${!EXEC_FILE_LIST[@]}"; do

        # skip any files already processed ...
        # ------------------------------------
        if [[ " ${FILES_RUN[@]} " =~ " ${EXEC_FILE_LIST[$i]} " ]]; then
            continue;
        fi
        # ... display all the rest
        # ------------------------
        printf "%s\t%s\n" "$i" "${EXEC_FILE_LIST[$i]}";
        description=$(cat ${EXEC_FILE_LIST[$i]}  | grep DESCRIPTION);
        if [[ ! -z $description ]]; then
            echo -e "\t$description";
        fi
    done

    # read the array number and execute the file
    # ------------------------------------------
    while true; do
        echo -ne  "Enter the number of the file to run "
        read
        if [ "$REPLY" -ge 0 -a "$REPLY" -lt ${#EXEC_FILE_LIST[@]} ]; then
            # array index of this script
            index=$REPLY;

            # save the name of this script for later exclusion
            FILES_RUN[${#FILES_RUN[@]}]=${EXEC_FILE_LIST[$index]};

            echo -e "\n-------------------------------------------------";
            echo    "$index: ${EXEC_FILE_LIST[$index]} will run ... press Enter";
            echo -n "-------------------------------------------------";
            read -p "$*"

            bash ${EXEC_FILE_LIST[$index]};
            break;
        else
             echo "... try again $REPLY is not valid";
        fi

    done
    echo -e "\n-------------------------------------------------";
    echo    "$index: ${EXEC_FILE_LIST[$index]} complete ... press Enter";
    echo -n "-------------------------------------------------";
    read -p "$*"
    echo "files run (or excluded)";
    echo ${FILES_RUN[*]}
done

# citations
# =========
#
# arrays in general:
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_10_02.html
#
# check if an array contains a value
# https://stackoverflow.com/questions/3685970/check-if-an-array-contains-a-value
#
# load an array with filenames
# https://stackoverflow.com/questions/10981439/reading-filenames-into-an-array
#
# Looping over arrays, printing both index and value
# https://stackoverflow.com/questions/6723426/looping-over-arrays-printing-both-index-and-value



