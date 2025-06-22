[libdefaults]
    default_realm = {{ realm }}
    dns_lookup_realm = true
    dns_lookup_kdc = true
    ticket_lifetime = 24h
    forwardable = yes

[realms]
    {{ realm }} = {
        kdc = {{ domain_controller_hostname }}.{{ realm|lower }}
        admin_server = {{ domain_controller_hostname }}.{{ realm|lower }}
    }

[domain_realm]
    .{{ realm|lower }} = {{ realm }}
    {{ realm|lower }} = {{ realm }}
