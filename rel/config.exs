use Mix.Releases.Config,
  default_release: :default,
  default_environment: :release

defmodule Phoenix13Base.ReleaseConfigHelpers do
  def get_release_version do
    System.get_env("RELEASE_VERSION")
  end
end

environment :release do
  set include_erts: true
  set include_src: false
  set vm_args: "rel/vm.args"
end

release :phoenix13_base do
  set version:
        Phoenix13Base.ReleaseConfigHelpers.get_release_version() ||
          current_version(:phoenix13_base)

  set applications: [
        :runtime_tools
      ]

  set config_providers: [
        {Toml.Provider,
         [
           path: "${CONFIG_PATH}",
           keys: :atoms,
           transforms: [Phoenix13Base.ConfigTOMLTransform]
         ]}
      ]
end
