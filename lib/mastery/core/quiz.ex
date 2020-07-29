defmodule Mastery.Core.Quiz do
  @moduledoc """
  The quiz asks questions until the user achieves mastery.

  Once the user gets enough question correct, the quiz move to the next section

  #### Data structure
  ```
  %Mastery.Core.Quiz {
    title: nil, # (String.t) the title for the quiz
    mastery: 3, # (integer) The number of questions to get right to master a quiz category
    template: %{}, # (%{"category" => [Template.t]}) The master list of templates by category
    used: [], # ([Template.t]) The template for current cycle not mastered yet.
    current_question: nil, # (Question.t) The current question being asked
    last_response: nil, # (Response.t) The last response given by the user
    record: %{}, # (%{"template_name" => integer}) The number of correct answers in a row a user has given for each template
    mastered: [] # ([Template.t]) The templates that have been mastered
  }
  ```
  """
  defstruct title: nil,
    mastery: 3,
    template: %{},
    used: [],
    current_question: nil,
    last_response: nil,
    record: %{},
    mastered: []
end
