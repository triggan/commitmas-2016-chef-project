# Comitmas Fork Instructions

So you joined the team and did a fork of our repo, awesome! First steps have been taken and your on your way. But wait....someone made an update to the master repo and you don't have that latest change? Here is how we can get your repo in sync with the master branch on the Team Chef repo:

1. Clone your fork:

(You may have done this already, but we are starting from the very beginning here)

<pre><code data-trim class="bash">

git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git

</code></pre>

This pulls the repo from your GitHub fork to your local repository on your machine.

2. Add remote from original repository in your forked repository:

<pre><code data-trim class="bash">
cd into/cloned/fork-repo
git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
git fetch upstream
</code></pre>

This last command is the one that grabs everything and puts it into your working branch. If you want it to grab the main repo and put it into another branch, just switch to that branch first.

3. Updating your fork from original repo to keep up with their changes:
<pre><code data-trim class="bash">
git pull upstream master
</code></pre>

If you run the commands in step 2, this isn't really needed. But when you get the remote add done, you can run this command to pull the repo down and merge it into your local repo in one single step instead of it pulling down into a specific branch.

4. Push your local repo up to your fork:

<pre><code data-trim class="bash">
git push -u origin master
</code></pre>

This one is important, this will push all the changes from your local repo up to your GitHub repo master branch. If you don't run this, all the changes from the main Chef repo will just sit on your computer and not go anywhere.

Ok, I hope that helps out. Please update this document for clarity if I confused you. Let me know if you have any questions. 
