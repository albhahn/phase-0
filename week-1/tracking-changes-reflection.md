How does tracking and adding changes make developers lives easier?
It makes it easier particularly for a group/team of developers, as it allows each of them to work on any or same files at any time. Additionally you can see descriptions of exactly what was changed, which can help you understand how the file/project evolved with each change. It can also help oneself by being able to resort to and restore older versions of a file in case youre not satisfied with any current changes.

What is a commit?
It is like a saving point that also has a message describing what was changed/updated then saved.

What are the best practices for commit messages?
The first line should be capitalized, short and usually be treated as a subject line while the rest of the text should be the body with a blank line seperating the two. Use the imperative, present tense and seperate additional paragraphs with blank lines. Bullet points are typically used with hyphens or asterisks. Lastly, use a hanging indent.

What does the HEAD^ argument mean?
It means the last commit you worked on.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
Changes not staged for commit, changes to be commited, and untracked files. For untracked files you can add files with "git add..." which goes from untracked to staged. You can then also remove a file from what you added to go back to untracked by using "git reset HEAD ...". Additionally, you can still change files that you have already committed by using "git reset --soft HEAD^"

Write a handy cheatsheet of the commands you need to commit your changes?
git commit -m "messages goes here" = commit message
git log - commit history of selected repository
git status - check status of all files in local repo
git add . - add/include files that will be committed.
git reset HEAD ... - removes current files from added section to bring back to untracked.
git reset --soft HEAD^ - change files that was last committed.

What is a pull request and how do you create and merge one?
A pull request is a method that allows you to submit changes or contributions to a remote repository such as GitHub, and to tell others when a developer would like to commit changes. Once a pull request is sent, interested and involved parties can then review the set of changes. You can create a pull request once you create a fork from a selected repository from GitHub then push the changes youve made back into your GitHub account. From there youll go back to your fork on GitHub and click "Pull Request", verify that you are on all the correct branches, put a comment on what youve changed, then click "Create pull request". Now to merge your changes, you must click on the pull request you just made, and then click "Merge pull request". You will then have to click to confirm the merge.

Why are pull requests preferred when working with teams?
Pull requests are preferred because teams can work individually on the same project at any time by adding changes to files and showing how the changes may help improve the project. The team can also review all requested changes or changes that were made.