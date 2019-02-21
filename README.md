# README

## This example project is used to show a bug with Rails inflections.

Here's a simple Rails app with a single engine. The engine is named MyEngine but we want the snake case version to be just myengine. 

I've set the following inflection rules which allow this to work in most cases.

```
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.acronym 'MyEngine'
  inflect.human 'myengine', 'MyEngine'
end
```

However, when running the install:migrations rake task, the inflection config is not loaded soon enough and I get an error "did you mean my_engine".

Here are the steps to reproduce: 

1. Clone the repo
2. Try to install the migrations from the engine `rails myengine:install:migrations`
3. Notice error message "did you mean my_engine"
