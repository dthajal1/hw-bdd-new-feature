Feature: Create, Store, and Retrieve Director

  As a movie buff
  So that I can create and retrieve director
  I want to include and save and search on director information in movies I enter

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: create movie
  Given I am on the home page
  When I follow "Add new movie"
  And I fill in "Title" with "WWE"
  And I fill in "Director" with "RKO"
  And I press "Save Changes"
  Then I should be on the home page

  Given I am on the home page
  When I follow "Add new movie"
  And I fill in "Title" with "Hello World"
  And I fill in "Director" with "RKO"
  And I press "Save Changes"
  Then I should be on the home page

  When I follow "More about WWE"
  And I follow "Find Movies With Same Director"
  Then  I should be on the Similar Movies page for "WWE"
  And   I should see "Hello World"
  But I should not see "WWE"

  Given I am on the home page
  When I follow "More about WWE"
  And I follow "Delete"
  Then I should be on the home page

