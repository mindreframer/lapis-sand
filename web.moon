lapis = require "lapis"

lapis.serve class extends lapis.Application
  "/": =>
    "Welcome to Lapis, this seems to work #{require "lapis.version"}!"

  "/fact": =>
      ngx.var.arg_b

  "/api": =>
    v = {dog: 5, cat: 6, redis: "something", and: "it sucks not"}
    layout: false, cjson.encode(v)

  "/no_layout": =>
    layout: false, "No layout rendered!"