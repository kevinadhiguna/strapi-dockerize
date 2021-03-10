module.exports = ({ env }) => ({
  settings: {
    cors: {
      enabled: true,
      // Configure CORS to app's client-side and Strapi client (admin panel)
      // client-side 1 : http://localhost:3000
      // client-side 2 : http://localhost:8000
      // Strapi client (admin panel) : http://localhost:1337
      origin: env('CORS_ORIGIN', 'http://localhost:3000,http://localhost:8000,http://localhost:1337').split(",")
    }
  }
});
