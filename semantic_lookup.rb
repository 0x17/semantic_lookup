module SemanticLookup
	def methods_passing_test(obj, *params, expv)
		obj.class.instance_methods(false).select do |msym|
			begin
				if params.length == 0 && obj.method(msym).arity == -1
					obj.clone.send(msym) == expv
				elsif obj.method(msym).arity == params.length
					obj.clone.send(msym, *params) == expv
				else
					false
				end
			rescue Exception
				false
			end
		end
	end
end
