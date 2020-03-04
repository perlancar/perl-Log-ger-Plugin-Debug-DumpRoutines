package Log::ger::Plugin::Debug::DumpRoutines;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;
use Data::Dump::Color;

sub get_hooks {
    my %conf = @_;

    return {
        before_install_routines => [
            __PACKAGE__, # key
            99,          # priority (after all the other plugins)
            sub {        # hook
                my %hook_args = @_;

                dd $hook_args{routines};
                [undef];
            },
        ],
    };
}

1;
# ABSTRACT: Dump routines before Log::ger instals them

=for Pod::Coverage ^(.+)$

=head1 SYNOPSIS

 use Log::ger::Plugin->set('Debug::DumpRoutines');
 use Log::ger;


=head1 DESCRIPTION


=head1 CONFIGURATION


=head1 SEE ALSO
