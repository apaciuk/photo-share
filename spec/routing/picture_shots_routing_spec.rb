require "rails_helper"

RSpec.describe PictureShotsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/picture_shots").to route_to("picture_shots#index")
    end

    it "routes to #new" do
      expect(get: "/picture_shots/new").to route_to("picture_shots#new")
    end

    it "routes to #show" do
      expect(get: "/picture_shots/1").to route_to("picture_shots#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/picture_shots/1/edit").to route_to("picture_shots#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/picture_shots").to route_to("picture_shots#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/picture_shots/1").to route_to("picture_shots#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/picture_shots/1").to route_to("picture_shots#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/picture_shots/1").to route_to("picture_shots#destroy", id: "1")
    end
  end
end
