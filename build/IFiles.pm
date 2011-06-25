package Hiredis::Raw::Install::Files;

$self = {
          'inc' => '-I/usr/local/include/hiredis',
          'typemaps' => [
                          'typemap'
                        ],
          'deps' => [
                      'XS::Object::Magic'
                    ],
          'libs' => '-L/usr/local/lib -lhiredis'
        };


# this is for backwards compatiblity
@deps = @{ $self->{deps} };
@typemaps = @{ $self->{typemaps} };
$libs = $self->{libs};
$inc = $self->{inc};

	$CORE = undef;
	foreach (@INC) {
		if ( -f $_ . "/Hiredis/Raw/Install/Files.pm") {
			$CORE = $_ . "/Hiredis/Raw/Install/";
			last;
		}
	}

1;
