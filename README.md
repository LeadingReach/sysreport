# sysreport

A system reporting tool that generates a log of system information

## SYNOPSIS
     sysreport [-ldp] [directory ...] [process ...]

## DESCRIPTION
sysreport is a command-line tool that generates a log of system information, including CPU and memory usage, and generates snapshots of the full system process list. The default directory being /opt/sysreport. The log file is named with the current date and includes information about the system's CPU and memory usage. The snapshot file is named with the date and time of the snapshot. Logs are held for 30 days.

## OPTIONS
The following options are available:

-l: Displays collected system logs of recource ussage and select process snapshot.

-d: Sets the workign sysreport directory. This is usefull for viewing other system's logs and snapshots.

-p: Generates reports for specific processes

-u: Uninstalls the sysreport tool and removes all associated files and directories. 

## EXAMPLES
```bash
sysreport
        Runs the sysreport tool and generates a log of system information

sysreport -l
        File 1: /opt/sysreport/log/01-24-23_sysreport.log
        File 2: /opt/sysreport/log/01-23-23_sysreport.log
        File 3: /opt/sysreport/log/01-22-23_sysreport.log
        # select 1
        1  13:23:57         CPU load is normal     CPU System Load: 15 percent     CPU User Load: 10 percent       |       Memory useage is high   Memory System Load: 10 GB       Swap Load: 2048 MB
        2  13:24:58         CPU load is normal     CPU System Load: 11 percent     CPU User Load: 7 percent        |       Memory useage is high   Memory System Load: 10 GB       Swap Load: 2048 MB
        3  13:26:00         CPU load is normal     CPU System Load: 11 percent     CPU User Load: 8 percent        |       Memory useage is high   Memory System Load: 10 GB       Swap Load: 2048 MB
        # select 2
        USER:                   PID:            CPU:            MEM:            START:          TIME:           COMMAND:
        _windowserver           411             46.7            0.8             Wed01PM         1881:39.25      /System/Library/PrivateFrameworks/SkyLight.framework/Resources/WindowServer     -daemon   
        root                    11228           6.0             0.2             12:23PM         4:51.77         /Library/SystemExtensions/8H439I99-G984-419E-89A3-7DF633BE61C4/com.deepinstinct.DeepInstinctUtility.Extension.systemextension/Contents/MacOS/com.deepinstinct.DeepInstinctUtility.Extension                 
        carlpetry               96573           2.3             0.1             Fri12PM         37:28.14        /Applications/LR        Self-Service.app/Contents/MacOS/Self
```

## DIRCTORES
    /opt/sysreport/
        The default directory where the sysreport tool stores its log files and other files. This can be changed byusing the -d flag.

     /opt/sysreport/log
        The default directory where the sysreport tool stores its system utilazation log files. 

     /opt/sysreport/log/snapshots
        The default directory where the sysreport tool stores its process snapshots. 

## AUTHOR
     This script was written by Carl Petry   

## SEE ALSO
top(1), tee(1), awk(1), sed(1), touch(1), mkdir(1), rm(1), sysctl(8), ps(1)

## BUGS
     Please report any bugs to carl@leadingreach.com

