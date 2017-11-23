# This is a formula for homebrew, the popular package management
# system for OS X.

require 'formula'

class Rbfu < Formula
  url 'https://github.com/onrooby/rbfu/tarball/v2.2.0'
  homepage 'https://github.com/onrooby/rbfu'
  sha256 '084232cbbb6db45d789e754fc4a87a9d0b3ae72f67627cb5dbcdd9e483359939'
  head 'https://github.com/onrooby/rbfu.git'

  def install
    prefix.install Dir['*']
  end

  def test
    system "rbfu --help"
  end

  def caveats; <<-EOS.undent
    Please add the following line to your favorite shell startup script:

        eval "$(rbfu --init --auto)"

    If you don't want RVM-like automatic version switching on directory
    changes, remove the --auto option:

        eval "$(rbfu --init)"

    Additional tips & tricks can be found in rbfu's README:

        https://github.com/onrooby/rbfu#readme

    Enjoy!

    EOS
  end
end
