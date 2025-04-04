---
title: "Implementing Signed Commits for a More Secure Hugo Workflow"
date: 2025-04-04T13:46:00Z # Use the current date/time
draft: false # Set to false so it gets published
tags: ["git", "security", "workflow", "hugo"]
---

Recently, we decided to enhance the security and integrity of our development workflow for this [Hugo](https://gohugo.io/) site by implementing signed [Git commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#_committing_changes). In this beginner-friendly guide, I'll explain what signed commits are, why they matter, and how you can set them up yourself—even if you're not particularly technical.

## What Are Signed Commits?

When you make changes to files in a [Git repository](https://docs.github.com/en/get-started/quickstart/github-glossary#repository) (the place where your website's code lives), each change is recorded as a "commit." Think of commits like entries in a logbook that track what changed, when it changed, and who made the change.

A [signed commit](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification) adds a [digital signature](https://en.wikipedia.org/wiki/Digital_signature) to this logbook entry, similar to how you might sign an important document. This signature verifies your identity as the author of the changes.

## Why Sign Commits?

As security expert [Bruce Schneier](https://www.schneier.com/) notes in his book "[Click Here to Kill Everybody](https://www.schneier.com/books/click-here/)," *"Security is not a product; it's a process."* Signed commits are part of that ongoing security process.

Signing your commits provides several benefits:

- **Prevents impersonation**: Nobody can pretend to be you and make changes in your name
- **Builds trust**: Team members can verify that changes truly came from you
- **Creates accountability**: There's a clear record of who made what changes
- **Protects your reputation**: Your name won't be associated with code you didn't write

## Step-by-Step Guide for Beginners

If you'd like to implement signed commits for your own projects, here's how to get started:

### 1. Choose a Signing Method

You have two main options:
- **[GPG (GNU Privacy Guard)](https://gnupg.org/)**: More widely used but slightly more complex
- **[SSH (Secure Shell)](https://en.wikipedia.org/wiki/Secure_Shell)**: Simpler if you already use SSH keys for GitHub

For beginners, I recommend SSH if you already use it to connect to GitHub.

### 2. Generate Your Keys

For detailed instructions with screenshots:
- [GitHub's official guide to generating a GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
- [GitHub's guide to generating an SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### 3. Configure Git to Use Your Key

Once you have your key, you'll need to tell Git to use it. Open your terminal or command prompt and run these commands (replacing the example values with your own):

For GPG:
```
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true
```

For SSH:
```
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true
```

### 4. Add Your Public Key to GitHub

For your signed commits to show as "Verified" on GitHub:
1. Go to your GitHub account settings
2. Select "SSH and GPG keys"
3. Click "New GPG key" or "New SSH key"
4. Paste your public key and save

### 5. Require Signed Commits (Optional)

If you manage a repository, you can require all contributors to sign their commits:
1. Go to your repository on GitHub
2. Click [Settings → Branches → Branch protection rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)
3. Select "[Require signed commits](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches#require-signed-commits)"

## Learn More

If you're new to Git or want to deepen your understanding:

- [Git for Humans](https://abookapart.com/products/git-for-humans) - A beginner-friendly book on Git
- [Pro Git](https://git-scm.com/book/en/v2) - The comprehensive, free Git reference
- [GitHub Skills](https://skills.github.com/) - Interactive courses on Git and GitHub

For more on security:
- [Bruce Schneier's blog](https://www.schneier.com/) - Insights from a leading security expert
- [GitHub's security documentation](https://docs.github.com/en/authentication/managing-commit-signature-verification)

Now, all commits pushed to our repository include a [verified signature](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits), adding trust to our development process and ensuring that our Hugo site's code remains secure and trustworthy.
