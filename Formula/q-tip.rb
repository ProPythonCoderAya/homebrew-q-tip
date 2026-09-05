class QTip < Formula
  desc "A simple C++ graphics framework"
  homepage "https://github.com/ProPythonCoderAya/Q-Tip"
  url "https://github.com/ProPythonCoderAya/Q-Tip/archive/refs/tags/v0.1.5.tar.gz.tar.gz"
  sha256 "38380fb46d64ef920db6d7921f11d5b9592b4e56a4a72c11177ffad68bd564e0"
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