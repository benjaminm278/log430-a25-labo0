set -a
source .env
set +a

ssh $USERNAME@$IP_ADDRESS << "EOF"
# Delete existing directory
rm -rf log430-a25-labo0

# Clone Git repository
git clone https://github.com/benjaminm278/log430-a25-labo0
cd log430-a25-labo0

# Build Docker image
docker build -t labo0-calculator .
#docker run -it labo0-calculator 

ls -l
EOF