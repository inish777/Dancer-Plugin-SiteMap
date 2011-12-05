use strict;
use warnings;

use Test::More import => ['!pass'];

{
    use Dancer;
    use Dancer::Plugin::SiteMap;

    get '/foo' => sub { 11 };
}

use Dancer::Test;

my $r = dancer_response GET => '/sitemap';
is $r->[2][0], "";


done_testing;
