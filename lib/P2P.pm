package P2P;
use Dancer2;
use Data::Dumper;
use File::Temp qw/tempfile/;
use Mail::Message;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

any '/receive' => sub {
    my $dump_dir = config->{p2p}->{request_dump_dir};
    my ($fh, $filename) = tempfile(DIR => $dump_dir);
    my %params = params;
    print $fh Dumper \%params;

    Mail::Message->build(
        To       => 'info@ctrlo.com',
        Subject  => "New P2P order",
        data     => "Contained in $filename",
    )->send(via => 'postfix');

};

true;
