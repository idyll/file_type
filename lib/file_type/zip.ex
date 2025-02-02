defmodule FileType.Zip do
  @moduledoc false

  alias FileType.Zip.Header

  @zip {"zip", "application/zip"}

  @mimetypes [
    {"epub", "application/epub+zip"},
    {"odt", "application/vnd.oasis.opendocument.text"},
    {"ods", "application/vnd.oasis.opendocument.spreadsheet"},
    {"odp", "application/vnd.oasis.opendocument.presentation"}
  ]

  @doc "Detect the contents of a zip file"
  @spec detect(IO.device()) :: FileType.result()
  def detect(io) do
    with {:ok, _} <- Header.seek(io) do
      read(io)
    end
  end

  defp read(io) do
    with {:ok, header} <- Header.read(io),
         {:ok, type} <- match(header) do
      {:ok, type}
    else
      :continue -> read(io)
      :eof -> {:ok, @zip}
      {:error, reason} -> {:error, reason}
    end
  end

  defp match(%Header{name: "META-INF/mozilla.rsa"}) do
    {:ok, {"xpi", "application/x-xpinstall"}}
  end

  defp match(%Header{name: "xl/_rels/workbook.xml.rels"}) do
    {:ok, {"xlsx", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}}
  end

  defp match(%Header{name: "word/_rels/document.xml.rels"}) do
    {:ok, {"docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}}
  end

  defp match(%Header{name: "ppt/_rels/presentation.xml.rels"}) do
    {:ok, {"pptx", "application/vnd.openxmlformats-officedocument.presentationml.presentation"}}
  end

  for {ext, mime} <- @mimetypes, size = byte_size(mime) do
    defp match(%Header{name: "mimetype", size: unquote(size)}) do
      {:ok, {unquote(ext), unquote(mime)}}
    end
  end

  defp match(_), do: :continue
end
