# copied from https://xuc.me/blog/latex-and-r/
# allow latexmk to work with the knitr files (.Rnw or .Rtex), append this file in your global ~/.latexmkrc file or local .latexmkrc under the project root
# only enable when compiling .Rnw or .Rtex file
if(grep(/\.(rnw|rtex)$/i, @ARGV)) {
    $latex = 'internal knitrlatex ' . $latex;
    $pdflatex = 'internal knitrlatex ' . $pdflatex;
    my $knitr_compiled = {};
    sub knitrlatex {
        for (@_) {
            next unless -e $_;
            my $input = $_;
            next unless $_ =~ s/\.(rnw|rtex)$/.tex/i;
            my $tex = $_;
            my $checksum = (fdb_get($input))[-1];
            if (!$knitr_compiled{$input} || $knitr_compiled{$input} ne $checksum) {
                my $ret = system("Rscript -e \"knitr::knit('$input')\"");
                if($ret) { return $ret; }
                rdb_ensure_file($rule, $tex);
                $knitr_compiled{$input} = $checksum;
            }
        }
        return system(@_);
    }
    # clean up generated .tex file when running `latexmk -c <root_file>`
    $clean_ext .= ' %R.tex';
}
