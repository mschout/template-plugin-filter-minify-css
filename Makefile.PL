use ExtUtils::MakeMaker;

WriteMakefile(
    (MM->can('signature_target') ? (SIGN => 1) : ()),
    NAME              => 'Template::Plugin::Filter::Minify::CSS',
    VERSION_FROM      => 'lib/Template/Plugin/Filter/Minify/CSS.pm',
    PREREQ_PM         => {
        'Template'      => 2.0,
        'CSS::Minifier' => 0
    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Template/Plugin/Filter/Minify/CSS.pm',
       AUTHOR         => 'Michael Schout <mschout@cpan.org>') : ()),
);
