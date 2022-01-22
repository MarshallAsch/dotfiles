
function validateYaml() { 
    python -c "from yaml import load, Loader; load(open('$1'), Loader=Loader)"; 

    if [[ "$?" -eq "0" ]]; then 
        echo "valid"; 
    else 
        echo "invalid";
    fi; 
}


function jwt-decode() {

    sed 's/\./\n/g' <<< $(cut -d. -f1,2 <<< $1) | base64 -d

}

