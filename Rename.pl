use utf8;
#binmode(STDOUT,":encoding(gbk)");
#binmode(STDIN,":encoding(gbk)");

use open ":encoding(gbk)",":std";

@files = glob "E:/BaiduCloud/x/Video/.*";
print "\@files = @files\n";
foreach $i (0 .. $#files) {
	my $out = $files[$i];
	print "\$out = $out\n";
	$out =~ s/老姚.*教学//;
	$out =~ s/-.*\.mp4/.mp4/;
	rename "E:/BaiduCloud/x/Video/$files[$i]" => "E:/BaiduCloud/x/Video/$out";
}