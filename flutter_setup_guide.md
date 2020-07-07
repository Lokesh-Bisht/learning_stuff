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
 <li><a href="https://developer.android.com/studio/run/emulator-acceleration#vm-linux">How to enable VM acceleration in Linux</a></li>
 <li>Download <a href="https://developer.android.com/studio">Android studio</a>.</li>
 <li>Insallation guide for <a href="https://developer.android.com/studio/install#linux">Android studio</a> (just watch the video)</li>

<li><a href="https://flutter.dev/docs/get-started/install/linux#android-setup">How to setup emulator</a></li>
</ol>


<h1>Problems faced while setting up Emulator</h1>

<b>/dev/kvm device: permission denied. </b>
This is a common problem that occurs because the Android studio don't have access to <i>/dev/kvm</i> directory. <br/>
Access to <i>/dev/kvm </i>directory is restricted for security purposes.<br/>

<b>Note: Never ever do this</b> <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sudo chown [username] /dev/kvm<br/>
 
Running the above command will give complete access of the <i>/dev/kvm</i> directory to the <user> which is bad very bad! It's a bad practice.<br/>
 
 <b>Solution:</b> All you need to do is add your user to the kvm group (in /etc/group), do a logout/login.</br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sudo adduser <username> kvm
