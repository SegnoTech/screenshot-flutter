<<<<<<< HEAD
# screenshot_auto

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```
####### How to Build a Flutter App for Linux #######--->
Run these Commands in terminal --->>>
$ dart pub global activate flutter_to_debian
After run this command You can see this -->
    Warning: Pub installs executables into $HOME/.pub-cache/bin, which is not on your path.
    You can fix that by adding this to your shell's config file (.bashrc, .bash_profile, etc.):

    export PATH="$PATH":"$HOME/.pub-cache/bin"

    Activated flutter_to_debian 1.0.4.

$ export PATH="$PATH":"$HOME/.pub-cache/bin"
$ flutter_to_debian
$ mkdir debian
$ flutter_to_debian
##After this in debian folder create debian.yaml file and paste these line of code -->>
    flutter_app: 
        command: mega_cool_app
        arch: x64
        parent: /usr/local/lib

    control:
        Package: timestint
        Version: 1.0.0
        Architecture: amd64
        Essential: no
        Priority: optional
        Depends:
        Maintainer: segnotech
        Description: TimeStint App that does everything!

## Create a new folder name[gui] in debian folder. And in gui folder create a new file name[timestint.desktop] and paste these line of code in it --->>
        [Desktop Entry]
        Version=1.0
        Name=TimeStint App
        GenericName=TimeStint App
        Comment=A TimeStint App that does everything
        Terminal=false
        Type=Application
        Categories=Utility
        Keywords=Flutter;share;files;

$ dart pub global activate flutter_to_debian
$ flutter_to_debian
After run this command See -->
    start building debian package... ♻️  ♻️  ♻️

    No skeleton found
    🔥🔥🔥 (debian 📦) build done successfully  ✅

    😎 find your .deb at
    debian/packages/timestint_1.0.0_amd64.deb


## Share this file and open 
#Run this command in your terminal 
$ sudo dpkg -i [filename].deb




###############  How to Build a Flutter App for Windows #######--->
    1. Run this command in cmd -->
        flutter run
        flutter config --enable-windows-desktop
        flutter build windows
    
    ## How to create .exe installation file of flutter windows Application --->>>
     build flutter apps for windows desktop just by using below command in flutter project terminal-->>
        flutter build windows
    
        When you run above build windows cmd, flutter will build windows application of your flutter project at location:-
        <project>/..build/windows/runner/release/
    
    ## Inno setup to create installer .exe file -->
    1. Download the Inno Setup software
        In the first step, select the second option i.e “create a new script file using the script wizard” & click on OK button
    2. Fill out information about flutter application in inno setup.
        In the next step you will be asked to fill basic information about your application.
    
    3. Application files
        This step is very much important, Here you need to select release flutter build windows files and folder.
    
        Select Application main executable file i.e .exe
        Add files: Select 2 files i.e .dll and .exe
        Add folder: Select data folder.
        After selecting data folder, select the selected path of folder & click on Edit Button.
            Here in destination subfolder, you need to set a folder name, In our case it “data”, so enter data in it as shown & hit OK button.
    
    4. Application file association
        Here we need to select if our flutter windows application has any other type of file extension, In our case we don’t support any other extension for now, so uncheck, associate a file type to the main executable and hit next.
    
    5. Windows Application shortcuts
    
    6. Setup Install Mode
        Here select Administration Install Mode (Instakk for all users).
    
    7. Compiler Settings
        Here in Inno setup compiler setting windows page you need to:
    
        1. Choose / Browse final output folder.
        2. Final output file name Eg: protoInstaller.
        3. [Optional] Setup icon Image file. Should be in .ico extension.
        4. [Optional] Set Password for your installer setup.
        Then click on Next, Until finish.
    
    8. Create new inno Script
        Then you will be prompt, asking for creating new compile script. click “YES”.
    
    9. Flutter app windows exe installer is created
        After successfully compilation completes, you will see a installer setup been created in your selected folder as you can see above
    
    ```