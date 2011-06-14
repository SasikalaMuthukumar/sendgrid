class Emailer < ActionMailer::Base
  
  def contact(recipient, subject, message,  header, bcc, sent_at = Time.now)
    @subject = subject
    @recipients = 'sasikala@azrisolutions.com'
    @from = 'kranthi.odesk@gmail.com'
    @bcc = bcc
    @sent_on = sent_at
    @body["title"] = 'This is title'
    @body["email"] = 'kranthi.odesk@gmail.com'
    @body["message"] = message
    @headers["X-SMTPAPI"] = header
  end
end
