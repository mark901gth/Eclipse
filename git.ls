#!/bin/csh

set FILES = ( `git ls-tree -r --name-only HEAD` )
foreach F ( $FILES )
	echo "`git log -1 --format='%ad' --date=iso -- $F`   $F"
end
