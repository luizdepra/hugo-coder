---
title: "Implementing Signed Commits for a More Secure Hugo Workflow"
date: 2025-04-04T13:46:00Z # Use the current date/time
draft: false # Set to false so it gets published
tags: ["git", "security", "workflow", "hugo"]
---

Recently, we decided to enhance the security and integrity of our development workflow for this Hugo site by implementing signed Git commits. This ensures that every change merged into our main branch can be cryptographically verified to originate from a trusted author.

**Why Sign Commits?**

Signing commits provides an extra layer of security... [briefly explain benefits like preventing impersonation, traceability].

**Our Process**

The setup involved a few key steps:
1. Choosing a signing method (GPG or SSH).
2. Generating the necessary keys.
3. Configuring Git locally to use the key (`user.signingkey`) and sign commits automatically (`commit.gpgsign true`).
4. Adding the public key to GitHub for verification.
5. Updating our `main` branch protection rules on GitHub to *require* signed commits.

Now, all commits pushed to our repository include a verified signature, adding trust to our development process.