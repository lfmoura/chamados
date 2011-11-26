require 'spec_helper'

describe Issue do
  describe "Automação por e-mail" do
    it "should create a new issue when receiving a valid e-mail" do
      msg= Mail::Message.new(File.read("#{Rails.root}/spec/files/email_simples.eml"))
      msg.subject.should == "Erro no tela de apontamento"
      msg.body.should match "problema na tela de apontamento"
      msg.text_part.decoded.should match "tela de apontamento"
      i = Issue.create_from_message(msg)
      i.subject.should == "Erro no tela de apontamento"
      i.text.should match "Encontrei um problema na tela de apontamento quando o"
    end
    #it "should add a reply if there is a issue created"
    #it "should attach a file when receiveing a email with attachment"
  end
end

