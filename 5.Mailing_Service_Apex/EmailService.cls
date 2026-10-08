public class EmailService {
    public static void sendSingleEmail(List<String> toAddresses, String subject, String body) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setHtmlBody(body);
        mail.setSenderDisplayName('Salesforce Mailer Service');
        mail.setReplyTo('harshahegde10s@gmail.com');
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>{ mail };
        try {
            List<Messaging.SendEmailResult> results = Messaging.sendEmail(emails);
            for (Messaging.SendEmailResult res : results) {
                if (res.isSuccess()) {
                    System.debug('Email sent successfully!');
                } else {
                    System.debug('Email dispatch failed: ' + res.getErrors().get(0).getMessage());
                }
            }
        } catch (Exception ex) {
            System.debug('Apex transactional exception occurred: ' + ex.getMessage());
        }
    }
}
