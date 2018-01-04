# SLURM

# Commands
## Jobs
### Run a job
```
srun -n1 <task>
```
### Batch job
```
sbatch -N1 -n1 -t00:00:10 --qos=normal <task.sh>
```
### --multi-prog (MPMD)
[See here](https://computing.llnl.gov/tutorials/linux_clusters/multi-prog.html)
### Show queued jobs
```
squeue -u <user>
```
### Show job information
```
scontrol show job <job_id>
```
### Hold & release
--hold sets priority to 0
```
sbatch -H <batch_command.sh>
```
Release hold with:
```
scontrol release <job_id>
```
### Cancel job
```
scancel <job_id> [ [job_id2] [job_id3] ]
```
## Account auditing
### Range
```
sacct -S 2018-01-01 -E 2018-01-04
```
### Day
```
sacct -S 2018-01-04
```
## Ideas
### find + xargs
Note: `-not -path` is for ignoring hidden directories in this example.
```
time sh -c "find . -not -path '*/\.*' -type f | xargs -L1 -P4 md5sum > md5.txt"
```
#### xargs debugging
``` 
xargs --show-limits
```
### find + exec 
i.e. pass multiple arguments to `md5sum`
```
time sh -c "find . -not path '*/\.*' -type f -exec md5sum {} +" > md5.txt	
```
## Links
[Job Arrays](https://rcc.uchicago.edu/docs/tutorials/rcc-tips-and-tricks.html)
[Job Arrays 2](https://rcc.uchicago.edu/docs/running-jobs/array/index.html#array-jobs)
[Parallel Batch Jobs](https://rcc.uchicago.edu/docs/running-jobs/srun-parallel/index.html#parallel-batch)
[Spark + SLURM](https://serverfault.com/questions/776687/how-can-i-run-spark-on-a-cluster-using-slurm)
[Magpie - HPC scripts](https://github.com/LLNL/magpie)
[SHA1SUM Example](https://www.rc.colorado.edu/book/export/html/610)
