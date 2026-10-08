// 1. Prepare delivery routing configurations
List<String> recipients = new List<String>{ 'harshahegde10s@gmail.com' };
String emailSubject = 'Test Email from Salesforce Apex';
String emailBody = '<h1>Hello!</h1><p>This is a verification email sent via Anonymous Apex.</p>';

// 2. Invoke static transaction logic
EmailService.sendSingleEmail(recipients, emailSubject, emailBody);
