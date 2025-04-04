+++
title = "How to Implement Git Signed Commits: A Simple Security Guide for Hugo Users"
date = 2024-02-15T13:46:00Z
draft = false
description = "Learn how to secure your Git workflow with signed commits. This step-by-step guide explains digital signatures, GPG and SSH keys, and how to verify your identity when contributing to projects."
tags = ["git security", "signed commits", "digital signatures", "hugo workflow", "github security", "gpg keys", "ssh keys"]
+++

I recently added an important security layer to this [Hugo](https://gohugo.io/) site: signed [Git commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#_committing_changes). This simple change makes a big difference in protecting our work.

In this guide, I'll explain signed commits in plain language. You'll learn what they are, why they matter, and how to set them up yourself—no advanced technical knowledge required.

## What Are Signed Commits?

Every time you save changes to your [Git repository](https://docs.github.com/en/get-started/quickstart/github-glossary#repository), you create a "commit"—an entry in your project's history log. Each commit records what changed, when, and who made the change.

A [signed commit](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification) adds your personal [digital signature](https://en.wikipedia.org/wiki/Digital_signature) to this entry. Think of it like signing a check or legal document—it proves you're really the person who made those changes.

## Why Sign Your Commits?

Security expert [Bruce Schneier](https://www.schneier.com/) wisely points out in "[Click Here to Kill Everybody](https://www.schneier.com/books/click-here/)" that *"Security is not a product; it's a process."* Signed commits are a simple step in that ongoing process.

When you sign your commits, you:

- **Prevent identity theft**: No one can make changes pretending to be you
- **Build team trust**: Colleagues know changes truly came from you
- **Create clear accountability**: There's proof of who changed what
- **Protect your professional reputation**: Your name stays connected only to your actual work
- **Strengthen project integrity**: The entire codebase becomes more trustworthy

## How to Set Up Signed Commits: A Simple Guide

Setting up signed commits takes just a few minutes. Here's how to do it:

### 1. Choose Your Signing Method

You have two options:
- **[GPG keys](https://gnupg.org/)**: The traditional approach, widely supported
- **[SSH keys](https://en.wikipedia.org/wiki/Secure_Shell)**: Easier if you already use SSH for GitHub

My recommendation: If you already use SSH to connect to GitHub, stick with SSH keys—it's simpler.

### 2. Create Your Keys

Follow these clear, official guides with screenshots:
- For GPG: [GitHub's guide to generating a GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
- For SSH: [GitHub's guide to generating an SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### 3. Tell Git to Use Your Key

After creating your key, you need to tell Git to use it. Open your terminal and run these commands:

If you chose GPG:
```
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true
```

If you chose SSH:
```
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true
```

(Replace `YOUR_KEY_ID` or the SSH path with your actual key information)

### 4. Add Your Public Key to GitHub

To make your commits show as "Verified" on GitHub:
1. Go to your GitHub account settings
2. Click "SSH and GPG keys"
3. Select "New GPG key" or "New SSH key"
4. Paste your public key and save it

That's it! GitHub now recognizes your signature.

### 5. Enforce Signed Commits for Your Team (Optional)

If you manage a project, you can require everyone to sign their commits:
1. Go to your GitHub repository
2. Navigate to [Settings → Branches → Branch protection rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)
3. Check "[Require signed commits](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches#require-signed-commits)"

This ensures every change to your project comes from a verified contributor.

## Troubleshooting Common Issues

Having problems? Here are quick solutions to common issues:

- **"Error: secret key not available"**: Your GPG key isn't accessible. Try running `gpg --list-secret-keys` to verify it exists.
- **Commits not showing as verified**: Make sure the email in your Git config matches the one associated with your key.
- **SSH key not working**: Ensure you've added the correct public key to GitHub and that your path is correct.

## Learn More About Git and Security

To deepen your understanding:

- [Git for Humans](https://abookapart.com/products/git-for-humans) - A friendly, jargon-free introduction to Git
- [Pro Git](https://git-scm.com/book/en/v2) - The comprehensive, free reference book
- [GitHub Skills](https://skills.github.com/) - Interactive tutorials for Git beginners

For security insights:
- [Bruce Schneier's blog](https://www.schneier.com/) - Practical security wisdom from a leading expert
- [GitHub's security documentation](https://docs.github.com/en/authentication/managing-commit-signature-verification) - Official guides on commit verification

## Conclusion

With signed commits, every change to our Hugo site now includes a [verified signature](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits). This simple practice significantly improves our security posture and builds trust in our development process.

The small effort to set up signed commits pays off with lasting protection for your work and reputation. I encourage you to implement this practice in your own projects—your future self will thank you.
