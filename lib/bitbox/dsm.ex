defmodule BitBox.DSM do
	@moduledoc """
	Main State Machine evaluator
	"""

	@doc """
		@params:
			- runners: is a keyword map of format:
					states_keyword_map = [%{:run_state1=> :run_state2}, %{:run_state2=> :run_state1}]
			- input_state: t - :atom; is a Map's key of format :run_state1

	"""
	def exec_sm(runners, input_state, end_state) do
		{:ok, run_state} = Enum.fetch(runners, -1)
		
		nxt_state = run_state[input_state]
		
		exec_sm(Enum.drop(runners, -1), nxt_state, end_state)
	end
	
	def exec_sm([], input_state, end_state) do
		input_state #becomes the end_state
	end
	
	def exec_sm(_, nil, end_state) do
		end_state #becomes the end_state
	end

end