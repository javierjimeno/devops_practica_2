
#!/bin/bash

# configuración común para todos los nodos
ansible-playbook -i hosts 01-configuracion-comun.yaml

# configuración del nodo NFS
ansible-playbook -i hosts 02-configuracion-nfs.yaml

# condiguracion nodos master y workers
ansible-playbook -i hosts 03-configuracion-nodos.yaml

# configuración de kubernetes en nodos master y workers
ansible-playbook -i hosts 04-configuracion-kubernetes.yaml

# configuración de SDN en nodo master
ansible-playbook -i hosts 05-configuracion-sdn.yaml

# configuración de nodos workers
ansible-playbook -i hosts 06-configuracion-workers.yaml

# Instalación de ingress controller en nodo master
ansible-playbook -i hosts 07-configuracion-ingress.yaml