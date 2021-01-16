const PROXY_CONFIG = [
  {
      context: [
          "/apis"
      ],
      target: "https://localhost:44339",
      secure: false,
      logLevel : "debug"
  },
  {
    context: [
        "/api"
    ],
    target: "https://localhost:44371",
    secure: false,
    logLevel : "debug"
 }
]

module.exports = PROXY_CONFIG;
