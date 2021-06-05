module.exports = ({ env }) => ({
  email: {
    provider: 'amazon-ses',
    providerOptions: {
      key: env('AWS_ACCESS_KEY_ID'),
      secret: env('AWS_SECRET_ACCESS_KEY'),
      amazon: `https://email.${env('AWS_REGION')}.amazonaws.com`
    },
    settings: {
      defaultFrom: env('EMAIL_DEFAULT_FROM'),
      defaultReplyTo: env('EMAIL_DEFAULT_REPLY_TO')
    }
  },
  // == Please choose either for upload ==
  // -- 1st option: AWS Simple Storage Service (S3) configuration --
  // upload: {
  //   provider: 'aws-s3',
  //   providerOptions: {
  //     accessKeyId: env('AWS_ACCESS_KEY_ID'),
  //     secretAccessKey: env('AWS_ACCESS_SECRET_KEY'),
  //     region: env('AWS_REGION'),
  //     params: {
  //       Bucket: env('AWS_BUCKET'),
  //       StorageClass: env('AWS_S3_STORAGE_CLASSES') // Configure your Amazon S3 Storage Classes (including this to environment variable is not a must)
  //     },
  //     logger: console // Only if you want to `stdout` logs
  //   }
  // },
  // -- 2nd option: Cloudinary configuration --
  upload: {
    provider: 'cloudinary',
    providerOptions: {
      cloud_name: env('CLOUD_NAME', ''),
      api_key: env('API_KEY', ''),
      api_secret: env('API_SECRET', '')
    }
  },
  sentry: {
    dsn: env('SENTRY_DSN'),
    sendMetadata: false
  }
});
