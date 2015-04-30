#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use P2P;

use Plack::Builder;

use Config::INI::Reader;

my $config = Config::INI::Reader->read_file('config.ini');

builder {
    enable "Auth::Basic", authenticator => \&authen_cb;
    P2P->to_app;
};
 
sub authen_cb {
    my($username, $password, $env) = @_;
    my $rfc2617 = $config->{RFC2617};
    return $username eq $rfc2617->{username}
      && $password eq $rfc2617->{password};
}

