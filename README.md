#Podpeople

```cucumber
Feature: Scheduling podcasts with nerds
  As a nerd
  I want to be able to schedule podcasts about the object of my nerdery

  Scenario: I saw a movie that kicks buttocks or heard about one I want to see, like, real bad
    Given the host is available
    And I know what timeslots they prefer
    When I create a podcast invitation
    Then podpeoples should be notified
    And the host should be notified as well
```

## Concerns
- Topic
- Day (optional)
- Time slot (optional)
- Host Availability
- Guests/Co-Hosts Availability

