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

A vivid illustration of how even secure channels can be compromised through human error was recently documented in [*The Atlantic*](https://www.theatlantic.com/politics/archive/2025/03/trump-administration-accidentally-texted-me-its-war-plans/682151/). Jeffrey Goldberg, editor-in-chief of *The Atlantic*, recounted how Trump administration officials, intending to discuss sensitive "war plans" using Signal, inadvertently included him in their encrypted group chat.

The error occurred because National Security Advisor Mike Waltz had saved Atlantic editor Jeffrey Goldberg in his contacts by initials only. This seemingly minor contact management oversight led to a significant security breach when Waltz intended to message a different "JG" in his contact list. While Waltz later suggested to Fox News that Goldberg might have "deliberately" accessed the chat or that it happened through "some other technical mean," cybersecurity experts including [Matthew Green](https://twitter.com/matthew_d_green/status/1904889651066925453), associate professor at Johns Hopkins Information Security Institute, and [Eva Galperin](https://twitter.com/evacide/status/1904888742385422760), director of cybersecurity at the Electronic Frontier Foundation, have publicly stated this was simply user error, not a vulnerability in Signal itself.

This accidental inclusion provided the author with direct, unintended access to internal discussions about a planned military strike against Yemen-based Houthis. The incident serves as a stark reminder of several key points:

1. Operational security relies heavily on careful user practices, regardless of the technology used.
2. Human error, like adding the wrong recipient, can undermine the security assumptions of any communication channel.
3. Proper contact management is essential—abbreviated or incomplete contact names create serious security risks.
4. Government officials should use appropriate channels for sensitive communications, not consumer apps on personal devices.

Even though the officials were using Signal's strong encryption, the simple mistake of having ambiguous contacts completely bypassed all technical protections. According to security expert [Bruce Schneier](https://www.schneier.com/blog/archives/2025/03/the-signal-chat-leak-and-the-nsa.html), this incident has created a complex situation where "the US government has urgent incentives to protect" Signal's security, as high-ranking officials are now known to use it for sensitive communications. Former NSA general counsel [Glenn Gerstell](https://www.washingtonpost.com/opinions/2025/03/29/signal-app-security-government-officials/) has also noted that "this incident highlights the tension between security practices and usability that plagues even the most secure communication tools."

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

According to a 2024 analysis by the Electronic Frontier Foundation and security researchers at Johns Hopkins University, the technical superiority of Signal becomes clear when we examine what happens to your message data and metadata:<sup><a href="#fn1" id="ref1">1</a></sup>

<div style="background-color: #e9ecef; border: 1px solid #ddd; border-radius: 4px; padding: 10px; font-size: 0.9em;">
<table style="width: 100%; border-collapse: collapse; border: 2px solid #345; box-shadow: 0 2px 3px rgba(0,0,0,0.1);">
<thead style="background-color: #345; color: white;">
<tr>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">App</th>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">Encryption</th>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">Metadata Protection</th>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">Ownership</th>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">Key Limitations</th>
<th style="border: 1px solid #234; padding: 8px; text-align: left;">Security Rating</th>
</tr>
</thead>
<tbody>
<tr style="background-color: #d4e5f7;">
<td style="border: 1px solid #bcd; padding: 8px;"><strong>Signal</strong></td>
<td style="border: 1px solid #bcd; padding: 8px;">End-to-end by default</td>
<td style="border: 1px solid #bcd; padding: 8px;">Minimal collection, encrypted</td>
<td style="border: 1px solid #bcd; padding: 8px;">Signal Foundation (non-profit)</td>
<td style="border: 1px solid #bcd; padding: 8px;">Requires phone number</td>
<td style="border: 1px solid #bcd; padding: 8px;"><span style="color:green"><strong>Best</strong></span></td>
</tr>
<tr style="background-color: #e2e2e2;">
<td style="border: 1px solid #ccc; padding: 8px;"><strong>WhatsApp</strong></td>
<td style="border: 1px solid #ccc; padding: 8px;">End-to-end by default</td>
<td style="border: 1px solid #ccc; padding: 8px;">Extensive collection</td>
<td style="border: 1px solid #ccc; padding: 8px;">Meta/Facebook</td>
<td style="border: 1px solid #ccc; padding: 8px;">Shares metadata with Meta</td>
<td style="border: 1px solid #ccc; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
</tr>
<tr style="background-color: #d4e5f7;">
<td style="border: 1px solid #bcd; padding: 8px;"><strong>iMessage</strong></td>
<td style="border: 1px solid #bcd; padding: 8px;">End-to-end</td>
<td style="border: 1px solid #bcd; padding: 8px;">Limited protection</td>
<td style="border: 1px solid #bcd; padding: 8px;">Apple</td>
<td style="border: 1px solid #bcd; padding: 8px;">Only works between Apple devices</td>
<td style="border: 1px solid #bcd; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
</tr>
<tr style="background-color: #e2e2e2;">
<td style="border: 1px solid #ccc; padding: 8px;"><strong>SMS/Texting</strong></td>
<td style="border: 1px solid #ccc; padding: 8px;">None</td>
<td style="border: 1px solid #ccc; padding: 8px;">None</td>
<td style="border: 1px solid #ccc; padding: 8px;">Various carriers</td>
<td style="border: 1px solid #ccc; padding: 8px;">Completely insecure</td>
<td style="border: 1px solid #ccc; padding: 8px;"><span style="color:red"><strong>Poor</strong></span></td>
</tr>
<tr style="background-color: #d4e5f7;">
<td style="border: 1px solid #bcd; padding: 8px;"><strong>Facebook Messenger</strong></td>
<td style="border: 1px solid #bcd; padding: 8px;">Optional ("Secret Conversations")</td>
<td style="border: 1px solid #bcd; padding: 8px;">Minimal protection</td>
<td style="border: 1px solid #bcd; padding: 8px;">Meta/Facebook</td>
<td style="border: 1px solid #bcd; padding: 8px;">E2E not enabled by default</td>
<td style="border: 1px solid #bcd; padding: 8px;"><span style="color:red"><strong>Poor</strong></span></td>
</tr>
<tr style="background-color: #e2e2e2;">
<td style="border: 1px solid #ccc; padding: 8px;"><strong>Telegram</strong></td>
<td style="border: 1px solid #ccc; padding: 8px;">Optional ("Secret Chats")</td>
<td style="border: 1px solid #ccc; padding: 8px;">Limited protection</td>
<td style="border: 1px solid #ccc; padding: 8px;">Telegram LLC</td>
<td style="border: 1px solid #ccc; padding: 8px;">Regular chats not E2E encrypted</td>
<td style="border: 1px solid #ccc; padding: 8px;"><span style="color:yellow"><strong>Moderate</strong></span></td>
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

As [Bruce Schneier](https://www.schneier.com/) reminds us, ["Security is a process, not a product."](https://www.schneier.com/essays/archives/2000/04/the_process_of_secur.html) In his analysis of the Signal chat leak, Schneier notes that the incident creates a complex security trade-off for agencies like the NSA: "When the NSA discovers a technological vulnerability in a service such as Signal... does it exploit it in secret, or reveal it so that it can be fixed?" Signal is a powerful tool, but it must be part of a broader security mindset.

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

A comprehensive 2024 analysis by the Electronic Frontier Foundation (EFF) in their updated Secure Messaging Scorecard reaffirmed that Signal continues to lead the way in secure messaging, particularly in its approach to metadata protection and user privacy.<sup><a href="#fn1" id="ref1">1</a></sup> The report highlights Signal as the only major messaging app that meets all their security criteria, including proper implementation of end-to-end encryption, minimal data retention, and code that's open to independent review.

As governments around the world increasingly threaten encryption with new regulations, it's crucial that writers understand and advocate for truly secure communication tools. The recent Signal chat leak involving high-ranking government officials has further complicated this landscape. As Schneier notes, "Other governments, possibly including US allies, will now have much more incentive to break Signal's security than they did in the past," while simultaneously the US government now has "urgent incentives to protect" the app's security since officials are using it for sensitive communications.<sup><a href="#fn2" id="ref2">2</a></sup>

[^1]: Electronic Frontier Foundation, "Secure Messaging Apps Comparison," EFF, February 2024, <https://www.eff.org/deeplinks/2024/02/secure-messaging-apps-comparison>.

[^2]: Bruce Schneier, "The Signal Chat Leak and the NSA," Schneier on Security, March 31, 2025, <https://www.schneier.com/blog/archives/2025/03/the-signal-chat-leak-and-the-nsa.html>.

Signal helps provide that freedom, allowing you to focus on what matters most: your writing.

Have you incorporated Signal into your writing workflow? Share your experiences in the comments below.

<hr>

<p id="fn1"><sup>1</sup> Electronic Frontier Foundation, "Secure Messaging Apps Comparison," EFF, February 2024, <a href="https://www.eff.org/deeplinks/2024/02/secure-messaging-apps-comparison">https://www.eff.org/deeplinks/2024/02/secure-messaging-apps-comparison</a>. <a href="#ref1">↩</a></p>

<p id="fn2"><sup>2</sup> Bruce Schneier, "The Signal Chat Leak and the NSA," Schneier on Security, March 31, 2025, <a href="https://www.schneier.com/blog/archives/2025/03/the-signal-chat-leak-and-the-nsa.html">https://www.schneier.com/blog/archives/2025/03/the-signal-chat-leak-and-the-nsa.html</a>. <a href="#ref2">↩</a></p>
