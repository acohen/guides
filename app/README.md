# App

## Acceptance Tests

### User Factories

#### Staff

* Parks and Rec Staff

#### Contacts

* Harry Potter Teachers

#### Employees

* 30 Rock Staff

#### Participants

* Harry Potter Students

### Spec

  * Locate the file based on `department/user/resource/`
  * Create the file based on an action group *TBD*
  * Name the feature based on `department/user/resource/`
  * Name the assetion based on the user doing an action to a resource
  * Capitalize proper nouns, resource names and statuses
  * Don't mention departments in assertions or steps
  * Store primary user steps in a before block
  * Create Factories in order `staff,cooperator,contact,employer,employee,participant`
  * Use `let!` for all factory creations
  * Order assertions from positive to negative
  * Write steps in logical order `Given,And,When,Then`
  * Align step definitions 6 spaces in
  * Don't use `before` if there's only one assertion
  * Do use `before` for any repeated steps
  * Use department specific staff
  * Place modifiers in the assertion line
  
Good `/wt/staff/host_applications/confirm_spec.rb`

```ruby
feature "WT Employee can confirm Host Applications" do
  let!(:april)
  
  let!(:pages)
  let!(:kenneth)
  
  let!(:slytherin)
  
  let!(:malfoy)
  
  it "Kenneth can confirm Malfoy's Host Application", :js do
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
```

### Steps
