architecture-beta
    group external(cloud)[External]
    group docker(cloud)[Docker]
    group local(cloud)[Mac]

    service whatsapp(server)[WhatsApp] in external
    service ring(server)[Ring] in external
    service openclaw(server)[OpenClaw] in docker
    service hedeghogs(server)[hedeghogspy] in local
    service hedgehogclips(server)[Highlight Reel Agent] in local

    whatsapp:R <--> L:openclaw
    openclaw:B <--> T:hedeghogs
    ring:R <--> L:hedeghogs
    hedeghogs:R <--> L:hedgehogclips
