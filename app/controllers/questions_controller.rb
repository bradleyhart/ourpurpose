require "net/smtp"
require 'tlsmail'
require 'time'

class QuestionsController < ApplicationController
    layout "questions_layout"

    # GET /questions/1
    # GET /questions/1.xml
    def show
        @question = Question.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @question }
        end
    end

    # GET /questions/new
    # GET /questions/new.xml
    def new
        @question = Question.new

        respond_to do |format|
            format.html # new.html.erb
            format.xml  { render :xml => @question }
        end
    end

    # POST /questions
    # POST /questions.xml
    def create
        @question = Question.new(params[:question])       

        respond_to do |format|
            if @question.save
                send_confirmation_email
                send_notification_email
                format.html { redirect_to(@question) }
                format.xml  { render :xml => @question, :status => :created, :location => @question }
            else
                format.html { render :action => "new" }
                format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
            end
        end
    end

    def send_confirmation_email
content = <<EOF
From: questions@ourpurpose.co.uk
To: #{@question.email}
Subject: Thank you for your question
Date: #{Time.now.rfc2822}

Thank you for your question, we will try to answer as soon as we can Inshallah

Your Question: #{@question.question}
EOF

        Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
        Net::SMTP.start('mail.ourpurpose.co.uk', 2626, 'ourpurpose.co.uk', 'questions@ourpurpose.co.uk', '10Salam10', :login) do |smtp|
            smtp.send_message(content, 'questions@ourpurpose.co.uk', @question.email)
        end
    end

    def send_notification_email
content = <<EOF
From: #{@question.email}
To: questions@ourpurpose.co.uk
Subject: Ourpurpose Question
Date: #{Time.now.rfc2822}

From: #{@question.email}
Question: #{@question.question}
EOF

        Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
        Net::SMTP.start('mail.ourpurpose.co.uk', 2626, 'ourpurpose.co.uk', 'questions@ourpurpose.co.uk', '10Salam10', :login) do |smtp|
            smtp.send_message(content, 'questions@ourpurpose.co.uk', 'questions@ourpurpose.co.uk')
        end
    end

end
