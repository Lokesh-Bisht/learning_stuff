<h2> What is kernel? </h1>
The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system. It manages following resources of the Linux system:
<ol> <li>File management</li>
<li>Process management</li>
<li>I/O management</li>
<li>Memory management</li>
<li>Device management</li></ol>

<h2>What is Shell?</h2>
<ul><li>A shell is a special user program which provides an interface to the user to use operating system services.</li>
<li>Shell accept human readable commands from the user and convert them into something which kernel can understand.</li>
<li>It is a command language interpreter that execute commands read from input devices such as keyboards or from files.</li>
<li>The shell gets started when the user logs in or start the terminal.</li>
<li>If you are using any major operating system you are indirectly interacting with the shell. If you are running Ubuntu, Linux Mint or any other Linux distribution, you are interacting to shell every time you use terminal.</li></ol></br>

Shell is further divided into 2 sub categories:
<ol><li>Command line shell</li><li>Graphical shell</li></ol>

<h2>Command line shell</h2>
<p>Shell can be accessed by user using a command line interface. A special program called <b>Terminal</b> in linux/macOS or <b>Command Prompt</b> in Windows OS is provided to type in the human readable commands such as <b><i>“cat”</i></b>, <b><i>“ls”</b></i> etc. and then it is being execute. The result is then displayed on the terminal to the user.</p>
<p> It is very powerful, it allows user to store commands in a file and execute them together. This way any repetitive task can be easily automated. These files are usually called <b>batch files</b> in Windows and <b>Shell Scripts</b> in Linux/macOS systems</p>

<h2>Graphical Shell</h2>
<p>Graphical shells provide means for manipulating programs based on graphical user interface (GUI), by allowing for operations such as opening, closing, moving and resizing windows, as well as switching focus between windows. Window OS or Ubuntu OS can be considered as good example which provide GUI to user for interacting with program. User do not need to type in command for every actions.</p>
<p>Below is the list of shells that are available for Linux systems:</p>
<ul><li><b>BASH (Bourne Again Shell):</b> It is most widely used shell in Linux systems. It is used as default login shell in Linux systems and in macOS.</li>
<li><b>CSH (C Shell):</b> The C shell’s syntax and usage are very similar to the C programming language.</li>
<li><b>KSH (Korn Shell):</b> The Korn Shell also was the base for the POSIX Shell standard specifications.</li></ul>


<h2>Shell scripting</h2>
<p>Usually shells are interactive that mean, they accept command as input from users and execute them. However sometimes we want to execute a bunch of commands routinely, so we have type in all commands each time in terminal.</p>
<p>As shell can also take commands as input from a file we can write these commands in a file and can execute them in the shell to avoid this repetitive work. These files are called <b>Shell Scripts</b> or <b>Shell Programs</b>. Shell scripts are similar to the <b>batch file</b> in MS-DOS. Each shell script is saved with <b>.sh</b> file extension.</p>

<h2>Shell scipting demo using bash shell</h2>

Suppose if you have traverse deep down into a directory and you want to come back to the parent directory. </br>

cd cp/data structure/segment-tree/lazy propogation

Then in order to return to the cp directory, you have to execute the below command

cd ../../..

The above command returns the user to the cp directory.

<p>Well you can manage to type the command for returning to the parent directory if the directory tree is only this long. But returning to the parent directory becomes more frustrating as the directory tree grows.</p>

<p>A nice and simple solution would be writing a utility program that can jump backwards between directories.</p>

```sh

# !/bin/bash 
  
# A simple bash script to move up to desired directory level directly 
  
function jump() 
{ 
    # original value of Internal Field Separator 
    OLDIFS=$IFS 
  
    # setting field separator to "/"  
    IFS=/ 
  
    # converting working path into array of directories in path 
    # eg. /my/path/is/like/this 
    # into [, my, path, is, like, this] 
    path_arr=($PWD) 
  
    # setting IFS to original value 
    IFS=$OLDIFS 
  
    local pos=-1 
  
    # ${path_arr[@]} gives all the values in path_arr 
    for dir in "${path_arr[@]}"
    do
        # find the number of directories to move up to 
        # reach at target directory  
        pos=$[$pos+1] 
        if [ "$1" = "$dir" ];then
  
            # length of the path_arr 
            dir_in_path=${#path_arr[@]} 
  
            #current working directory 
            cwd=$PWD 
            limit=$[$dir_in_path-$pos-1] 
            for ((i=0; i<limit; i++)) 
            do
                cwd=$cwd/.. 
            done
            cd $cwd 
            break
        fi
    done
} 
```

For now, we cannot execute our shell script because it does not have permissions. We have to make it executable by typing following command:</br>

chmod -x path/to/our/file/jump.sh

<p>Now to make this available on every terminal session, we have to put this in ".bashrc" file.</p>
<p> <b>.bashrc</b> is a shell script that Bash shell runs whenever it is started interactively. The purpose of a .bashrc file is to provide a place where you can set up variables, functions and aliases, define our prompt and define other settings that we want to use whenever we open a new terminal window.</p>

<p>Now type the bleow command in the terminal to make the jump command available to every terminal session by writing it into the <b>.bashrc</b> file.</p>
echo "source ~/path/to/our/file/jump.sh">> ~/.bashrc</br>

Now either restart the current terminal or open a new terminal. And now you can use the jump command :smile:
