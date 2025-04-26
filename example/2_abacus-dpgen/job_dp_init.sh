#!/bin/bash
#SBATCH -o slurm.%j.out
#SBATCH --qos=low
#SBATCH -] dpinit
#SBATCH --nodes=1
#SBATCH --ntasks=64
#SBATCH -t 120:0:0
#SBATCH --account hpc0006168316
#SBATCH--partition C064M0256G

dpgen init_bulk /lustre/home/2201210084/abacus_learn/example/2_abacus-dpgen/init/3C/param.json /lustre/home/2201210084/abacus_learn/example/2_abacus-dpgen/init/3C/machine_wm.json
