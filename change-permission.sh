#!/bin/bash

# chgrp -R ucare .

find . -type d -not -path '*/\.git/*' -exec chmod -v 775 {} \;

find . -type f -not -path '*/\.git/*' -not -path '*.sh' -exec chmod -v 664 {} \;

# chgrp -R ucare .

#chmod -R g+w .

#find . -type d -exec chgrp  g+x {} \;

exit
