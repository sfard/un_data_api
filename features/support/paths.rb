def path_to(page_name)
	case page_name

	when /\/organizations/
		get organizations_path(:json)

	when /\/organization\/categories/
		get categories_path("WHO", :json)

	when /\/organization\/category\/countries/
		get countries_path("WHO", "Health", :json)

	end
end