my $ROOT='../defns';

my @PATHS=(
    catfile($ROOT, '/pl-syntax/'),
    catfile($ROOT, '/pfpl-defns/'),
);

# Add to search path
$ENV{'TEXINPUTS'}=join(":", @PATHS) . ':' . $ENV{'TEXINPUTS'}; 
        

