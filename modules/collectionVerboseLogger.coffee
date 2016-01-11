_ = require('underscore')

module.exports = ({logger, app}, next) ->

  next
    send: (data, {req}) ->
      logger.log ">>> Collecting for", req.ip
      for key in _.keys(data)
        logger.log key, data[key]

