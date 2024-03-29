require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe IssuesController do

  # This should return the minimal set of attributes required to create a valid
  # Issue. As you add validations to Issue, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all issues as @issues" do
      issue = Issue.create! valid_attributes
      get :index
      assigns(:issues).should eq([issue])
    end
  end

  describe "GET show" do
    it "assigns the requested issue as @issue" do
      issue = Issue.create! valid_attributes
      get :show, :id => issue.id
      assigns(:issue).should eq(issue)
    end
  end

  describe "GET new" do
    it "assigns a new issue as @issue" do
      get :new
      assigns(:issue).should be_a_new(Issue)
    end
  end

  describe "GET edit" do
    it "assigns the requested issue as @issue" do
      issue = Issue.create! valid_attributes
      get :edit, :id => issue.id
      assigns(:issue).should eq(issue)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Issue" do
        expect {
          post :create, :issue => valid_attributes
        }.to change(Issue, :count).by(1)
      end

      it "assigns a newly created issue as @issue" do
        post :create, :issue => valid_attributes
        assigns(:issue).should be_a(Issue)
        assigns(:issue).should be_persisted
      end

      it "redirects to the created issue" do
        post :create, :issue => valid_attributes
        response.should redirect_to(Issue.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved issue as @issue" do
        # Trigger the behavior that occurs when invalid params are submitted
        Issue.any_instance.stub(:save).and_return(false)
        post :create, :issue => {}
        assigns(:issue).should be_a_new(Issue)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Issue.any_instance.stub(:save).and_return(false)
        post :create, :issue => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested issue" do
        issue = Issue.create! valid_attributes
        # Assuming there are no other issues in the database, this
        # specifies that the Issue created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Issue.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => issue.id, :issue => {'these' => 'params'}
      end

      it "assigns the requested issue as @issue" do
        issue = Issue.create! valid_attributes
        put :update, :id => issue.id, :issue => valid_attributes
        assigns(:issue).should eq(issue)
      end

      it "redirects to the issue" do
        issue = Issue.create! valid_attributes
        put :update, :id => issue.id, :issue => valid_attributes
        response.should redirect_to(issue)
      end
    end

    describe "with invalid params" do
      it "assigns the issue as @issue" do
        issue = Issue.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Issue.any_instance.stub(:save).and_return(false)
        put :update, :id => issue.id, :issue => {}
        assigns(:issue).should eq(issue)
      end

      it "re-renders the 'edit' template" do
        issue = Issue.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Issue.any_instance.stub(:save).and_return(false)
        put :update, :id => issue.id, :issue => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested issue" do
      issue = Issue.create! valid_attributes
      expect {
        delete :destroy, :id => issue.id
      }.to change(Issue, :count).by(-1)
    end

    it "redirects to the issues list" do
      issue = Issue.create! valid_attributes
      delete :destroy, :id => issue.id
      response.should redirect_to(issues_url)
    end
  end

end
