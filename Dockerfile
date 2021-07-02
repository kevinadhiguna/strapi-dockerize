# A dockerfile must always start by importing the base image.
# We use the keyword 'FROM' to do that.
# In our example, we want to import the Strapi image.
# So we write 'strapi/base' for the image name. ':14' is a tag that means we use NodeJS v14 (The latest LTS version).
FROM strapi/base:14

# Set Environment to Production Environment (You can include the values directly although it's not recommended)
ENV DATABASE_HOST $DATABASE_HOST
ENV DATABASE_SRV $DATABASE_SRV
ENV DATABASE_PORT $DATABASE_PORT
ENV DATABASE_NAME $DATABASE_NAME
ENV DATABASE_USERNAME $DATABASE_USERNAME
ENV DATABASE_PASSWORD $DATABASE_PASSWORD
ENV DATABASE_SSL $DATABASE_SSL
ENV CORS_ORIGIN $CORS_ORIGIN
ENV AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY $AWS_SECRET_ACCESS_KEY
ENV AWS_REGION $AWS_REGION
ENV EMAIL_DEFAULT_FROM $EMAIL_DEFAULT_FROM
ENV EMAIL_DEFAULT_REPLY_TO $EMAIL_DEFAULT_REPLY_TO
ENV AWS_BUCKET $AWS_BUCKET
ENV AWS_S3_STORAGE_CLASSES $AWS_S3_STORAGE_CLASSES
ENV CLOUD_NAME $CLOUD_NAME
ENV API_KEY $API_KEY
ENV API_SECRET $API_SECRET
ENV SENTRY_DSN $SENTRY_DSN
ENV HOST $HOST
ENV PORT $PORT
ENV ADMIN_JWT_SECRET $ADMIN_JWT_SECRET
ENV NODE_ENV $NODE_ENV

# Set up working directory that will be used to copy files/directories below :
WORKDIR /app

# Copy package.json to root directory inside Docker container of Strapi app
COPY package.json .

# Copy yarn.lock to root directory inside Docker container of Strapi app
COPY yarn.lock .

# Install dependencies, but not generate a yarn.lock lockfile and fail if an update is needed. 
RUN yarn install --frozen-lockfile

# == Copy required files ==
# In order to launch our Strapi app, we must import it into our image.
# We use the keyword 'COPY' to do that.
# The first parameter is the name of the file on the host.
# The second parameter is the path where to put the file on the image.
# '.' or '/' means the file will be put in the image root folder.
COPY favicon.ico .
COPY public/robots.txt public/
COPY public/index.html public/
COPY extensions/ extensions/
# COPY exports/ exports/
COPY api/ api/
COPY config/ config/

# Generate a folder called 'dist'.
# A 'dist' folder stands for distributable and refers to a directory where files will be stored that can be directly used by others without the need to compile or minify the source code that is being reused.
RUN yarn build

# Run on port 1337
EXPOSE 1337

# We need to define the command to launch when we are going to run the image.
# We use the keyword 'CMD' to do that.
# The following command will execute "yarn start".
CMD ["yarn", "start"]
