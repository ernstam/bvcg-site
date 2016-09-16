require 'rails_helper'

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

RSpec.describe ReservationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Reservation. As you add validations to Reservation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReservationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all reservations as @reservations" do
      reservation = Reservation.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:reservations)).to eq([reservation])
    end
  end

  describe "GET #show" do
    it "assigns the requested reservation as @reservation" do
      reservation = Reservation.create! valid_attributes
      get :show, params: {id: reservation.to_param}, session: valid_session
      expect(assigns(:reservation)).to eq(reservation)
    end
  end

  describe "GET #new" do
    it "assigns a new reservation as @reservation" do
      get :new, params: {}, session: valid_session
      expect(assigns(:reservation)).to be_a_new(Reservation)
    end
  end

  describe "GET #edit" do
    it "assigns the requested reservation as @reservation" do
      reservation = Reservation.create! valid_attributes
      get :edit, params: {id: reservation.to_param}, session: valid_session
      expect(assigns(:reservation)).to eq(reservation)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Reservation" do
        expect {
          post :create, params: {reservation: valid_attributes}, session: valid_session
        }.to change(Reservation, :count).by(1)
      end

      it "assigns a newly created reservation as @reservation" do
        post :create, params: {reservation: valid_attributes}, session: valid_session
        expect(assigns(:reservation)).to be_a(Reservation)
        expect(assigns(:reservation)).to be_persisted
      end

      it "redirects to the created reservation" do
        post :create, params: {reservation: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Reservation.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved reservation as @reservation" do
        post :create, params: {reservation: invalid_attributes}, session: valid_session
        expect(assigns(:reservation)).to be_a_new(Reservation)
      end

      it "re-renders the 'new' template" do
        post :create, params: {reservation: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested reservation" do
        reservation = Reservation.create! valid_attributes
        put :update, params: {id: reservation.to_param, reservation: new_attributes}, session: valid_session
        reservation.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested reservation as @reservation" do
        reservation = Reservation.create! valid_attributes
        put :update, params: {id: reservation.to_param, reservation: valid_attributes}, session: valid_session
        expect(assigns(:reservation)).to eq(reservation)
      end

      it "redirects to the reservation" do
        reservation = Reservation.create! valid_attributes
        put :update, params: {id: reservation.to_param, reservation: valid_attributes}, session: valid_session
        expect(response).to redirect_to(reservation)
      end
    end

    context "with invalid params" do
      it "assigns the reservation as @reservation" do
        reservation = Reservation.create! valid_attributes
        put :update, params: {id: reservation.to_param, reservation: invalid_attributes}, session: valid_session
        expect(assigns(:reservation)).to eq(reservation)
      end

      it "re-renders the 'edit' template" do
        reservation = Reservation.create! valid_attributes
        put :update, params: {id: reservation.to_param, reservation: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested reservation" do
      reservation = Reservation.create! valid_attributes
      expect {
        delete :destroy, params: {id: reservation.to_param}, session: valid_session
      }.to change(Reservation, :count).by(-1)
    end

    it "redirects to the reservations list" do
      reservation = Reservation.create! valid_attributes
      delete :destroy, params: {id: reservation.to_param}, session: valid_session
      expect(response).to redirect_to(reservations_url)
    end
  end

end
