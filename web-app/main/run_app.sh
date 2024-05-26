#!/bin/bash
#SBATCH -A dep # account
#SBATCH -n 2 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH -D /hhome/nlp2_g09/Project/web-app # working directory
#SBATCH -p dcca40 # Partition to submit to
#SBATCH --mem 2048 # 2GB solicitados.
#SBATCH -o tmp/%x_%u_%j.out # File to which STDOUT will be written
#SBATCH -e tmp/%x_%u_%j.err # File to which STDERR will be written
#SBATCH --gres gpu:1 # Para pedir gráficas

# Set the CUDA_VISIBLE_DEVICES environment variable to use the first available GPU (adjust as needed)
export CUDA_VISIBLE_DEVICES=3

# Run the test script
#!/bin/bash
export PYTHONPATH="/path/to/GoLLIE_MED/src:$PYTHONPATH"
python /export/hhome/nlp2_g09/recsum/web-app/app.py