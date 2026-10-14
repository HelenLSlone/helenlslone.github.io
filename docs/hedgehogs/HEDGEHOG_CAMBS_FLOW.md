flowchart
    subgraph Mac
        Start@{ shape: circle, label: "fa:fa-clock 7am" }
        End@{ shape: dbl-circ, label: "Delete reel" }    
        RingRequest@{ shape: lean-l, label: "GET clips from Ring API" }
        QWEN@{ shape: bow-rect, label: "Generate highlight reel and caption" }
        ResponseLogic@{ shape: diamond, label: "User decision" }
        Changes@{ shape: bow-rect, label: "Refine highlight reel and caption" }
    end 
    subgraph Ring
        RingExt@{ shape: rect, label: "Ring API" }
    end
    subgraph Docker
        OpenClawWhatsApp@{ shape: rect, label: "OpenClaw: WhatsApp" }
        OpenClawInstagram@{ shape: rect, label: "OpenClaw: Instagran" }
    end
    subgraph WhatsApp
        WhatsAppExt@{ shape: rect, label: "WhatsApp" }
    end
    subgraph Instagran
        InstagranExt@{ shape: rect, label: "Instagran" }
    end            
    Start --> RingRequest
    RingRequest --> RingExt
    RingExt --> QWEN
    QWEN --  Send  reel and caption to WhatsApp  --> OpenClawWhatsApp
    OpenClawWhatsApp <-->  WhatsAppExt
    OpenClawInstagram <-->  InstagranExt
    OpenClawWhatsApp --  User feedback on reel  --> ResponseLogic
    ResponseLogic -- Rejected --> End
    ResponseLogic -- Changes requested --> Changes
    Changes --  Send  reel and caption to WhatsApp  --> OpenClawWhatsApp
    ResponseLogic -- Accepted --> OpenClawInstagram
    OpenClawInstagram -- Post status --> OpenClawWhatsApp
    OpenClawInstagram -- Reel posted --> End
