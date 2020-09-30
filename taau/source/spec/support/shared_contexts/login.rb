shared_context 'User logged', logged: true do
  let(:logged_user) { create(:user) }
  let(:session)     { create(:session, user: logged_user) }

  before do
    controller.send(:cookies).signed[:session] = session&.id
  end
end

shared_context 'User is not logged', not_logged: true do
  let(:session) { nil }
end
