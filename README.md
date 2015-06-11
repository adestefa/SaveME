## SaveME

A dead simple backup program to focus on daily file changes, and keep ready copies of them over a number of drives. After adopting Git for version control, and having a bunch of cheap thumb-drives around, I wanted something easy to use that doesn't require zip files and long load times or having an account in the cloud. My data is mine, I want to handle it without complexity to do so. Cloud storage is fine and has its own value, but I wanted something simple, fast for my own protection that is accessible even if I lose my internet connection ;-)

Think the old special MS Briefcase folder on steroids. Fast, private, simple and FREE. 

![alt tag](https://github.com/adestefa/SaveMe/blob/master/screenshot.png)

### Redundant array of inexpensive disks (RAID)	
SaveMe is a simple way to also take advantage of cheap solid state memory thumb-drives. 
- USB hub (doesn't have to be powered)
- USB thumb-drives 
- Windows machine and SaveMe

SaveMe will copy all files you specify as 'master' sets to your backup drives. Then only copy the files that change every day in those master sets. Thumb-drives are perfect for this job as they are instantly accessible on any system and portable! They seem like the perfect cheap way to have a fail-safe system to save your data. USB Hubs are also cheap, together with SaveMe, you can have a serious backup solution that has little chance of failure. I am currently storing my files over four 16GB USB drives ($9 drives + $14 Hub). That gives me 5 copies of my most important files that are all instantly accessible if I need them. 

*Caveat Emptor*: Like any user, it is up to me to secure my physical media after copying. USB drives are easy to use and as such can be just as easy to steal and copy by anyone. This is a measured risk I am taking as I feel I have more control over securing my physical workstation/hardware than I can say to a cloud service I may even have to pay for.

* SaveMe works with any kind of drive.
* Your data is saved over a number of drives (as many as your system/hubs can hold)
* Your data is not compressed, or encrypted, ready to work with from any drive. 
* You don't have to manage endless versions of zip files, or fumble with decompressing files to use or inspect.


### Usage	
Run the SaveMe.bat file by double clicking.

### Installation
At the heart of SaveMe is the DOS xcopy command which along with the correct settings will only copy new/updated files based on last update timestamp.

Tell SaveMe which data to care about by adding xcopy commands for each directory/file you want PackRat to watch for changes.


`set source=C:\SaveMeData\GitHub\*.*`

Tell SaveMe each backup destination drive and folder 

`set saveme1=F:\SaveMeData\GitHub\*.*`


This will be used by the actual xcopy command as such:

`xcopy %source% %saveme1% /E /D /Y >> %logfile%`


To add more drives, simply copy and paste new lines:

`set saveme2=G:\SaveMeData\GitHub\*.*`

`xcopy %source% %saveme2% /E /D /Y >> %logfile%`

and another:

`set saveme3=H:\SaveMeData\GitHub\*.*`

`xcopy %source% %saveme3% /E /D /Y >> %logfile%`


Repeat these commands to add as many directories and drives you like.


