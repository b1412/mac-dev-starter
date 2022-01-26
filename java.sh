brew tap homebrew/cask-versions
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
brew install adoptopenjdk/openjdk/adoptopenjdk8
brew install adoptopenjdk/openjdk/adoptopenjdk11
brew install adoptopenjdk/openjdk/adoptopenjdk14
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home/
jenv versions
jenv global 11