class SeaconEsbDemo.Models.NodeSendEmail extends SeaconEsbDemo.Models.Node
  defaults:
    name: "send_email"
    protocol: ['SMTP','SMTPS','POP3','POP3S','IMAP','IMAPS']
    host: ''
    username: ''
    password: ''
    from: ''
    to: ''
    cc: ''
    bcc: ''
    replyTo: ''
    subject_expression: ' '
    body_expression: ' '


