if (defined $PL_DEFNS_ROOT) {
    # print "PL_DEFNS_ROOT = $PL_DEFNS_ROOT\n";
    $ROOT=$PL_DEFNS_ROOT;
} else {
    die "PL_DEFNS_ROOT is not set.";
}

use File::Spec::Functions;

my @PATHS=(
    catfile($ROOT, 'defns/', 'pl-syntax/'),
    catfile($ROOT, 'defns/', 'pfpl-defns/'),
    catfile($ROOT, 'defns/', 'styled-vars/'),

    # TILLST of POPL'25 and Toplas'25
    catfile($ROOT, 'defns/', 'tillst-legacy/'),
);

# Add to search path
$ENV{'TEXINPUTS'}=join(":", @PATHS) . ':' . $ENV{'TEXINPUTS'}; 

# print @PATHS;
# print $ENV{'TEXINPUTS'};