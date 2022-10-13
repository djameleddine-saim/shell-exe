URL="https://alcasar.laplateforme.io/status.php"

O="order=Order"
A="amount_%d=%%d&amount_foil_container_%d=%%d"

function order_lunch() {
  if [[ -n "$@" ]]; then
    curl -u "$USER":"$PASSWORD" \
         -d $(printf $(printf "$O&$A&$A&$A&$A" 0 0 1 1 2 2 3 3) \
                     "${@:2:8}") \
         "$URL";
  else
    echo "Nothing to order.";
  fi;
}
