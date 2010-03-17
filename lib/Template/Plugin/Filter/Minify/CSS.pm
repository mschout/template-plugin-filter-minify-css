package Template::Plugin::Filter::Minify::CSS;

use 5.006;
use strict;
use base 'Template::Plugin::Filter';
use CSS::Minifier;

sub init {
    my $self = shift;

    $self->install_filter('minify_css');

    return $self;
}

sub filter {
    my ($self, $text) = @_;

    $text = CSS::Minifier::minify(input => $text);

    return $text;
}

1;

# ABSTRACT: CSS::Minifier filter for Template Toolkit

=head1 SYNOPSIS

  [% USE Filter.Minify.CSS %]

  [% FILTER minify_css %]
    .foo {
        color: #aabbcc;
        margin: 0 10px 0 10px;
    }
  [% END %]

=head1 DESCRIPTION

This module is a Template Toolkit filter, which uses CSS::Minifier to minify
css code from filtered content during template processing.

=head1 SEE ALSO

L<CSS::Minifer>, L<Template::Plugin::Filter>, L<Template>

