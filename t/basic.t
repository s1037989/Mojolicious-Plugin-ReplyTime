use Mojo::Base -strict;

use Test::More;
use Mojolicious::Lite;
use Test::Mojo;

plugin 'ReplyTime';

get '/' => sub { shift->reply->time };

my $t = Test::Mojo->new;
$t->get_ok('/')->status_is(200)->content_like(qr/\w{1,3} \w{1,3} \d{1,2} \d{2}:\d{2}:\d{2} \d{4}/, 'got a timestamp');

done_testing();
