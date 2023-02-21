# This is for PG & PGadmin deployment using docker-compose

# start pg & pgadmin
sudo docker-compose -p ${PROJ_NAME} up -d

# make sure the volume own the rights
sudo chown -R 5050:5050 /var/lib/docker/volumes/${PROJ_NAME}-pgadmin/_data

# stop pg & pgadmin
sudo docker-compose -p ${PROJ_NAME} down

# clear the storage
sudo docker volume rm ${PROJ_NAME}-pgadmin ${PROJ_NAME}-pgdata

# stop pg & pgadmin and clear the storage
sudo docker-compose -p ${PROJ_NAME} down -v

# pgadmin file management
/var/lib/docker/volumes/${PROJ_NAME}-pgadmin/_data/storage/{account_name}/
