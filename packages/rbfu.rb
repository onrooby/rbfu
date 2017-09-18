# This is a formula for homebrew, the popular package management
# system for OS X.

require 'formula'

class Rbfu < Formula
  url 'https://github.com/onrooby/rbfu/tarball/v2.1.0'
  homepage 'https://github.com/onrooby/rbfu'
  sha256 '66ffddbbcaea8f84fc6257751e7f7fc5777c29955e0ad522a9dd85966a2af0ec'
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
