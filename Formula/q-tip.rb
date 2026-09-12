class QTip < Formula
  desc "A simple C++ graphics framework"
  homepage "https://github.com/ProPythonCoderAya/Q-Tip"
  url "https://github.com/ProPythonCoderAya/Q-Tip/archive/refs/tags/v0.1.6.tar.gz"
  head "https://github.com/ProPythonCoderAya/Q-Tip.git", branch: "main"
  sha256 "146b31cf7a3b992f9ad667fc4068b58a0fb7f1fe920de23164a387e63d241a6a"
  license "MIT"

  depends_on "cmake"
  depends_on "sdl3"
  depends_on "sdl3_ttf"
  depends_on "sdl3_image"

  def install
    system "cmake", "-S", ".", "-B", "build",
            "-DCMAKE_BUILD_TYPE=Release",
           *std_cmake_args

    system "cmake", "--build", "build"

    system "cmake", "--install", "build"
  end

  test do
    assert_path_exists include/"Q-Tip/QTip.h"
  end
end