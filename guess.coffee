prompt = require("prompt")

answer = Math.floor(Math.random() * 10 + 1)
prompt.message = "Question!"
prompt.start()
guessFunc = ->
  prompt.get
    properties:
      name:
        description: "Pick a number between 1 and 10".magenta,
    (err, result) ->
	    difference = parseInt(result.name) - answer
	    if parseInt(result.name) is answer
	      console.log "You, sir, are correct!"
	    else
	      console.log "Off by " + Math.abs(difference)
	      guessFunc()
	    return

  return

guessFunc()