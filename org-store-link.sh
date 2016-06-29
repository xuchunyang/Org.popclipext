# / => %2F
URL=$( sed 's|/|%2F|g' <<< ${POPCLIP_URLS} )

TITLE=${POPCLIP_URL_TITLES}

emacsclient "org-protocol://store-link://${URL}/${TITLE}"
open -a Emacs
