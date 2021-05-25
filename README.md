<br />
<p align="center">
  <a href="https://github.com/kevinadhiguna/strapi-dockerize">
    <img src="https://s3.gifyu.com/images/4fgfcghvgyvtyy66564e.png" alt="Strapi Dockerize" border="0" width="250px" height="200px" />
  </a>

  <h3 align="center">Strapi Dockerize</h3>

  <p align="center">
    A Strapi app powered by Docker and docker-compose.
    <br />
    <a href="https://github.com/kevinadhiguna/strapi-dockerize/issues">Report Bug</a>
    ·
    <a href="https://github.com/kevinadhiguna/strapi-dockerize/issues">Request a Feature</a>
  </p>
</p>

## 📚 Table of Contents

- [🌈 About this project](#-about-this-project)
- [📖 How to Run](#-how-to-run)
  - [🧶 using `yarn`](#-using-yarn---setup-environment-variables-env-)
  - [🐋 using `docker-compose`](#-using-docker-compose---configure-docker-composeyml-)
- [📰 Related Articles](#-related-articles)

## 🌈 About this project

This is a Strapi app powered by Docker and docker-compose. Nevertheless, this app provides an example and a guide to configure your Strapi app with hosted database service such as MongoDB Atlas.

## 📖 How to Run

1) Clone this repository :
```bash
git clone https://github.com/kevinadhiguna/strapi-dockerize
```

2) Change directory
```bash
cd strapi-dockerize
```

3) Install dependencies (using `yarn`) :
```bash
yarn
```

4) Run your Strapi app either with `yarn` of `docker-compose` :
- If using `yarn`, please create `.env` then [set up environment variables]().
- If using `docker-compose`, please create `docker-compose.yaml` then [configure docker-compose]().

<br />
<hr />

### 🧶 using `Yarn` -> setup environment variables (`.env`) :

<br />

Please create a `.env` file based on `.env.example` file and fill in the variables mentioned below :

#### DATABASE_HOST

If you run your database locally or in your computer, fill :<br />
```bash
DATABASE_HOST=127.0.01
```

Otherwise, please enter your database host URL, such as :<br />
```bash
DATABASE_HOST=cluster3.abc65.mongodb.net
```

The above is an example if you host your database in [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).

#### DATABASE_SRV

Value of Database SRV in MongoDB. It could be either `true` or `false` as it is boolean. For example :<br />
```bash
DATABASE_SRV=true
```

>SRV is a way to specify a single hostname that resolves to multiple host names. When using SRV, the driver conducts an SRV lookup to get the actual names of all of the hosts. Also, when using SRV, the driver does lookups for TXT records, which can contain specific URI options to configure the driver.

Please have a look at [MongoDB community forum](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjl6OTUjOXwAhWY4nMBHa4RBgkQFjACegQIBhAD&url=https%3A%2F%2Fdeveloper.mongodb.com%2Fcommunity%2Fforums%2Ft%2Fmongodb-or-mongodb-srv%2F1654&usg=AOvVaw1nNUDlH5GVNZDFSL0jl2kj) for more.

#### DATABASE_PORT

Port that your Strapi app interacts with database management system (DBMS). For example :<br />
```bash
DATABASE_PORT=27017
```

#### DATABASE_NAME

The database name in database management system (e.g. : MongoDB, MySQL, PostgreSQL). For instance :<br />
```bash
DATABASE_NAME=myStrapiApp
```

#### DATABASE_USERNAME

The username of your database that you use in your Strapi app. For instance :<br />
```bash
DATABASE_USERNAME=admin
```

#### DATABASE_PASSWORD

The password of your database that you use in your Strapi app. For instance :<br />
```bash
DATABASE_PASSWORD=admin123
```

#### DATABASE_SSL

Usually, you set this field if your database in your Strapi app is hosted, for example : 
- [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) for MongoDB
- [Free MySQL Hosting](https://www.freemysqlhosting.net/) for MySQL
- [ElephantSQL](https://www.elephantsql.com/) for PostgreSQL

Then in order to establish a secure connection, you want enable SSL. If so, set :<br />
```bash
DATABASE_SSL=true
```

This fields is boolean. Hence, you can either set it to `true` or `false` only.


#### CORS_ORIGIN

Please add URL/IP address of :
- App's client-side (a Web App and/or a Mobile app)
- Strapi Admin Panel

CORS only cares three aspects, namely :
- Scheme (e.g. : `https`, `http`, etc.)
- URL/IP address
- Port

So, if your app's client-side and Strapi admin panel run on http://192.168.1.4:3000 and http://192.168.1.4:1337 respectively, you should write : 
```bash
CORS_ORIGIN=http://192.168.1.4:1337,http://192.168.1.4:3000
```

#### AWS_ACCESS_KEY_ID

For example :<br />
```bash
AWS_ACCESS_KEY_ID=DGHY4REH7IUVDF908UNV
```

#### AWS_SECRET_ACCESS_KEY

For example :<br />
```bash
AWS_SECRET_ACCESS_KEY=3bFhYF76zFG+5F78436KJ8bH3x19TALuIxytfNc/
```

#### AWS_REGION

For example :
```bash
AWS_REGION=eu-west-2
```

Please see [AWS service endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html) for details. 

#### EMAIL_DEFAULT_FROM

An email address your Strapi app will send an email from. For example :<br />
```bash
EMAIL_DEFAULT_DEFAULT_FROM=hello@example.com
```

#### EMAIL_DEFAULT_REPLY_TO

An email address your Strapi app will be receiving emails. For example :<br />
```bash
EMAIL_DEFAULT_REPLY_TO=reply@example.com
```

#### AWS_BUCKET_NAME

For example :
```bash
AWS_BUCKET_NAME=mybucket.mydomain.com
```

#### AWS_S3_STORAGE_CLASSES

For example :
```bash
AWS_S3_STORAGE_CLASSES=S3 Standard
```

You can read more about [AWS Storage Classes](https://aws.amazon.com/s3/storage-classes/).

#### CLOUD_NAME

This is the cloud name of your Coudinary account. <br />
This looks like :
```bash
CLOUD_NAME=ehsjuvnxpz
```

Please leave it blank if your Strapi app foes not use Cloudinary. 

#### API_KEY

This is API key from Cloudinary. <br />
For instance :
```bash
API_KEY=253857109845223
```

You can leave it blank if you do not use Cloudinary.

#### API_SECRET

This is API secret from Cloudinary. <br /> 
For example :
```bash
API_SECRET=DBVrte27_GtyrIUxFGydk_R8tRX
```

If you do not use Cloudinary, you can leave it blank.

#### HOST

Simply open terminal and type `ifconfig` (MacOS / Linux-based OS) or `ipconfig` (Windows). You should see like `192.168.1.4` which is the value of this variable.<br>
Example : 
```bash
HOST=http://192.168.1.4
```

#### PORT

Specify the port that you want to run.<br>
For example : 
```bash
PORT=1337
```

#### ADMIN_JWT_SECRET

Generate a secure token is required for superadmin authentication.<br>
In terminal, please type :
```bash
openssl rand 64 | base64 # (linux/macOS users)
# or
node -e "console.log(require('crypto').randomBytes(64).toString('base64'))" # (all users)
```

Then you should see something like this in your terminal :
```
ErhxCk10YqNCImwodl5Ml/Maqnw46oTyLjr+9Na4bjmJSLVWnCS90BJRAAkLsspj98caylAJgikBO9ZS0jEiOQ==
```

Please copy the token and assign it like this :

```bash
ADMIN_JWT_SECRET=ErhxCk10YqNCImwodl5Ml/Maqnw46oTyLjr+9Na4bjmJSLVWnCS90BJRAAkLsspj98caylAJgikBO9ZS0jEiOQ==
```

#### NODE_ENV

This refers to the environment that your application runs. It could be `development`, `staging`, `production`, or something else.<br/>
For example :
```bash
NODE_ENV=development
```

4) Start Strapi app :
```bash
yarn develop
```

5) Open Strapi admin panel in a browser.

<br />
<hr />

### 🐋 using `docker-compose` -> configure `docker-compose.yml` :

<br />

<b>Prerequisites :</b><br>
Please make sure you have Docker installed in your machine. Please refer [here](https://docs.docker.com/engine/install/) to install Docker.
<br>

1) Assign values of environment variables in `docker-compose.yml` file

#### NODE_ENV
Here we specify running environment whether it is `production`, `staging`, `development`, etc.
Using `staging` and `development` will turn on AWS S3 storage.

Example:

```bash
NODE_ENV: prodcution
```

#### DATABASE_CLIENT
Name of the database client. We use MongoDB so the value is `mongo`.<br>
```bash
DATABASE_CLIENT: mongo
```

#### DATABASE_HOST
Host of database such as `127.0.0.1` (localhost) or a URL like `cluster3.abc65.mongodb.net` if you useMongoDB Atlas. This is just an example if you run it locally :<br>
```bash
DATABASE_HOST: 127.0.0.1
```

#### DATABASE_SRV
Please note that it MUST be string or null. Possible values : `true` or `false`. For instance :<br>
```bash
DATABASE_SRV: true
```

#### DATABASE_PORT
Determine the port that will be used for database management system that serves this app. Below is an example :<br>
```bash
DATABASE_PORT: 27017
```
      
#### DATABASE_NAME
Please name the database name. Let's say :<br>
```bash
DATABASE_NAME: myStrapiApp
```

#### DATABASE_USERNAME
Username of database, such as :<br>
```bash
DATABASE_USERNAME: admin
```

#### DATABASE_PASSWORD  
Generate a strong password for database, namely : <br>
```bash
DATABASE_PASSWORD: admin
```
      
#### DATABASE_SSL
Enable Secure Socket Layer (SSL) ? If so, please fill `'true'` otherwise `'false'`. Please note that this MUST be string or null. As an example :<br>
```bash
DATABASE_SSL: 'true'
```
      
#### CORS_ORIGIN
Put allowed Cross-Origin Resource Sharing (CORS) origin here. It is possibly only one or even more. To illustrate :<br>
```bash
CORS_ORIGIN: http://192.168.1.4:8000,http://192.168.1.4:3000,http://192.168.1.4:1337
```
Read [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) for more.
      
#### ADMIN_JWT_SECRET
Generate a secure token for superadmin authentication. Below is an example :<br>
```bash
ADMIN_JWT_SECRET: ErhxCk10YqNCImwodl5Ml/Maqnw46oTyLjr+9Na4bjmJSLVWnCS90BJRAAkLsspj98caylAJgikBO9ZS0jEiOQ==
```

Please refer to [How to generate Admin JWT Secret](#admin-jwt-secret) above for more.

#### PORTS
These ports are not meant for database management system but for the app. There are a couple of ports which are host port and container port. Host port is a port exposed to public. Meanwhile, container port is an internal port that will be accessed through the machine you use. In particular :<br>
```bash
ports:
    - '1337:1337'
```

#### AWS environment variables

* `AWS_REGION` 
* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `AWS_BUCKET`

2. Run your App
If you run it for the first time or make changes, please run :
```bash
docker-compose up --build
```

If you do not make changes but want to run the app again :
```bash
docker-compose up
```

<br />

📝 **Note** : If you want to check the files inside the Docker container, you can use:

```bash
docker-compose exec strapi /bin/sh
```

<!--
### How to stop the app :
Press `ctrl + c` to stop it.

## Build Docker Image & Push to AWS ECR

In GitLab project, after creating `.gitlab-ci.yml`, set build variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` from IAM user `ecr`.

```bash
# To push Docker image to 'staging' tag
git push origin master:staging

# To push Docker image to 'production' tag
git push origin master:production
```
-->

<br />
<hr />

## 📰 Related Articles

- [How to setup Amazon S3 upload provider in your Strapi app](https://dev.to/kevinadhiguna/how-to-setup-amazon-s3-upload-provider-in-your-strapi-app-1opc)
- [How to setup AWS SES email provider in your Strapi app](https://dev.to/kevinadhiguna/how-to-setup-aws-ses-email-provider-in-your-strapi-app-2lf2)
- [What is CORS ? How to configure CORS in Strapi ?](https://dev.to/kevinadhiguna/what-is-cors-how-to-configure-cors-in-strapi-461b)
- [How to disable telemetry in Strapi](https://dev.to/kevinadhiguna/disable-telemetry-in-strapi-2egf)

Also, this article might be helpful to use this project : https://about.lovia.life/creating-strapi-app-image-with-docker/.
<br />

Thanks!

<br />

[![Visits Badge](https://badges.pufler.dev/visits/kevinadhiguna/strapi-dockerize)](https://github.com/kevinadhiguna)
