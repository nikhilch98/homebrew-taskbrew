class Taskbrew < Formula
  include Language::Python::Virtualenv

  desc "Multi-agent AI team orchestrator for Claude Code, Gemini CLI, and custom agents"
  homepage "https://github.com/nikhilch98/taskbrew"
  url "https://files.pythonhosted.org/packages/source/t/taskbrew/taskbrew-1.0.0.tar.gz"
  sha256 "98d08d1576e988b62149a731add06c20c7ae255f04953a6a302fb3efb886fa62"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "TaskBrew", shell_output("#{bin}/taskbrew --help 2>&1", 0)
  end
end
