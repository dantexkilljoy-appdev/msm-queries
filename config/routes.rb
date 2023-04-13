Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { controller: "directors", action: "index" })

  get("/directors/eldest", { controller: "directors", action: "wisest" })
  
  get("/directors/youngest", { controller: "directors", action: "youngest" })

  get("/directors/:direct_id", { controller: "directors", action: "bio" })

  get("/movies", { controller: "movies", action: "index"})

  get("/movies/:movie_id", { controller: "movies", action: "overview" })

  get("/actors", { controller: "actors", action: "index" })

  get("/actors/:actor_id", { controller: "actors", action: "details" })

end
