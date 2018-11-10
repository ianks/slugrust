require 'slugrust/version'
require 'thermite/fiddle'

toplevel_dir = File.dirname(File.dirname(__FILE__))

Thermite::Fiddle.load_module('init_slugrust',
                             cargo_project_path: toplevel_dir,
                             ruby_project_path: toplevel_dir)
