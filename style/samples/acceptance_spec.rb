# /spec/acceptance/wt/employee/host_applications/confirm_spec.rb

feature "WT Employee can confirm Host Applications" do
  let!(:april)

  let!(:pages)
  let!(:kenneth)

  let!(:slytherin)

  let!(:malfoy)

  scenario "Kenneth can confirm Malfoy's Host Application", :js do
    Given "Kenneth is signed in"
    And   "Kenneth visits Pages On Review Host Applications"
    When  "Kenneth confirms Malfoy's Host Application"
    Then  "Kenneth sees Pages does not have Malfoy On Review"

    When  "Kenneth visits Pages Placed Host Applications"
    Then  "Kenneth sees Pages has Malfoy on Placed"

    Given "April is signed in"
    And   "April is on Pages' Page"
    When  "April visits Pages' Placed Host Applications"
    And   "April sees Pages has Malfoy on Placed"
  end
end
