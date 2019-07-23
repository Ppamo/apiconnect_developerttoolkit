# API Connect Developer Toolkit
##### English:
This image is based on a node:8-alpine image and install the API Connect Developer Toolkit, using the npm package [apiconnect](https://www.npmjs.com/package/apiconnect).

### Usage
To start the *Developer Toolkit* Web interface you should run the following command from a command line console connected to docker:
```sh
docker run -d -e ACCEPT_LICENSE=y --rm -p 9090:9090 --name apic --volume $PWD:/apis ppamo/apiconnect_developertoolkit
```

This command should be executed from the folder where the YAML files from your products and APIs are placed, because this command will mount the local folder in the /apis folder in the container, which is the working path defined in Dockerfile.

The environment variable ACCEPT_LICENSE is used to accept the product's use license, which you can view with the following command:
```sh
docker run --rm -ti ppamo/apiconnect_developertoolkit cat /usr/local/lib/node_modules/apiconnect/non_ibm_license.txt
```

&nbsp;

&nbsp;

&nbsp;

##### Español
Esta imagen está basada en node:8-alpine e instala el *API Connect Developer Toolkit*, utilizando el paquete npm [apiconnect](https://www.npmjs.com/package/apiconnect).

### Uso:
Para iniciar la interfaz del *Developer Toolkit* debes ejecutar el siguiente comando desde una consola con acceso a docker:
```sh
docker run -d -e ACCEPT_LICENSE=y --rm -p 9090:9090 --name apic --volume $PWD:/apis ppamo/apiconnect_developertoolkit
```

El comando lo debes ejecutar desde la carpeta donde se encuentren las APIs que deseas editar, ya que el comando montará la carpeta actual, en el directorio /apis, que es la ruta de trabajo definida en el Dockerfile.

Las variable ACCEPT_LICENSE indica que estas aceptando la licencia de uso del producto, que puedes leer usando el siguiente comando:
```sh
docker run --rm -ti ppamo/apiconnect_developertoolkit cat /usr/local/lib/node_modules/apiconnect/non_ibm_license.txt
```
