# logiQ
![image](https://user-images.githubusercontent.com/123085186/213489042-462c2415-3aa4-49a2-a480-202c80039f1a.png)


logiQ is the simplest version of the AI implementation, containing in the basic version answers based on the master word, which is taken as the first word in the sentence and completed by random (the more frequent the use, the more likely it is) pairwise compatible words stored in the ai table. memory in the form {["hello"] = {"world", "user", "GitHub"}} and padded with data that the user enters. By the way, the basic version, which works out of the box with only the basic Lua library, takes only 680 KiB, which allows it to be transferred in less than 100 seconds over a 56 KBaud line.


About my code:


ai.memory - contains the pairs of words described above.

ai.think(str) - takes string, renturns a master word and adds all words to ai.memory.

ai.say(subject, master) - takes master word to subject and and true value to master to highlight main function call, generates and prints answer.


I hope you understand)
