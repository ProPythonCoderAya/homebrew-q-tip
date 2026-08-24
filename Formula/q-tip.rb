class QTip < Formula
  desc "A simple C++ graphics framework"
  homepage "https://github.com/ProPythonCoderAya/Q-Tip"
  url "https://github.com/ProPythonCoderAya/Q-Tip/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5ea090a22938d28501a81609894e2f9514460047c31ab7636dda9df803b06811"
  license "MIT"

  depends_on "cmake"
  depends_on "sdl3"
  depends_on "sdl3_ttf"

  def install
    system "cmake", "-S", ".", "-B", "build",
           *std_cmake_args

    system "cmake", "--build", "build"

    system "cmake", "--install", "build"
  end

  test do
    assert_path_exists include/"Q-Tip/QTip.h"
  end
end