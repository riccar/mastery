defmodule Mastery.Core.Question do
  @moduledoc """
  Instantiations of `Mastery.Core.Templates`

  #### Data structures
  ```
  %Mastery.Core.Question {
    asked: nil, # (String.t): The question text for a user. For example "1 + 2"
    substitution: nil, # (%{substitution: any}): The value chosen for each substitution field in a template
    template: nil # (template.t): The template that created the question
  }
  ```
  """
  defstruct ~w[asked substitution template]a
end
