namespace :stretcher do
  task :npm_install do
    on application_builder_roles do
      within local_build_path do
        execute :npm, :install, '--production --silent --no-spin'
      end
    end
  end
end

after 'stretcher:checkout_local', 'stretcher:npm_install'
