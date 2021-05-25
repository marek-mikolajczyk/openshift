
# oc new-project php-helloworld
# oc new-app centos/php-73-centos7~https://github.com/RedHatTraining/DO180-apps --context-dir  php-helloworld  --allow-missing-images --allow-missing-imagestream-tags --name php-helloworld
# oc expose svc/
# oc port-forward --address 192.168.1.210 pods/php-helloworld-76cb49bdbb-x627s 8081:8080
# oc logs -f, oc describe route/svc, oc get pods, oc get all 



oc -o yaml new-app centos/php-73-centos7~https://github.com/RedHatTraining/DO180-apps --context-dir  php-helloworld  --allow-missing-images --allow-missing-imagestream-tags --name php-helloworld > my-new-app.yaml


cli: new-app, route
gui: automated, uses template
