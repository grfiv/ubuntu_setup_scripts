#!/usr/bin/env bash

echo $'\n install perl script to produce lorem ipsum output'
echo "#################################################################"
sudo apt-get install -y libtext-lorem-perl

cat > ~/lorem.pl << 'EOF'
#!/usr/bin/env perl

# create lorem ipsum output
#
# ./lorem.pl [number of paragraphs | default: 10]

# sudo apt-get install libtext-lorem-perl

use Text::Lorem;

if ($#ARGV == 0) {
    #print "\n\$#ARGV $#ARGV ... $ARGV[0]\n";
    $paras=$ARGV[0]
} else {
    $paras=10
}

my $text = Text::Lorem->new();
$paragraphs = $text->paragraphs($paras);

print "\n$paragraphs\n\n";
EOF

chmod a+x ~/lorem.pl
