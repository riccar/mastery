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
  # Alias Mastery.Core.Template, :as Template
  alias Mastery.Core.Template

  defstruct ~w[asked substitutions template]a

  def new(%Template{ } = template) do
    template.generators
    |> Enum.map(&build_substitution/1)
    |> evaluate(template)
  end

  defp build_substitution({name, choices_or_generator}) do
    {name, choose(choices_or_generator)}
  end

  defp choose(choices) when is_list(choices) do
    Enum.random(choices)
  end

  defp choose(generator) when is_function(generator) do
    generator.()
  end

  defp compile(template, substitutions) do
    template.compiled
    |> Code.eval_quoted(assigns: substitutions)
    |> elem(0)
  end

  defp evaluate(substitutions, template) do
    %__MODULE__{
      asked: compile(template, substitutions),
      substitutions: substitutions,
      template: template
    }
  end
end
