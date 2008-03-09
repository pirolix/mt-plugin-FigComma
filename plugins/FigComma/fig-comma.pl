package MT::Plugin::FigComma;

use MT::Template::Context;
MT::Template::Context->add_global_filter (fig_comma => \&fig_comma);

sub fig_comma {
	my ($data, $arg, $ctx) = @_;
;#
	1 while $data =~ s/(\d+)(\d\d\d)/$1,$2/g;
	$data;
}

1;