---
description: Stage, Commit, and Push changes to GitHub
---

1. Check git status to see what will be changed
```
git status
```

2. Add all changes
```
git add .
```

3. Commit changes (Prompt for message if not provided)
This step requires user input. I will create a python script on the fly or just use the agent to ask.
Actually, for an agent workflow, I can just pause or rely on the agent to construct the command. 
Structure for the agent:
```
# The agent should ask the user for a commit message if one wasn't provided in the request.
# Then run: git commit -m "MESSAGE"
```

4. Push to origin
```
git push
```
