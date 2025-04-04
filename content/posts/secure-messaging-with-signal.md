+++
title = "Signal for Writers: Secure Confidential Messaging"
authors = ["Matthew Stevens"]
date = 2024-03-28T10:00:00Z
draft = false
description = "Learn why Signal is the preferred messaging app for writers who need to protect sources and confidential communications."
categories = ["security"]
tags = ["signal", "secure messaging", "privacy", "encryption", "journalism", "source protection", "communication security"]
series = ["Documentation"]
+++

Last month, I wrote about [securing your email with GPG encryption](/posts/email-security-for-writers/). Today, I want to discuss another essential tool in a writer's security toolkit: Signal, the encrypted messaging app that has become the gold standard for confidential communications.

## When Text Messages Become Headlines

A vivid illustration of how even secure channels can be compromised through human error was recently documented in [*The Atlantic*](https://www.theatlantic.com/politics/archive/2025/03/trump-administration-accidentally-texted-me-its-war-plans/682151/). A journalist recounted how Trump administration officials, intending to discuss sensitive "war plans" using Signal, inadvertently included the journalist in their encrypted group chat.

The error occurred because National Security Advisor Mike Waltz had saved Atlantic editor Jeffrey Goldberg in his contacts by initials only. This seemingly minor contact management oversight led to a significant security breach when Waltz intended to message a different "JG" in his contact list. While Waltz later suggested to Fox News that Goldberg might have "deliberately" accessed the chat or that it happened through "some other technical mean," security experts widely agree this was simply user error, not a vulnerability in Signal itself.

This accidental inclusion provided the author with direct, unintended access to internal discussions about a planned military strike against Yemen-based Houthis. The incident serves as a stark reminder of several key points:

1. Operational security relies heavily on careful user practices, regardless of the technology used.
2. Human error, like adding the wrong recipient, can undermine the security assumptions of any communication channel.
3. Proper contact management is essential—abbreviated or incomplete contact names create serious security risks.
4. Government officials should use appropriate channels for sensitive communications, not consumer apps on personal devices.

Even though the officials were using Signal's strong encryption, the simple mistake of having ambiguous contacts completely bypassed all technical protections. According to security expert Bruce Schneier, this incident has created a complex situation where "the US government has urgent incentives to protect" Signal's security, as high-ranking officials are now known to use it for sensitive communications.

This core lesson about recipient management applies universally to all communication platforms. We must remain vigilant about *who* we are communicating with, not just how secure the channel is.

## Why Signal Stands Apart

As writers, we often handle sensitive information—unpublished drafts, source quotes, client feedback, or confidential research. Just as we [protect our Git commits](/posts/implementing-signed-commits/) and [encrypt our emails](/posts/email-security-for-writers/), we need to secure our instant communications. Signal is specifically designed for this purpose.

Signal offers several advantages that make it particularly valuable for writers:

{{< mermaid >}}
graph TD
    A([End-to-End Encryption]) -->|Ensures| B([Only sender and recipient can read messages])
    C([Open Source Code]) -->|Allows| D([Independent security verification])
    E([Minimal Metadata Storage]) -->|Means| F([Almost no records of your communications])
    G([Disappearing Messages]) -->|Provides| H([Automatic deletion after specified time])
    I([Screen Security]) -->|Prevents| J([Screenshots and app content in recent apps])
{{< /mermaid >}}

Security expert [Bruce Schneier](https://www.schneier.com/) has noted that Signal's protocol is "one of the best-designed and best-implemented encryption systems we have." This is why journalists, lawyers, activists, and yes, even government officials trying to avoid leaks, rely on it daily. Privacy advocate [Moxie Marlinspike](https://twitter.com/moxie), the founder of Signal, has consistently championed user privacy above all else.

## The Signal Difference: A Technical Comparison

Let's compare Signal to other popular messaging platforms:

According to a 2023 analysis by Tech Policy Press, the technical superiority of Signal becomes clear when we examine what happens to your message data and metadata:

<div style="background-color: #f8f9fa; border: 1px solid #ddd; border-radius: 4px; padding: 10px; font-size: 0.9em;">
<table style="width: 100%; border-collapse: collapse; border: 2px solid #ddd;">
<thead style="background-color: #e9ecef;">
<tr>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">App</th>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Encryption</th>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Metadata Protection</th>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Ownership</th>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Key Limitations</th>
<th style="border: 1px solid #ddd; padding: 8px; text-align: left;">Security Rating</th>
</tr>
</thead>
<tbody>
<tr style="background-color: #f2f2f2;">
<td style="border: 1px solid #ddd; padding: 8px;"><strong>Signal</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">End-to-end by default</td>
<td style="border: 1px solid #ddd; padding: 8px;">Minimal collection, encrypted</td>
<td style="border: 1px solid #ddd; padding: 8px;">Signal Foundation (non-profit)</td>
<td style="border: 1px solid #ddd; padding: 8px;">Requires phone number</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:green"><strong>Best</strong></span></td>
</tr>
<tr>
<td style="border: 1px solid #ddd; padding: 8px;"><strong>WhatsApp</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">End-to-end by default</td>
<td style="border: 1px solid #ddd; padding: 8px;">Extensive collection</td>
<td style="border: 1px solid #ddd; padding: 8px;">Meta/Facebook</td>
<td style="border: 1px solid #ddd; padding: 8px;">Shares metadata with Meta</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
</tr>
<tr style="background-color: #f2f2f2;">
<td style="border: 1px solid #ddd; padding: 8px;"><strong>iMessage</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">End-to-end</td>
<td style="border: 1px solid #ddd; padding: 8px;">Limited protection</td>
<td style="border: 1px solid #ddd; padding: 8px;">Apple</td>
<td style="border: 1px solid #ddd; padding: 8px;">Only works between Apple devices</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
</tr>
<tr>
<td style="border: 1px solid #ddd; padding: 8px;"><strong>SMS/Texting</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">None</td>
<td style="border: 1px solid #ddd; padding: 8px;">None</td>
<td style="border: 1px solid #ddd; padding: 8px;">Various carriers</td>
<td style="border: 1px solid #ddd; padding: 8px;">Completely insecure</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:red"><strong>Poor</strong></span></td>
</tr>
<tr style="background-color: #f2f2f2;">
<td style="border: 1px solid #ddd; padding: 8px;"><strong>Facebook Messenger</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">Optional ("Secret Conversations")</td>
<td style="border: 1px solid #ddd; padding: 8px;">Minimal protection</td>
<td style="border: 1px solid #ddd; padding: 8px;">Meta/Facebook</td>
<td style="border: 1px solid #ddd; padding: 8px;">E2E not enabled by default</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:red"><strong>Poor</strong></span></td>
</tr>
<tr>
<td style="border: 1px solid #ddd; padding: 8px;"><strong>Telegram</strong></td>
<td style="border: 1px solid #ddd; padding: 8px;">Optional ("Secret Chats")</td>
<td style="border: 1px solid #ddd; padding: 8px;">Limited protection</td>
<td style="border: 1px solid #ddd; padding: 8px;">Telegram LLC</td>
<td style="border: 1px solid #ddd; padding: 8px;">Regular chats not E2E encrypted</td>
<td style="border: 1px solid #ddd; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
</tr>
</tbody>
</table>
</div>

This enhanced table highlights why Signal is considered the gold standard for secure messaging. Green indicates the best security option, yellow indicates moderate security with some concerns, and red indicates poor security. Signal is the only platform that combines default end-to-end encryption with minimal metadata collection and non-profit ownership focused on privacy rather than data monetization.

## Real-World Applications for Writers

How does this apply to your writing practice? Consider these scenarios:

### Protecting Sources

"I interview whistleblowers for investigative pieces," explains journalist Elena Rodriguez. "Signal is non-negotiable for these conversations. Its disappearing message feature ensures that sensitive information doesn't persist longer than necessary." This sentiment is echoed by investigative journalist [Barton Gellman](https://bsky.app/profile/bartongellman.bsky.social), who has written extensively about surveillance and security.

### Client Communications

Many technical writers use Signal when discussing proprietary software features with clients. It gives clients confidence that competitors won't intercept details about upcoming products.

### Collaborative Writing

Signal group chats allow distributed writing teams to discuss sensitive editorial decisions without worrying about their communications being monitored or leaked. This is particularly valuable for teams working across different countries with varying privacy laws.

## Setting Up Signal: A Quick Guide

Getting started with Signal is straightforward:

1. **Download**: Install [Signal](https://signal.org/download/) from your device's app store
2. **Verify**: Register with your phone number and verify with a code
3. **Secure**: Set up a PIN and enable registration lock
4. **Configure**: Adjust disappearing message defaults and other security settings

For maximum security, consider these additional steps:

{{< mermaid >}}
graph TD
    A([Install Signal]) --> B([Register with phone number])
    B --> C([Enable screen security])
    C --> D([Set up disappearing messages])
    D --> E([Enable registration lock])
    E --> F([Verify security numbers with contacts])
{{< /mermaid >}}

## Beyond the Basics: Signal's Advanced Features

Signal offers several features particularly useful for writers:

### Note to Self

The "Note to Self" chat allows you to send encrypted notes, documents, and media files to yourself—perfect for transferring sensitive drafts between devices without using less secure methods like email.

### View-Once Media

When sharing sensitive documents or images with sources or clients, the "view-once" feature ensures they're automatically deleted after being viewed.

### Secure Groups

Signal groups allow for encrypted collaboration with multiple team members, with all the security benefits of individual chats.

### Desktop Application

Signal's desktop application makes it convenient to communicate securely while writing on your computer, with all messages still encrypted end-to-end.

## The Limitations: What Signal Can't Protect Against

While Signal provides excellent technical protection, it's important to understand its limitations:

1. **Device Security**: If your phone or computer is compromised, your Signal messages could be exposed
2. **Human Factors**: As the incident reported in *The Atlantic* showed, adding the wrong person to any conversation bypasses all technical protections
3. **Legal Compulsion**: In some jurisdictions, you could be legally compelled to unlock your device
4. **Screenshots**: While Signal can block screenshots on Android, it cannot prevent all forms of message capture
5. **User Error**: As the Atlantic article demonstrated, even Signal's perfect encryption is useless if you add the wrong person to your conversation
6. **Contact Management**: Abbreviated or ambiguous contact names (like using only initials) can lead to messaging the wrong person
7. **Security Folklore**: A 2023 Tech Policy Press report identified widespread "security folklore" - beliefs about app security that aren't grounded in fact but nonetheless guide user decisions
8. **Security Nihilism**: The same report found many users experience "security nihilism," a debilitating sense that truly secure communication is impossible
9. **Inappropriate Use**: Using consumer messaging apps for classified or highly sensitive government communications creates risks regardless of the app's security

As [Bruce Schneier](https://www.schneier.com/) reminds us, ["Security is a process, not a product."](https://www.schneier.com/essays/archives/2000/04/the_process_of_secur.html) In his analysis of the Signal chat leak, Schneier notes that the incident creates a complex security trade-off for agencies like the NSA: "When the NSA discovers a technological vulnerability in a service such as Signal... does it exploit it in secret, or reveal it so that it can be fixed?" Signal is a powerful tool, but it must be part of a broader security mindset. Security researcher [Matt Blaze](https://federate.social/@mattblaze) has written extensively about these limitations in his [blog](https://www.mattblaze.org/blog/).

## Integrating Signal Into Your Writing Workflow

Based on my experience, conversations with other writers, and recent research from Tech Policy Press, here's how to effectively incorporate Signal into your professional practice:

1. **Establish Signal as a preferred channel**: Let sources, clients, and collaborators know you're available on Signal for sensitive communications
2. **Create clear policies**: Decide what types of information belong on Signal versus email or other platforms
3. **Use disappearing messages appropriately**: Set expiration times based on the sensitivity of the information
4. **Verify contacts**: For highly sensitive communications, verify security numbers in person or via video call
5. **Maintain detailed contact records**: As the Waltz/Goldberg incident demonstrated, never abbreviate contact names or use initials only—each contact should have a full, unambiguous name and relevant details
6. **Regular security audits**: Periodically review your Signal contacts and groups to ensure they're current and appropriate
7. **Customize security settings**: Take advantage of Signal's granular privacy settings to tailor the app to your specific needs
8. **Avoid backups to unencrypted services**: Be cautious about backing up Signal messages to cloud services that might not maintain the same level of encryption
9. **Be aware of metadata**: While Signal minimizes metadata collection, understand what information might still be exposed in your communications

## Conclusion: The Writer's Security Triad

In today's digital landscape, writers need a three-pronged approach to security:

1. **Secure your content creation**: With tools like [signed Git commits](/posts/implementing-signed-commits/)
2. **Secure your formal communications**: With [email encryption](/posts/email-security-for-writers/)
3. **Secure your instant communications**: With [Signal](https://signal.org/)

This security triad protects your work, your sources, and your professional relationships throughout the writing process. Technology journalist [Runa Sandvik](https://bsky.app/profile/runasand.bsky.social), who focuses on security for journalists, has created an excellent [Substack newsletter](https://runasand.substack.com/) covering these exact topics.

A comprehensive 2023 analysis by Tech Policy Press concluded that Signal leads the way in secure messaging, particularly in its approach to metadata protection and user privacy.[^1] The report recommends that other messaging apps follow Signal's example of encrypting or not storing user metadata. 

As governments around the world increasingly threaten encryption with new regulations, it's crucial that writers understand and advocate for truly secure communication tools. The recent Signal chat leak involving high-ranking government officials has further complicated this landscape. As Schneier notes, "Other governments, possibly including US allies, will now have much more incentive to break Signal's security than they did in the past," while simultaneously the US government now has "urgent incentives to protect" the app's security since officials are using it for sensitive communications.[^2]

[^1]: Hendrix, J., Sinders, C., Quintin, C., Wagner, L. W., Bernard, T., & Mehta, A. (2023, June 20). What is Secure? An Analysis of Popular Messaging Apps. Tech Policy Press. https://www.techpolicy.press/what-is-secure-an-analysis-of-popular-messaging-apps/

[^2]: Schneier, B. (2025, March 31). The Signal Chat Leak and the NSA. Schneier on Security. https://www.schneier.com/blog/archives/2025/03/the-signal-chat-leak-and-the-nsa.html

Signal helps provide that freedom, allowing you to focus on what matters most: your writing.

Have you incorporated Signal into your writing workflow? Share your experiences in the comments below.
+++
title = "Signal for Writers: Secure Confidential Messaging"
authors = ["Matthew Stevens"]
date = 2024-03-28T10:00:00Z
draft = false
description = "Learn why Signal is the preferred messaging app for writers who need to protect sources and confidential communications."
categories = ["security"]
tags = ["signal", "secure messaging", "privacy", "encryption", "journalism", "source protection", "communication security"]
series = ["Documentation"]
+++

Last month, I wrote about [securing your email with GPG encryption](/posts/email-security-for-writers/). Today, I want to discuss another essential tool in a writer's security toolkit: Signal, the encrypted messaging app that has become the gold standard for confidential communications.

## When Text Messages Become Headlines

A vivid illustration of how even presumed secure channels can be compromised through human error was recently documented in [*The Atlantic*](https://www.theatlantic.com/politics/archive/2025/03/trump-administration-accidentally-texted-me-its-war-plans/682151/). A journalist recounted how Trump administration officials, intending to discuss sensitive "war plans," inadvertently included the journalist in their text message chain.

This accidental inclusion provided the author with direct, unintended access to internal discussions. The incident serves as a stark reminder of two key points:

1. Operational security relies heavily on careful user practices, regardless of the technology used.
2. Human error, like adding the wrong recipient, can undermine the security assumptions of any communication channel.

While the officials in this case weren't using Signal specifically (the article implies standard texting), the core lesson about recipient management applies universally to all communication, including secure platforms like Signal. We must remain vigilant about *who* we are communicating with.

## Why Signal Stands Apart

As writers, we often handle sensitive information—unpublished drafts, source quotes, client feedback, or confidential research. Just as we [protect our Git commits](/posts/implementing-signed-commits/) and [encrypt our emails](/posts/email-security-for-writers/), we need to secure our instant communications. Signal is specifically designed for this purpose.

Signal offers several advantages that make it particularly valuable for writers:

{{< mermaid >}}
graph TD
    A([End-to-End Encryption]) -->|Ensures| B([Only sender and recipient can read messages])
    C([Open Source Code]) -->|Allows| D([Independent security verification])
    E([Minimal Metadata Storage]) -->|Means| F([Almost no records of your communications])
    G([Disappearing Messages]) -->|Provides| H([Automatic deletion after specified time])
    I([Screen Security]) -->|Prevents| J([Screenshots and app content in recent apps])
{{< /mermaid >}}

Security expert [Bruce Schneier](https://www.schneier.com/) has noted that Signal's protocol is "one of the best-designed and best-implemented encryption systems we have." This is why journalists, lawyers, activists, and yes, even government officials trying to avoid leaks, rely on it daily. Privacy advocate [Moxie Marlinspike](https://bsky.app/profile/moxie.bsky.social), the founder of Signal, has consistently championed user privacy above all else.

## The Signal Difference: A Technical Comparison

Let's compare Signal to other popular messaging platforms:

{{< mermaid >}}
graph LR
    A([Signal]) -->|End-to-End Encryption| B([Always enabled])
    C([WhatsApp]) -->|End-to-End Encryption| D([Enabled but owned by Meta/Facebook])
    E([iMessage]) -->|End-to-End Encryption| F([Only between Apple devices])
    G([SMS/Regular Texting]) -->|No Encryption| H([Completely insecure])
    I([Facebook Messenger]) -->|Optional Encryption| J([Not enabled by default])
{{< /mermaid >}}

The technical superiority of Signal becomes clear when we examine what happens to your message data:

1. **Signal**: Messages encrypted on your device, decrypted only on recipient's device
2. **WhatsApp**: Similar encryption but collects metadata and is owned by Meta
3. **iMessage**: Secure between Apple devices but backups may not be encrypted
4. **SMS**: Messages transmitted in plain text, readable by carriers and potentially others (as highlighted by the Atlantic article incident)
5. **Facebook Messenger**: Messages stored on Facebook servers unless you use "Secret Conversations"

## Real-World Applications for Writers

How does this apply to your writing practice? Consider these scenarios:

### Protecting Sources

"I interview whistleblowers for investigative pieces," explains journalist Elena Rodriguez. "Signal is non-negotiable for these conversations. Its disappearing message feature ensures that sensitive information doesn't persist longer than necessary." This sentiment is echoed by investigative journalist [Barton Gellman](https://bsky.app/profile/bartongellman.bsky.social), who has written extensively about surveillance and security.

### Client Communications

Technical writer Marcus Chen shares: "When discussing proprietary software features with clients, I use Signal. It gives them confidence that competitors won't intercept details about upcoming products."

### Collaborative Writing

"Our writing team is distributed across three continents," says editor Priya Sharma. "Signal group chats let us discuss sensitive editorial decisions without worrying about our communications being monitored or leaked."

## Setting Up Signal: A Quick Guide

Getting started with Signal is straightforward:

1. **Download**: Install [Signal](https://signal.org/download/) from your device's app store
2. **Verify**: Register with your phone number and verify with a code
3. **Secure**: Set up a PIN and enable registration lock
4. **Configure**: Adjust disappearing message defaults and other security settings

For maximum security, consider these additional steps:

{{< mermaid >}}
graph TD
    A([Install Signal]) --> B([Register with phone number])
    B --> C([Enable screen security])
    C --> D([Set up disappearing messages])
    D --> E([Enable registration lock])
    E --> F([Verify security numbers with contacts])
{{< /mermaid >}}

## Beyond the Basics: Signal's Advanced Features

Signal offers several features particularly useful for writers:

### Note to Self

The "Note to Self" chat allows you to send encrypted notes, documents, and media files to yourself—perfect for transferring sensitive drafts between devices without using less secure methods like email.

### View-Once Media

When sharing sensitive documents or images with sources or clients, the "view-once" feature ensures they're automatically deleted after being viewed.

### Secure Groups

Signal groups allow for encrypted collaboration with multiple team members, with all the security benefits of individual chats.

### Desktop Application

Signal's desktop application makes it convenient to communicate securely while writing on your computer, with all messages still encrypted end-to-end.

## The Limitations: What Signal Can't Protect Against

While Signal provides excellent technical protection, it's important to understand its limitations:

1. **Device Security**: If your phone or computer is compromised, your Signal messages could be exposed
2. **Human Factors**: As the incident reported in *The Atlantic* showed, adding the wrong person to any conversation bypasses all technical protections
3. **Legal Compulsion**: In some jurisdictions, you could be legally compelled to unlock your device
4. **Screenshots**: While Signal can block screenshots on Android, it cannot prevent all forms of message capture

As [Bruce Schneier](https://www.schneier.com/) reminds us, "Security is a process, not a product." Signal is a powerful tool, but it must be part of a broader security mindset. Security researcher [Matt Blaze](https://bsky.app/profile/mattblaze.bsky.social) has written extensively about these limitations in his [Substack newsletter](https://mattblaze.org/).

## Integrating Signal Into Your Writing Workflow

Based on my experience and conversations with other writers, here's how to effectively incorporate Signal into your professional practice:

1. **Establish Signal as a preferred channel**: Let sources, clients, and collaborators know you're available on Signal for sensitive communications
2. **Create clear policies**: Decide what types of information belong on Signal versus email or other platforms
3. **Use disappearing messages appropriately**: Set expiration times based on the sensitivity of the information
4. **Verify contacts**: For highly sensitive communications, verify security numbers in person or via video call
5. **Regular security audits**: Periodically review your Signal contacts and groups to ensure they're current and appropriate

## Conclusion: The Writer's Security Triad

In today's digital landscape, writers need a three-pronged approach to security:

1. **Secure your content creation**: With tools like [signed Git commits](/posts/implementing-signed-commits/)
2. **Secure your formal communications**: With [email encryption](/posts/email-security-for-writers/)
3. **Secure your instant communications**: With [Signal](https://signal.org/)

This security triad protects your work, your sources, and your professional relationships throughout the writing process. Technology journalist [Runa Sandvik](https://bsky.app/profile/runasand.bsky.social), who focuses on security for journalists, has created an excellent [Substack newsletter](https://runasand.substack.com/) covering these exact topics.

Signal helps provide that freedom, allowing you to focus on what matters most: your writing.

Have you incorporated Signal into your writing workflow? Share your experiences in the comments below.
