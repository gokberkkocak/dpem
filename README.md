# dpem [![Build Status](https://travis-ci.com/gokberkkocak/dpem.svg?branch=master)](https://travis-ci.com/gokberkkocak/dpem)
## distributed parallel experiment manager

## Dependencies
    python3
    parallel
    mysql or mariadb
    mysql.connector for python

## Usage 
```
usage: dpem [-h] [-v] [-c CONF] [-b] [-l COMMAND_FILE] [-f FREQ] [-t TIMEOUT]
            [-q] [-d] [-s] [-r] [-j NB_JOBS] [-u TABLE_NAME] [-k]
            [--extra-args EXTRA_ARGS] [--set-config SET_CONFIG] [--stats]
            [--show-all] [--show-avail] [--show-running] [--show-failed]
            [--show-success] [--show-timeout] [--reset-running]
            [--reset-failed] [--reset-timeout] [--reset-all]

optional arguments:
  -h, --help            show this help message and exit
  -v, --version         show program's version number and exit
  -c CONF, --config CONF
                        DB Configuration file. (Default to search for is
                        ~/.dpem/.conf.json)
  -b, --table           Create or empty the table in DB
  -l COMMAND_FILE, --load COMMAND_FILE
                        Commands file to load
  -f FREQ, --freq FREQ  Time (in seconds) frequency to check db for new jobs
                        (default: 15)
  -t TIMEOUT, --timeout TIMEOUT
                        Enforce timeout by timeout command in secs. Can be
                        used in --load and --run
  -q, --auto-requeue    When used with --timeout, it can requeue timeouted
                        tasks for t*2 seconds
  -d, --debug           Debug mode enables verbose printing
  -s, --shuffle         Shuffle data when loading and random run order
  -r, --run             Run experiments from DB
  -j NB_JOBS, --jobs NB_JOBS
                        Number of parallel of jobs to run (user) (default: 1)
  -u TABLE_NAME, --use-table TABLE_NAME
                        Table to use for experiment (default: experiments)
  -k, --keep-running    Keep it running even though the DB is empty and no
                        tasks are running
  --extra-args EXTRA_ARGS
                        Additional parallel arguments to pass. Use quotes
  --set-config SET_CONFIG
                        Take given conf file and save to the default conf
                        location ~/.dpem/.conf.json
  --stats               Experiment statistics
  --show-all            Print all jobs
  --show-avail          Print available jobs
  --show-running        Print running jobs
  --show-failed         Print failed jobs
  --show-success        Print successful jobs
  --show-timeout        Print timeouted jobs
  --reset-running       Reset running jobs to available in DB
  --reset-failed        Reset failed jobs to available in DB
  --reset-timeout       Reset all jobs to available in DB
  --reset-all           Reset all jobs to available in DB
  
  ```