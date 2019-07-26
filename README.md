# API Connect Developer Toolkit
##### English:
This image is based on *node:8-alpine* and it installs the *API Connect Developer Toolkit*, using the NPM package [Api Connect](https://www.npmjs.com/package/apiconnect).

### Usage
To start the *Developer Toolkit* Web interface you should run the following command from a command line console connected to docker:
```sh
docker run -d --rm \
	-e ACCEPT_LICENSE=y \
	-p 9090:9090 \
	--name apic \
	--volume $PWD:/apis \
	ppamo/apiconnect_developertoolkit
```

This command should be executed from the folder where the YAML files from your products and APIs are placed, because this command will mount the local folder in the /apis folder in the container, which is the working path defined in Dockerfile.

The environment variable ACCEPT_LICENSE is used to accept the product's use license, which you can view with the following command:
```sh
docker run --rm -ti \
	ppamo/apiconnect_developertoolkit \
	cat /usr/local/lib/node_modules/apiconnect/non_ibm_license.txt
```

### Tags:

The tags were copied from the NPM Repository of [API Connect](https://www.npmjs.com/package/apiconnect) package.   And these has been created to trigger the docker hub automated build process.   To differentiate a build from other I added a suffix indicating the build number.   As an example, the NPM package version *v1.0.3* has two build tags: *v1.0.3.0* and *v1.0.3.1*, but only one of those tag is available to pull, that means that the first build (*v1.0.3.0*) failed.


&nbsp;

***

##### Español
Esta imagen está basada en node:8-alpine e instala el *API Connect Developer Toolkit*, utilizando el paquete NPM [Api Connect](https://www.npmjs.com/package/apiconnect).

### Uso:
Para iniciar la interfaz del *Developer Toolkit* debes ejecutar el siguiente comando desde una consola con acceso a docker:
```sh
docker run -d --rm \
	-e ACCEPT_LICENSE=y \
	-p 9090:9090 \
	--name apic \
	--volume $PWD:/apis \
	ppamo/apiconnect_developertoolkit
```

El comando lo debes ejecutar desde la carpeta donde se encuentren las APIs que deseas editar, ya que el comando montará la carpeta actual, en el directorio /apis, que es la ruta de trabajo definida en el Dockerfile.

Las variable ACCEPT_LICENSE indica que estas aceptando la licencia de uso del producto, que puedes leer usando el siguiente comando:
```sh
docker run --rm -ti \
	ppamo/apiconnect_developertoolkit \
	cat /usr/local/lib/node_modules/apiconnect/non_ibm_license.txt
```

### Tags:
Los tags son los mismos que el paquete [API Connect](https://www.npmjs.com/package/apiconnect) tiene disponible en su repositorio NPM.   Y han sido creados con el fin de gatillar la construcción automática de Docker Hub.
Para diferenciar una construcción de otra agregué un sufijo al tag indicando el número de construcción.   Por ejemplo la versión del Paquete NPM *v1.0.3* tiene dos tags de construcción *v1.0.3.0* y *v1.0.3.1*, pero sólo la imagen *v1.0.3.1* esta disponible para la descarga, lo que significa que la primera construcción (*v1.0.3.0*) falló.
