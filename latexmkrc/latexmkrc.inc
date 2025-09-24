# Sets up search path for defns 
$PL_DEFNS_ROOT="PL_DEFNS_ROOT";

use File::Spec::Functions;
# Try to load the env file
do (catfile($PL_DEFNS_ROOT, "bin/env.pl"));
# Check the file is successfully loaded.
if ($@) {
    print $@;
    die "'env.pl failed to execute.'";
}
# Check the file does exists.
if ($!) {
    die "'$!'";
}
