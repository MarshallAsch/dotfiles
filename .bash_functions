
function validateYaml() { 
    python -c "from yaml import load, Loader; load(open('$1'), Loader=Loader)"; 

    if [[ "$?" -eq "0" ]]; then 
        echo "valid"; 
    else 
        echo "invalid";
    fi; 
}
