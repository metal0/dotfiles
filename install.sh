#!/bin/bash


# Git config
git config --global pull.rebase true
git config --global push.autoSetupRemote true

# Git Aliases
git config --global alias.ci "commit -m"
git config --global alias.co "checkout"
git config --global alias.cm "checkout main"
git config --global alias.cb "checkout -b"
git config --global alias.st "status -sb"
git config --global alias.sf "show --name-only"
git config --global alias.lg "log --pretty=format:'%Cred%h%Creset %C(bold)%cr%Creset %Cgreen<%an>%Creset %s' --max-count=30"
git config --global alias.incoming "!(git fetch --quiet && git log --pretty=format:'%C(yellow)%h %C(white)- %C(red)%an %C(white)- %C(cyan)%d%Creset %s %C(white)- %ar%Creset' ..@{u})"
git config --global alias.outgoing "!(git fetch --quiet && git log --pretty=format:'%C(yellow)%h %C(white)- %C(red)%an %C(white)- %C(cyan)%d%Creset %s %C(white)- %ar%Creset' @{u}..)"
git config --global alias.unstage "reset HEAD --"
git config --global alias.undo "checkout --"
git config --global alias.rb "reset --soft HEAD~1"
git config --global alias.committers "!(git log | grep Author | sort | uniq -c | sort -n -r)"
git config --global alias.clean "git clean -df"
git config --global alias.resign "!f() { git rebase --exec 'git commit --amend --no-edit -n -S' -i $1; }; f"
git config --global alias.resignlast "rebase --exec 'git commit --amend --no-edit -n -S'"
git config --global alias.rename "!sh -c 'git branch -m `git rev-parse --abbrev-ref HEAD` $1'"
git config --global alias.amend "commit --amend --no-edit -m"
git config --global alias.cim "!sh -c 'git commit -m \"`curl https://whatthecommit.com/index.txt`\"'"
git config --global alias.cimc "!sh -c 'git commit -m \"chore: `curl https://whatthecommit.com/index.txt`\"'"
