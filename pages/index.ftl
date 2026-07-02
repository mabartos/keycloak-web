<#-- @ftlvariable name="links" type="org.keycloak.webbuilder.Links" -->
<#import "/templates/template.ftl" as tmpl>

<@tmpl.page current="home" title="" previewImage="index.png" rss=true>

<div class="jumbotron jumbotron-fluid bg-light kc-bg-triangles">
  <div class="container pt-5 pb-5 text-center">
    <div class="row">
        <div class="col">
            <h1 class="display-4 mb-0">Open Source</h1>
            <h1 class="display-3 fw-bold">Identity and Access Management</h1>
            <p class="lead mt-4">
                Add authentication to applications and secure services with minimum effort.<br/>
                No need to deal with storing users or authenticating users.
            </p>
            <div class="mt-4">
                <a class="btn btn-primary btn-lg" href="${links.guides}">Get Started</a>
                <a class="btn btn-light btn-lg" href="${links.downloads}">Download</a>
            </div>
        </div>
        <div class="col col-4 d-none d-lg-block">
            <img class="img-fluid h-100" src="${links.getResource('images/icon.svg')}" width="550" aria-hidden="true" alt="Keycloak"/>
        </div>
    </div>
  </div>
</div>

<div class="jumbotron jumbotron-fluid bg-dark text-white">
<div class="container bg-dark p-3">
    <div class="row kc-news-section">
        <div class="col-md-1 col-sm-12 fw-bold justify-content-center kc-news-item"><a href="${links.blog}">News</a></div>
        <#list news as n>
        <div class="col kc-news-item">
            <span class="badge bg-secondary">${n.date?string["dd MMM"]}</span> <a href="${n.link}">${n.title}</a>
        </div>
        </#list>
    </div>
</div>
</div>

<div class="container mt-5">
    <div class="row mt-5">
        <div class="col">
            <h2>Seamless Authentication</h2>
            <p>
                Keycloak handles the entire login experience — from passwords and passkeys to social login
                and identity providers. Users can sign in with a fingerprint, face, security key, or phone,
                and with usernameless authentication they don't even need to type a username.
            </p>
            <p>
                Single sign-on gives users access to all connected applications after one login.
                Step-up authentication requires stronger credentials for sensitive actions, while
                single sign-out lets users log out everywhere at once.
            </p>
            <div class="row text-center mt-4 gx-3">
                <div class="col">
                    <div class="text-primary mb-2"><i class="fa fa-lock fa-2x" aria-hidden="true"></i></div>
                    <small class="text-body-secondary">Password</small>
                </div>
                <div class="col">
                    <div class="text-primary mb-2"><i class="fa fa-fingerprint fa-2x" aria-hidden="true"></i></div>
                    <small class="text-body-secondary">Biometrics</small>
                </div>
                <div class="col">
                    <div class="text-primary mb-2"><i class="fa fa-key fa-2x" aria-hidden="true"></i></div>
                    <small class="text-body-secondary">Security Key</small>
                </div>
                <div class="col">
                    <div class="text-primary mb-2"><i class="fa fa-hashtag fa-2x" aria-hidden="true"></i></div>
                    <small class="text-body-secondary">OTP &amp; more</small>
                </div>
            </div>
        </div>
        <div class="col-5 text-end d-none d-md-block">
            <img class="img-fluid shadow" src="resources/images/screen-login.png" alt="Screenshot showing a user's login screen as presented by Keycloak"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>Identity Brokering and Social Login</h2>
            <p>
                Enabling login with social networks is easy to add through the admin console. It's just a matter of selecting the
                social network you want to add. No code or changes to your application is required.
            </p>
            <p>
                Keycloak can also authenticate users with existing OpenID Connect or SAML 2.0 Identity Providers. Again, this is
                just a matter of configuring the Identity Provider through the admin console.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid" src="resources/images/dia-identity-brokering.png" alt="Diagram illustrating brokering"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>User Federation</h2>
            <p>
                Keycloak has built-in support to connect to existing LDAP or Active Directory servers. You can also implement your own
                provider if you have users in other stores, such as a relational database.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid" src="resources/images/dia-user-fed.png" alt="Diagram illustrating user federation"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>Identity for AI and Agents</h2>
            <p>
                AI agents need identity too. With token exchange, agents can securely act on behalf of users
                using scoped tokens. DPoP binds tokens cryptographically to the agent, preventing replay
                if intercepted.
            </p>
            <p>
                Backchannel authentication (CIBA) lets agents request user approval without a browser,
                and client policies enforce security requirements across all agent clients.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid" src="resources/images/dia-agents.svg" alt="Diagram illustrating AI agent identity flow through Keycloak"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>Organizations</h2>
            <p>
                Built-in multi-tenancy for B2B use cases. Create organizations, manage members, and configure
                identity providers per tenant — all without custom code.
            </p>
            <p>
                Organizations let you delegate administration, enforce organization-specific policies, and give each
                tenant its own identity experience while sharing a single Keycloak deployment.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid" src="resources/images/dia-organizations.svg" alt="Diagram illustrating multi-tenant organizations in Keycloak"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>Management Consoles</h2>
            <p>
                Through the admin console, administrators can centrally manage all aspects of Keycloak — users,
                applications, identity providers, fine-grained authorization policies, and more.
            </p>
            <p>
                Users get their own account console to manage profiles, passwords, two-factor authentication, and sessions.
                They can also link accounts with social and identity providers.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid shadow" src="resources/images/screen-admin.png" alt="Screenshot of the admin console"/>
        </div>
    </div>

    <div class="row mt-5 border-top pt-5">
        <div class="col">
            <h2>Standards and Security</h2>
            <p>
                Keycloak is built on standard protocols — OpenID Connect, OAuth 2.0, and SAML — and goes
                beyond the basics with support for DPoP proof-of-possession tokens, Pushed Authorization Requests (PAR),
                Client Initiated Backchannel Authentication (CIBA), and step-up authentication.
            </p>
            <p>
                Client policies let you enforce security requirements across applications, ensuring consistent
                protection across your entire deployment.
            </p>
        </div>
        <div class="col-5 text-end d-none d-md-block">
             <img class="img-fluid" src="resources/images/dia-protocols.png" alt="Logos of OpenID certification, SAML and OAuth 2.0" aria-hidden="true"/>
        </div>
    </div>
</div>

<#macro featuresEntry icon title text>
<div class="col d-flex align-items-start mb-4 pt-2">
    <div class="bg-primary bg-opacity-10 rounded-circle d-flex align-items-center justify-content-center flex-shrink-0" style="width: 3rem; height: 3rem;">
        <i class="fa ${icon} text-primary" aria-hidden="true"></i>
    </div>
    <div class="ms-3">
        <h6 class="fw-bold mb-1">${title}</h6>
        <span class="text-body-secondary">${text}</span>
    </div>
</div>
</#macro>

<div class="container bg-light mt-5 py-4 px-4 rounded-4">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4">
        <@featuresEntry icon="fa-key" title="Seamless Authentication" text="SSO, passkeys, social login, and step-up"/>
        <@featuresEntry icon="fa-fingerprint" title="Passwordless and Passkeys" text="Sign in with biometrics, security keys, or a phone"/>
        <@featuresEntry icon="fa-exchange-alt" title="Standard Protocols" text="OpenID Connect, OAuth 2.0 and SAML 2.0"/>
        <@featuresEntry icon="fa-building" title="Organizations" text="Multi-tenant identity for B2B"/>
        <@featuresEntry icon="fa-users" title="LDAP and Active Directory" text="Connect to existing user directories"/>
        <@featuresEntry icon="fa-cloud" title="Social Login" text="Easily enable social login"/>
        <@featuresEntry icon="fa-cloud" title="Identity Brokering" text="OpenID Connect or SAML 2.0 IdPs"/>
        <@featuresEntry icon="fa-bolt" title="Cloud-Native" text="Kubernetes-ready, lightweight, and fast"/>
        <@featuresEntry icon="fa-server" title="Scalability" text="Clustering and multi-site support"/>
        <@featuresEntry icon="fa-chart-line" title="Observability" text="Tracing, metrics, logs, and Grafana dashboards"/>
        <@featuresEntry icon="fa-edit" title="Extensible" text="Customize through SPIs and workflows"/>
        <@featuresEntry icon="fa-user-shield" title="Fine-Grained Authorization" text="Manage permissions beyond simple roles"/>
    </div>
</div>

</@tmpl.page>
