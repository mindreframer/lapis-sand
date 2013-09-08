lapis = require "lapis"

lapis.serve class extends lapis.Application
  "/": =>
    "Welcome to Lapis, this seems to work #{require "lapis.version"}!"


  "/fact": =>
      ngx.var.arg_b