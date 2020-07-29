defmodule Mastery.Core.Template do
  @moduledoc """

  - Represent a grouping of questions on a quiz
  - Generate questions with a compatible template and functions
  - Check the response of a single question in the template

  #### Data structures
  ```
  %Mastery.Core.Template {
    category: nil, # (atom) A grouping of questions of the same type
    checker: nil, # (function(substitutions, string) -> boolean). Given the substitutions strings and an answer, the function returns true if the answer is correct.
    compiled: nil, # (macro) The compiled version of the template for execution.
    generators: nil, # ( %{ substitution: list or function} ) The generator for each substitution in a template. Each generator is a list of elements or a function.
    instructions: nil, # (string) A string telling the customer how to answer questions
    name: nil, # (atom) Name of the template
    raw: nil # (string) The template code before compilation.
  }
  ```
  """

  # create a list of words ~w where each of them is an atom: "a" modifier
  defstruct ~w[name category instructions raw compiled generators checker]a
end
