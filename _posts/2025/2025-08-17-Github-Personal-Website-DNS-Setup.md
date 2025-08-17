Great! Since you're using Blacknight in Ireland for your domain registrar, here’s how to connect your custom domain to your GitHub Pages site step by step:

---

### Step 1: Configure DNS on Blacknight

#### A) Determine your control panel type:

* **If your account was created *after* June 2022**, you'll use the **new interface** at `cp.blacknighthosting.com`.
* Otherwise, you’ll use the **older panel** at `cp.blacknight.com` ([help.blacknight.com][1]).

#### B) Log in:

* For **new interface**: go to **Domains → Manage DNS → Edit Zone** for your domain ([help.blacknight.com][2]).
* For **older panel**: go to **Home → Hosted Domains → select your domain → Web → Remove Hosting**, then switch to the **DNS** tab ([help.blacknight.com][1]).

#### C) Add the required DNS records:

1. **Add four A records** for the root domain (leave the "Domain" field blank or use `@`):

   * 185.199.108.153
   * 185.199.109.153
   * 185.199.110.153
   * 185.199.111.153 ([help.blacknight.com][1], [Medium][3])

2. **Add a CNAME record** for the `www` subdomain:

   * **Name**: `www`
   * **Canonical Name**: `<your-username>.github.io.` — *don’t forget the trailing dot* ([help.blacknight.com][1], [Medium][3])

---

### Step 2: Add the Custom Domain on GitHub

1. Open your repository on GitHub that hosts your Pages site.
2. Go to **Settings → Pages**.
3. In the **Custom domain** field, enter your full domain (`example.com` or `www.example.com`) and click **Save**.
4. This action creates a `CNAME` file in the repository automatically ([Medium][3], [GitHub Docs][4]).

---

### Step 3: Wait for DNS Propagation & Enable HTTPS

* DNS changes can take up to **24 hours** to propagate fully ([Medium][3], [Reddit][5]).
* After propagation, return to your GitHub Pages settings and **check "Enforce HTTPS"** to secure the site.

---

### Quick Recap

| Step | Action                                              |
| ---- | --------------------------------------------------- |
| 1    | Log in to relevant Blacknight control panel         |
| 2    | Remove any hosting or forwarding                    |
| 3    | Add A records (four GitHub IPs) and CNAME for `www` |
| 4    | Add the custom domain in GitHub Pages settings      |
| 5    | Wait for DNS to update, then enable HTTPS           |

---

Let me know if you'd like help navigating the Blacknight interface or screenshots for the new or old panel. Happy to guide you through any step!

[1]: https://help.blacknight.com/hc/en-us/articles/360019868777-Adding-GitHub-Pages-DNS-Records?utm_source=chatgpt.com "Adding GitHub Pages DNS Records – Blacknight - Customer Service / Technical Support Centre"
[2]: https://help.blacknight.com/hc/en-us/articles/4413046384401-How-do-I-change-DNS-records-for-my-domain?utm_source=chatgpt.com "How do I change DNS records for my domain? – Blacknight - Customer Service / Technical Support Centre"
[3]: https://hossainkhan.medium.com/using-custom-domain-for-github-pages-86b303d3918a?utm_source=chatgpt.com "Using custom domain for GitHub pages | by Hossain Khan | Medium"
[4]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site?utm_source=chatgpt.com "Configuring a custom domain for your GitHub Pages site - GitHub Docs"
[5]: https://www.reddit.com/r/github/comments/1gli9jk?utm_source=chatgpt.com "GitHub Pages URL help"
