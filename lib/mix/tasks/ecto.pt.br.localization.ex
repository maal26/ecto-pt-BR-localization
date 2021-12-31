defmodule Mix.Tasks.Ecto.Localization.PtBr do
  @moduledoc "Publish errors.po file with ecto errors validation in pt_BR : `mix help ecto.localization.pt_br`"
  use Mix.Task

  @shortdoc "Publish ecto errors.po validation in pt_BR."
  def run(_) do
    publish_file()
  end

  defp publish_file do
    path = "#{File.cwd!()}/priv/gettext/pt_BR/LC_MESSAGES/"
    with :ok <- File.mkdir_p!(Path.dirname(path)),
         :ok <- move_localization(path) do
      :ok
    end
  end

  defp move_localization(path) do
    errors_path = "#{:code.priv_dir(:ecto_ptbr_localization)}/gettext/pt_BR/LC_MESSAGES/errors.po"

    case File.cp(errors_path, path <> "errors.po") do
      :ok -> :ok
      {:error, reason} -> {:error, reason}
    end
  end
end
