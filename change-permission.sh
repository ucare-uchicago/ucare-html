#!/bin/bash

svn cleanup

chgrp -R ucare .

find . -type d -exec chmod -v 775 {} \;

find . -type f -exec chmod -v 664 {} \;

chgrp -R ucare .

#chmod -R g+w .

#find . -type d -exec chgrp  g+x {} \;

exit
