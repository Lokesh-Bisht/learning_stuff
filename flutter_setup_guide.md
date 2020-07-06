<h1>Downloading SDK and setting path variables</h1>
Download the flutter SDK. Extract it (in the desired location) </br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
tar xf ~/Downloads/flutter_linux_1.17.5-stable.tar.xz

Or clone it: </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
git clone https://github.com/flutter/flutter.git

You can also change branches or tags as needed. For example, to get just the stable version:
</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
git clone https://github.com/flutter/flutter.git -b stable --depth 1

Update your path - to permanently add the path 
<ul>
<li>Open bash.rc file. It is located in user directory (home/username). The file is hidden by default, to unhide it use ctrl+h.</li>
<li> Add the following line and change [PATH_TO_FLUTTER_GIT_DIRECTORY] to be the path where you cloned Flutter’s git repo:
  </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
  </li>
 <li>Verify that the flutter/bin directory is now in your PATH by running:</br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 echo $PATH
  </li>
  
   <li>Verify that the flutter command is available by running:</br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 which flutter
  </li>
  
</ul>

<h1>Setup in VS code</h1>
<a href = "https://flutter.dev/docs/get-started/editor?tab=vscode">Flutter extensions setup in VS code</a></br>
Once, installations are complete restart VS code.

<h1>Android studio and emulator setup</h1>
<ol>
 <li>
  Download and install <a href="https://developer.android.com/studio">Android studio</a>.</li>
<li><a href="https://developer.android.com/studio/run/emulator-acceleration#vm-linux">How to enable VM acceleration in Linux</a></li>
<li><a href="https://flutter.dev/docs/get-started/install/linux#android-setup">How to setup emulator</a></li>
</ol>
