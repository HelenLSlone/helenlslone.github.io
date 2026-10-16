---
published: true
title: "@hedgehogcafecambs automation begins"
category: "hedgehogs"
---

[@hedgehogcafecambs](https://instagram.com/hedgehogcafecambs) is my hobby instagram account, where I post footage of wild hedgehogs in my garden. I have several Ring cameras that I use to record their antics which I can download on my phone before editing them into reel. This is very time consuming and consequently I rarely post.

My first AI side quest will be to automate this, using QWEN locally to identify the clips that show hedgehogs (excluding the many cats and occasional foxes that show up), and produce an instagram-ready reel with a British wildlife narrator-style caption.

This version of the automation handles the most labour intensive parts of generating a highlight reel, and stores examples for QWEN to use as part of a few-shot prompt. Once the right balance of number of examples / accuracy has been reached, I will adjust the system to no longer store every agreed reel as an example.


<pre class="mermaid">

flowchart
    subgraph Local
        Start@{ shape: circle, label: "fa:fa-clock 7am" }
        End@{ shape: dbl-circ }    
        RingRequest@{ shape: lean-l, label: "GET clips from Ring API" }
        QWEN@{ shape: bow-rect, label: "Generate highlight reel and caption" }
        ResponseLogic@{ shape: diamond, label: "User decision" }
        Delete@{ shape: rect, label: "Delete ring downloads and reel" }
        Example@{ shape: lin-cyl, label: "Store original clips and finalised reel as examples" }
    end 
    subgraph Ring
        RingExt@{ shape: rect, label: "Ring API" }
    end
    subgraph Docker
        OpenClawWhatsApp@{ shape: rect, label: "OpenClaw: WhatsApp" }
    end
    subgraph WhatsApp
        WhatsAppExt@{ shape: rect, label: "WhatsApp" }
    end          
    Start --> RingRequest
    RingRequest --> RingExt
    RingExt --> QWEN
    QWEN --  Send  reel and caption to WhatsApp  --> OpenClawWhatsApp
    OpenClawWhatsApp <-->  WhatsAppExt
    OpenClawWhatsApp --  User feedback on reel  --> ResponseLogic
    ResponseLogic -- Rejected --> Delete
    ResponseLogic -- Feedback given --> Example
    ResponseLogic -- Accepted --> Example
    Example --> End
    Delete --> End

  
</pre>