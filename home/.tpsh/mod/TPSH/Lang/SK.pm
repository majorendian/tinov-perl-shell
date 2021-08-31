
package TPSH::Lang::SK;


INIT{
	sub translate{
		my $funcname = shift;
		my $target_name = shift;
		$main::{$target_name} = $main::{$funcname};
	}
}
1;

