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
    upload: {
        provider: 'cloudinary',
        providerOptions: {
            cloud_name: env('CLOUD_NAME', ''),
            api_key: env('API_KEY', ''),
            api_secret: env('API_SECRET', '')
        }
    },
});
