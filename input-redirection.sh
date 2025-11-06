#!/bin/bash

cat > show-info.sh <<EOF
#!/bin/bash

cat -e <<END
The current directory is: \$PWD
The default paths are: \$PATH
The current user is: \$USERNAME
END
EOF