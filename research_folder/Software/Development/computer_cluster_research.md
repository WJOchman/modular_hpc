# COMPUTER CLUSTERS

_computer clusters_ are designed to maximise the advantages of parallel computing

In parallel computing tasks are broken down into independent and semi independent operations for simultaneous oepration. this allows for vast increases in computing resources that can be applied to a single tasks allowing for faster execution.

For example, calculation of hours worked, taxes, etc. need to calculated for each employee in a company. Each employees calculations are assigned to separate processor to do all of it simulateneously and faster.

Hardware configuration.

## COMPUTING CLUSTERS - NODE LAYOUT
Computing clusters consist of many specialised nodes

1. HEAD NODE - This is the node into which users must logic to access resources of computer.

2. COMPUTE NODE - Contribute to vast majority of systems computing power. Cannot be accessed by users directly. Instead, Computing jobs must be created on the queue managed by head node.

3. INTERACTIVE NODE - Some computing clusters provide small number of interactive nodes which can be logged into directly. Only intended for small tasks/ short jobs. Alternatively, if interactive nodes are not present, interactive jobs can be launched on compute nodes via the queue.

## COMPUTING CLUSTERS - STORAGE LAYOUT

1. HOME DIRECTORY STORAGE - Users are given small amount of storage for config files, source codew, etc and hsould not be used for large data sets that often form input or output for computational projects.

2. PROJECT STORAGE - large input or output datasets must be stored here.
   
## QUEUES

Queue system may manage several different queues for managing differnet hardware configs

![Alt text](/ace-2023_-ace_2023_team-1/research_folder/Images/queues.png)

It is the responsibility of the user to send the tasks to the correct queue when sent to the queue system.

jobs are submitted to queue system via submission script specify not only the commands to be run by compute nodes but the resources needed as well. the queue system turns the script to a job and specifies job id to identify it.

![Alt text](/ace-2023_-ace_2023_team-1/research_folder/Images/submission_script.png)

once jobs are created by queue system they may wait for a bit before starting depending on resources requested and degree to which cluster is being used.

its the job of the queue scheduler to monitor usage patterns of cluster and determine the optimal optimal strategy for starting jobs on computer. It seeks to maximise use of computer and manage equitable access of computer.

![Alt text](/ace-2023_-ace_2023_team-1/research_folder/Images/queue_scheduler.png)

## SCRIPTS

Operation of computing clusters can be done via a unix command line interface (CLI ) or shell scripts which package sequences of commands allowing for optional arguements. 

Shell script can be created via a text editor like vim.
then system needs to be told the text file is to be considered a executable entity
this is done by setting its permission (read, write and execute) or alternatively,  scripts can be sourced

1. when a shell is executed, a new shell is created or forked and the script is run entirely within the new shell, once complete the forked shell is destroyed and execution return to original shell. As a result, execution occurs in a clean and newly iinitialised environment. 

2. When a script is sourced, it is run within the current shell with its current environment

shell scripts can also receive parameters when executed, and within script these parameters are referenced by a dollar sign followed by a  number $1, $2, $3, ... $n.

## WORKING WITH QUEUES - SUBMISSION SCRIPTS.

submission scripts are shell scripts with additional specialised directives to specify resource requirements, job names, etc. execution privelegesn do not need to be set by chmod. These scripts are sent to the queue with a specialised command which depends on queue system used. Queue management system used here is SLURM - Simple Linux Utility Resource Manager. SLURM submission command is sbastch jobscript.

because there is no way of knowing when or where the job will execute, it is not practical to monitor output of job with the shell we submitted it in. Therefore, standard output produced by job is send to a file. By default, for a jopb with a given name and id the file will be name < name >.o< jobid >

## LOGGING IN COMPUTER CLUSTER

Computing clusters can only be accessed via head nodes, this must be achieved using secure shell (SSH) protocol. external node to compute nodes is not possible.

# SLURM

- preferred way to use a supercomputer is through submitting batch jobs toa  scheduler which governs access to compute nodes

- basic goal of queue system is maximise use of hpc and to do in a fair manner

- ease workload for users and perform complex computation

SLURM is an open source, fault tolerant and highly scalable cluster ,management and job scheduling system for large and small linux clusters.

Developed at Livermore Computing Center, and has grown into a large open source project.

## KEY FUNCTIONS

1. to give users access to rtesources for specified period of time.
   
2. provide a framework for starting, executing and monitoring work on compute nodes.
   
3. to arbitrate contention for resources by managing a queue of pending work.

## ARCHITECTURE

slurm consists of a daemon called slurmd which runs on each compoute node anda  central daemon called alurmctld running on a management node.

info can be queried via several command and can be run in the cluster.

## ENTITIES MANAGED BY SLURM DAEMONS

nodes : computer resources in slurm.

partitions - which group nodes into logical sets, jobs or allocation of resources. can be considered job queues with constraints such as job size limit, job time limit, users permitted to use it, etc.

job steps - set of tasks (maybe parallel) within the job.
