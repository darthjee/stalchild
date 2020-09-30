shared_context 'User is logged', logged: true do
  let(:logged_user) { create(:user) }
  let(:session)     { create(:session, user: logged_user) }

  before do
    controller.send(:cookies).signed[:session] = session&.id
  end
end
