Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { controller: "directors", action: "index" })

  get("/directors/eldest", { controller: "directors", action: "wisest" })
  
  get("/directors/youngest", { controller: "directors", action: "youngest" })

  get("directors/:direct_id", { controller: "directors", action: "bio" })
end
