package Mojolicious::Plugin::ReplyTime;
use Mojo::Base 'Mojolicious::Plugin';

our $VERSION = '0.02';

sub register {
  my ($self, $app) = @_;

  $app->helper('reply.time' => sub {
    shift->respond_to(
      html => {text => scalar localtime},
      json => {json => {time => scalar localtime}},
    );
  });
  $app->routes->get('/replytime')->to(cb => sub {
    shift->reply->time
  });
}

1;
__END__

=encoding utf8

=head1 NAME

Mojolicious::Plugin::ReplyTime - Reply with a simple response of just the
current time

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('ReplyTime');

  # Mojolicious::Lite
  plugin 'ReplyTime';

=head1 DESCRIPTION

L<Mojolicious::Plugin::ReplyTime> is a L<Mojolicious> plugin.

=head1 METHODS

L<Mojolicious::Plugin::ReplyTime> inherits all methods from
L<Mojolicious::Plugin> and implements the following new ones.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicious.org>.

=cut
