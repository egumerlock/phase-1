How does tracking and adding changes make developers' lives easier?
-It makes the project more organized in the sense that everyone can see what everyone is doing, did, and when it was done. This way, before starting work, a developer can see who did what, why, and how. It can also be used to to revert to an older stage in the project has a bug in it.
What is a commit?
-A commit is like a checkpoint in git. It allows users to save changes without overwriting the previous ones, essentially creating another, modified version of the version previous to it
What are the best practices for commit messages?
The head of the message should be treated like an email subject line. It should be concise, no more than 50 characters, and capitalized. It should be in the imperitive form to reflect what the additional code does. The body of the message can delve further into details of what the addition does as well as any comments or descriptions. Use paragraphs or bullet points. The whole message should be wrapped to 72 columns as well for easier reading.
What does the HEAD^ argument mean?
-The HEAD^ arguement is used in the case that one commits changes and then decides he wants to change the file after it is already commited. the arguement will bring you to the last commit.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
- The first stage is taking a file from github and bringing it onto your computer. That is done by using the git pull command on the command line and creating a new branch to put the file into. The second stage is adding and commiting the changes through your command line using the git add and git commit -m commands. This creates a new version of the file in the newly created branch. Once that is done the third stage is to push the newly commited file back to github using the git push origin command. If you decide to merge the new file with the master, you should delete the branch used to make the change to keep it organized.
Write a handy cheatsheet of the commands you need to commit your changes?
-git add - adds a file to be tracked
-git commit -m - Commits the changed file with a message written in quotation marks.
What is a pull request and how do you create and merge one?
- A pull request notifies anyone who is working on the same project about the changes you made. These people can then review the changes and if they decide that it works, can merge it with the master branch. You create a pull request on github after you push the changes from your computer to github. Pressing the pull request button will allow you to leave a message and a description of the changes. After this is done you can press the merge button to merge.
Why are pull requests preferred when working with teams?
- Pull requests are the perferred method when working with teams because it allows the team to review the could and agree on any changes before actually merging them into the actual master branch.