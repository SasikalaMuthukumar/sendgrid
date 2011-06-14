require 'json/pure'
require '/home/user/wrkspace/playground/sendgrid_mail/lib/smtp_api_header.rb'
class SmtpMainsendController < ApplicationController
   
  def index
    
    
    # fromEmail is your email
    # toEmail is recipient's email address
    # For multiple recipient e-mails, the 'toEmail' address is irrelivant
    fromEmail =  'kranthi.odesk@gmail.com'
    toEmail = 'sasikala@azrisolutions.com'
    subject = "Contact Response for <name> at <time>"
    text = "Hi <name>!\nHow are you?\n"
    
    hdr = SmtpApiHeader.new()
    # The list of addresses this message will be sent to
    receiver = ['testweunite1@yopmail.com', 'testweunite2@yopmail.com', 'testweunite3@yopmail.com']
    
    # The names of the recipients
    times = ['1pm', '2pm', '3pm']
    
    # Another subsitution variable
    names = ['Isaac', 'Tim', 'Jose']
    bcc = "testweunite@yopmail.com"
    
    # Set all of the above variables
    hdr.addTo(receiver)
    hdr.addSubVal('<time>', times)
    hdr.addSubVal('<name>', names)
    hdr.addSubVal('<bcc>', bcc)
    
    # Specify that this is an initial contact message
    hdr.setCategory("initial")
    
    # Enable a text footer and set it
    hdr.addFilterSetting('footer', 'enable', 1)
    hdr.addFilterSetting('footer', "text/plain", "Thank you for your business")
    
    #send the email
    Emailer::deliver_contact(toEmail, fromEmail, text, hdr.to_json, bcc)
  end
end
