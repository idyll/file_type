defmodule FileType do
  @moduledoc """
  Detect the MIME type of a file based on it's content.
  """

  import FileType.Utils.Hex

  @required_bytes 262

  @enforce_keys [:ext, :mime]
  defstruct [:ext, :mime]

  @type ext :: binary()
  @type mime :: binary()
  @type t :: {ext(), mime()}
  @type error :: File.posix() | :unrecognized
  @type result :: {:ok, t()} | {:error, error()}

  @doc """
  This is the same as `from_io/1`, except that it will open and close
  a file for you.

  ## Examples

      iex> FileType.from_path("profile.png")
      {:ok, {"png", "image/png"}}

      iex> FileType.from_path("contract.docx")
      {:ok, {"docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}}

      iex> FileType.from_path("example.txt")
      {:error, :unrecognized}

      iex> FileType.from_path("does-not-exist.png")
      {:error, :enoent}

  """
  @spec from_path(Path.t()) :: result()
  def from_path(path) when is_binary(path) do
    case File.open(path, [:read, :binary], &from_io/1) do
      {:ok, result} -> result
      {:error, reason} -> {:error, reason}
    end
  end

  @doc """
  Determines a MIME type from an IO device.

  ## Examples

      iex> {:ok, io} = File.open("profile.png", [:read, :binary])
      {:ok, #PID<0.109.0>}

      iex> FileType.from_io(io)
      {:ok, {"png", "image/png"}}

  """
  @spec from_io(IO.device()) :: result()
  def from_io(io) do
    with {:ok, data} <- read(io, @required_bytes),
         {:ok, type} <- detect(io, data) do
      {:ok, type}
    else
      :eof -> {:error, :unrecognized}
      {:error, reason} -> {:error, reason}
    end
  end

  @doc """
  Format an error returned by this library.

  ## Examples

      iex> FileType.format_error(:unrecognized)
      "the file did not match any known format"

      iex> FileType.format_error(:enoent)
      "no such file or directory"

  """
  @spec format_error(error()) :: binary()
  def format_error(:unrecognized) do
    "the file did not match any known format"
  end

  def format_error(other) do
    other |> :file.format_error() |> to_string()
  end

  defp read(io, position \\ 0, size) do
    with {:ok, data} <- :file.pread(io, position, size) do
      case FileType.ID3.position(data) do
        0 -> {:ok, data}
        position -> read(io, position, size)
      end
    end
  end

  defp detect(io, ~h"504b0304" <> _) do
    FileType.Zip.detect(io)
  end

  defp detect(io, ~h"d0cf11e0a1b11ae1" <> _) do
    FileType.CFB.detect(io)
  end

  defp detect(_io, data) do
    case FileType.Magic.run(data) do
      nil -> {:error, :unrecognized}
      type -> {:ok, type}
    end
  end
end
