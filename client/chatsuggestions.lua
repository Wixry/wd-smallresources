TriggerEvent('chat:addSuggestion', '/hirepolice', 'Hire a new officer', {
    { name="id", help="Id of player" },
    { name="grade", help="Grade which the player gets." }
})

TriggerEvent('chat:addSuggestion', '/firepolice', 'fire a officer', {
    { name="id", help="Id of player" }
})

TriggerEvent('chat:addSuggestion', '/id', 'Get your own id', {})