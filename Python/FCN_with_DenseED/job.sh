#!/bin/csh

#$ -M vmannam@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -q gpu		 # Specify queue
#$ -l gpu_card=1
#$ -N vm6142         # Specify job name

#$ -pe smp 4                # Specify parallel environment and legal core size
setenv OMP_NUM_THREADS 4	         # Required modules

module load pytorch/1.0.0
nvidia-smi
python dense_net_training_configuration_adam_loss_256_large_data_vm6142.py

