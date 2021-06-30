
# oc new-project php-helloworld
# oc new-app centos/php-73-centos7~https://github.com/RedHatTraining/DO180-apps --context-dir  php-helloworld  --allow-missing-images --allow-missing-imagestream-tags --name php-helloworld
# oc expose svc/
# oc port-forward --address 192.168.1.210 pods/php-helloworld-76cb49bdbb-x627s 8081:8080
# oc logs -f, oc describe route/svc, oc get pods, oc get all 



oc -o yaml new-app centos/php-73-centos7~https://github.com/RedHatTraining/DO180-apps --context-dir  php-helloworld  --allow-missing-images --allow-missing-imagestream-tags --name php-helloworld > my-new-app.yaml


cli: new-app, route
gui: automated, uses template


chapter 2
podman run - parameters after image name as entry point. don't use -d. run overrides. httpd won't sttrt
entrypoint - process started inside container
-e TEST=123 printenv TEST
exec - access container
podman inspect | grep Env
linux-1 ansible_host=1.2.3.4




chapter 2
egistry_name/user_name/image_name:tag
podman search --list-tags registry.access.redhat.com/rhel
