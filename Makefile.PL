use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojolicious::Plugin::ReplyTime',
  VERSION_FROM => 'lib/Mojolicious/Plugin/ReplyTime.pm',
  AUTHOR       => 'Stefan Adams <sadams@cpan.org>',
  PREREQ_PM    => {'Mojolicious' => '7.60'},
  test         => {TESTS => 't/*.t'}
);
