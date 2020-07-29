defmodule Mastery.Core.Response do
  @moduledoc """
  User responses to the questions asked

  #### Data structures
  ```
  %Mastery.Core.Response {
    quiz_title: nil, # (String.t) Title field from the quiz
    template_name: nil, # (atom) Name to identify the template
    to: nil, # (String.t) The question being asked. This is a repose "to" this question
    email: nil, # (String.t) Email of the user answering the question
    correct: nil, # (boolean) Whether the given answer was correct
    timestamp: nil, # (Time.t) The time the answer was provided
  }
  ```
  """
  defstruct ~w[quiz_title template_name to email answer correct timestamp]a
end
