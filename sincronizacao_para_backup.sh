#/bin/bash

### Sincronização entre a Pasta do Mount e a pasta FIXA de backup
cd
cd /
echo 'Iesjti2022@%_' | sudo -S rsync -auP /Replica_main_server /Servidor/
