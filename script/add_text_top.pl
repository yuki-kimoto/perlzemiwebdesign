use strict;
use warnings;

my @lines;

my ($file) = @ARGV;

while (my $line = <DATA>) {
  push @lines, $line;
}

while (my $line = <>) {
  push @lines, $line;
}

open my $fh, '>', $file
  or die;

print $fh @lines;

__DATA__
<div class="bread">
  <ul itemscope itemtype="http://schema.org/BreadcrumbList">
    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
      <a itemprop="item" href="/">
        <span itemprop="name">Webデザイン</span>
      </a>
      <meta itemprop="position" content="1" />
    </li>
    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
      <a itemprop="item" href="/blog/20200328092718.html">
        <span itemprop="name">HTML5</span>
      </a>
      <meta itemprop="position" content="2" />
    </li>
    <li>
      here
    </li>
  </ul>
</div>
