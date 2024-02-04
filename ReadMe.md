# A Simple Way To Test Unity Webgl Build

## docker-compose

* Generate your own https certificate and put it in `docker-compose/nginx/ssl` folder
* Trust the certificate in your browser
* Place unity webgl build in `docker-compose/www` folder and run `docker-compose up`

## docker

* Generate your own https certificate and put it in `docker/nginx/ssl` folder
* Build docker image and push it to your docker registry
* Trust the certificate in your browser

* **Edit** And **Place** the `docker/unity-h5-test.sh` file to any where in your `$PATH` and remove the `.sh` extension

* At the root of your unity webgl build folder, run the following command

```bash
# use current dir as http root
unity-h5-test 

# use the specified dir as http root
unity-h5-test /path/to/your/webgl/build 
```

## Fast Way(Not Recommended)

* Trust the certificate `local.crt` in `docker/nginx/ssl/`
* **Place** the `docker/unity-h5-test.sh` file to any where in your `$PATH` and remove the `.sh` extension
* Run the following command

```bash
# use current dir as http root
unity-h5-test 

# use the specified dir as http root
unity-h5-test /path/to/your/webgl/build 
```

* The domain <https://local.darklinden.site> is directed to `127.0.0.1` will work
