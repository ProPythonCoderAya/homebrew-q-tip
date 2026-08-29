class QTip < Formula
  desc "A simple C++ graphics framework"
  homepage "https://github.com/ProPythonCoderAya/Q-Tip"
  url "https://github.com/ProPythonCoderAya/Q-Tip/archive/refs/tags/DEBUG.tar.gz"
  sha256 "e6e33f8786a4d1125718dac3ea8f90c48653c3a10093d81b4fb4708576315686"
  license "MIT"

  depends_on "cmake"
  depends_on "sdl3"
  depends_on "sdl3_ttf"
  depends_on "sdl3_image"

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