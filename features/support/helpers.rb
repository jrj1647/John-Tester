#general purpose methods

def env_is?(*envs)
  envs.include? current_env
end

[:production, :staging, :integration].each do |env|
  define_method("#{env}?") do
    env_is?(env)
  end
end

def current_env
  ENV.fetch("TEST_ENV").to_sym
end
