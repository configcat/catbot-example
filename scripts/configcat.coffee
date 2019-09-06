module.exports = (robot) ->
    robot.hear /health/i, (reply) ->
        robot.http("https://api.configcat.com/api/v1/health")
        .get() (err, res, body) ->
            reply.send body