defmodule FileType.IntegrationTest do
  use ExUnit.Case, async: true
  import FileType.Fixture

  describe "application/dicom" do
    fixture "fixture.dcm"
  end

  describe "application/eps" do
    fixture "fixture.eps"
    fixture "fixture2.eps"
  end

  describe "application/epub+zip" do
    fixture "fixture.epub"
  end

  describe "application/gzip" do
    fixture "fixture.tar.gz"
  end

  describe "application/msword" do
    fixture "fixture.doc"
    fixture "fixture2.doc"
  end

  describe "application/mxf" do
    fixture "fixture.mxf"
  end

  describe "application/ogg" do
    fixture "fixture-unknown-ogg.ogx"
  end

  describe "application/pdf" do
    fixture "fixture.pdf"
  end

  describe "application/pgp-encrypted" do
    fixture "fixture.pgp"
  end

  describe "application/postscript" do
    fixture "fixture.ps"

    @tag :pending
    fixture "fixture.ai"
  end

  describe "application/rtf" do
    fixture "fixture.rtf"
  end

  describe "application/vnd.ms-cab-compressed" do
    fixture "fixture.cab"
  end

  describe "application/vnd.ms-excel" do
    fixture "fixture.xls"
  end

  describe "application/vnd.ms-fontobject" do
    fixture "fixture.eot"
    fixture "fixture-0x20001.eot"
  end

  describe "application/vnd.ms-powerpoint" do
    fixture "fixture.ppt"
  end

  describe "application/vnd.oasis.opendocument.presentation" do
    fixture "fixture.odp"
  end

  describe "application/vnd.oasis.opendocument.spreadsheet" do
    fixture "fixture.ods"
  end

  describe "application/vnd.oasis.opendocument.text" do
    fixture "fixture.odt"
  end

  describe "application/vnd.openxmlformats-officedocument.presentationml.presentation" do
    fixture "fixture.pptx"
    fixture "fixture2.pptx"
    fixture "fixture-office365.pptx"
  end

  describe "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" do
    fixture "fixture.xlsx"
    fixture "fixture2.xlsx"
    fixture "fixture-office365.xlsx"
  end

  describe "application/vnd.openxmlformats-officedocument.wordprocessingml.document" do
    fixture "fixture.docx"
    fixture "fixture2.docx"
    fixture "fixture-office365.docx"
  end

  describe "application/vnd.sketchup.skp" do
    fixture "fixture.skp"
  end

  describe "application/vnd.rar" do
    fixture "fixture.rar"
  end

  describe "application/vnd.tcpdump.pcap" do
    fixture "fixture-big-endian.pcap"
    fixture "fixture-little-endian.pcap"
  end

  describe "application/wasm" do
    fixture "fixture.wasm"
  end

  describe "application/x-7z-compressed" do
    fixture "fixture.7z"
  end

  describe "application/x-apache-arrow" do
    fixture "fixture.arrow"
  end

  describe "application/x-apple-diskimage" do
    fixture "fixture.dmg"
  end

  describe "application/x-asar" do
    @tag :pending
    fixture "fixture.asar"

    @tag :pending
    fixture "fixture2.asar"
  end

  describe "application/x-blender" do
    fixture "fixture.blend"
  end

  describe "application/x-bzip2" do
    fixture "fixture.bz2"
  end

  describe "application/x-compress" do
    fixture "fixture.tar.Z"
  end

  describe "application/x-deb" do
    fixture "fixture.deb"
  end

  describe "application/x-esri-shape" do
    fixture "fixture.shp"
  end

  describe "application/x-google-chrome-extension" do
    fixture "fixture.crx"
  end

  describe "application/x-indesign" do
    fixture "fixture.indd"
  end

  describe "application/x-lzh-compressed" do
    fixture "fixture.lzh"
  end

  describe "application/x-lzip" do
    fixture "fixture.tar.lz"
  end

  describe "application/x-mie" do
    fixture "fixture-big-endian.mie"
    fixture "fixture-little-endian.mie"
  end

  describe "application/x-mobipocket-ebook" do
    fixture "fixture.mobi"
  end

  describe "application/x-msdownload" do
    fixture "fixture.exe"
    fixture "fixture.msi"
  end

  describe "application/x-nintendo-nes-rom" do
    fixture "fixture.nes"
  end

  describe "application/x-rpm" do
    fixture "fixture.rpm"
  end

  describe "application/x-shockwave-flash" do
    fixture "fixture.swf"
  end

  describe "application/x-sqlite3" do
    fixture "fixture.sqlite"
  end

  describe "application/x-tar" do
    fixture "fixture.tar"
    fixture "fixture-spaces.tar"

    @tag :pending
    fixture "fixture-v7.tar"
  end

  describe "application/x-unix-archive" do
    fixture "fixture.ar"
  end

  describe "application/x-xpinstall" do
    fixture "fixture.xpi"
  end

  describe "application/x-xz" do
    fixture "fixture.tar.xz"
  end

  describe "application/x.apple.alias" do
    fixture "fixture.alias"
  end

  describe "application/x.ms.shortcut" do
    fixture "fixture.lnk"
  end

  describe "application/xml" do
    fixture "fixture.xml"
  end

  describe "application/zip" do
    fixture "fixture.zip"
  end

  describe "audio/aac" do
    fixture "fixture-id3v2.aac"
    fixture "fixture-adts-mpeg2.aac"
    fixture "fixture-adts-mpeg4.aac"
    fixture "fixture-adts-mpeg4-2.aac"
  end

  describe "audio/aiff" do
    fixture "fixture.aif"
  end

  describe "audio/amr" do
    fixture "fixture.amr"
  end

  describe "audio/ape" do
    fixture "fixture-monkeysaudio.ape"
  end

  describe "audio/midi" do
    fixture "fixture.mid"
  end

  describe "audio/mp4" do
    fixture "fixture.f4a"
    fixture "fixture.f4b"
    fixture "fixture.m4b"
  end

  describe "audio/mpeg" do
    fixture "fixture.mp1"
    fixture "fixture.mp2"
    fixture "fixture-mpa.mp2"
    fixture "fixture.mp3"
    fixture "fixture-ffe3.mp3"
    fixture "fixture-mp2l3.mp3"
  end

  describe "audio/ogg" do
    fixture "fixture.oga"
    fixture "fixture.ogg"
    fixture "fixture.spx"
  end

  describe "audio/opus" do
    fixture "fixture.opus"
  end

  describe "audio/qcelp" do
    fixture "fixture.qcp"
  end

  describe "audio/vnd.dolby.dd-raw" do
    fixture "fixture.ac3"
  end

  describe "audio/vnd.wave" do
    fixture "fixture.wav"
  end

  describe "audio/wavpack" do
    fixture "fixture.wv"
  end

  describe "audio/x-dsf" do
    fixture "fixture.dsf"
  end

  describe "audio/x-flac" do
    fixture "fixture.flac"
    fixture "fixture-id3v2.flac"
  end

  describe "audio/x-it" do
    fixture "fixture.it"
  end

  describe "audio/x-m4a" do
    fixture "fixture.m4a"
    fixture "fixture-babys-songbook.m4b.m4a"
  end

  describe "audio/x-ms-asf" do
    @tag :pending
    fixture "fixture.asf"

    @tag :pending
    fixture "fixture.wma.asf"
  end

  describe "audio/x-musepack" do
    fixture "fixture-sv7.mpc"
    fixture "fixture-sv8.mpc"
  end

  describe "audio/x-s3m" do
    fixture "fixture.s3m"
  end

  describe "audio/x-voc" do
    fixture "fixture.voc"
  end

  describe "audio/x-xm" do
    fixture "fixture.xm"
  end

  describe "font/otf" do
    fixture "fixture.otf"
  end

  describe "font/ttf" do
    fixture "fixture.ttf"
  end

  describe "font/woff" do
    fixture "fixture.woff"
    fixture "fixture-otto.woff"
  end

  describe "font/woff2" do
    fixture "fixture.woff2"
    fixture "fixture-otto.woff2"
  end

  describe "image/apng" do
    fixture "fixture.apng"
  end

  describe "image/avif" do
    fixture "fixture-yuv420-8bit.avif"
  end

  describe "image/bmp" do
    fixture "fixture.bmp"
  end

  describe "image/bpg" do
    fixture "fixture.bpg"
  end

  describe "image/flif" do
    fixture "fixture.flif"
  end

  describe "image/gif" do
    fixture "fixture.gif"
  end

  describe "image/heic" do
    fixture "fixture-heic.heic"
  end

  describe "image/heif" do
    fixture "fixture-mif1.heic"
  end

  describe "image/heif-sequence" do
    fixture "fixture-msf1.heic"
  end

  describe "image/icns" do
    fixture "fixture.icns"
  end

  describe "image/jp2" do
    fixture "fixture.jp2"
  end

  describe "image/jpeg" do
    fixture "fixture.jpg"
  end

  describe "image/jpm" do
    fixture "fixture.jpm"
  end

  describe "image/jpx" do
    fixture "fixture.jpx"
  end

  describe "image/ktx" do
    fixture "fixture.ktx"
  end

  describe "image/mj2" do
    fixture "fixture.mj2"
  end

  describe "image/png" do
    fixture "fixture.png"
    fixture "fixture-itxt.png"
  end

  describe "image/tiff" do
    fixture "fixture.tif"
    fixture "fixture-big-endian.tif"
    fixture "fixture-little-endian.tif"
  end

  describe "image/vnd.adobe.photoshop" do
    fixture "fixture.psd"
  end

  describe "image/vnd.ms-photo" do
    fixture "fixture.jxr"
  end

  describe "image/webp" do
    fixture "fixture.webp"
  end

  describe "image/x-adobe-dng" do
    fixture "fixture.dng"
    fixture "fixture2.dng"
  end

  describe "image/x-canon-cr2" do
    fixture "fixture.cr2"
  end

  describe "image/x-canon-cr3" do
    fixture "fixture.cr3"
  end

  describe "image/x-fujifilm-raf" do
    fixture "fixture.raf"
  end

  describe "image/x-icon" do
    fixture "fixture.ico"
    fixture "fixture.cur"
  end

  describe "image/x-nikon-nef" do
    fixture "fixture.nef"
    fixture "fixture2.nef"
    fixture "fixture3.nef"
    fixture "fixture4.nef"
  end

  describe "image/x-olympus-orf" do
    fixture "fixture.orf"
  end

  describe "image/x-panasonic-rw2" do
    fixture "fixture.rw2"
  end

  describe "image/x-sony-arw" do
    fixture "fixture.arw"
    fixture "fixture2.arw"
    fixture "fixture3.arw"
    fixture "fixture4.arw"
    fixture "fixture5.arw"
  end

  describe "model/gltf-binary" do
    fixture "fixture.glb"
  end

  describe "model/stl" do
    fixture "fixture.stl"
  end

  describe "text/calendar" do
    fixture "fixture.ics"
  end

  describe "video/3gpp" do
    fixture "fixture.3gp"
    fixture "fixture2.3gp"
  end

  describe "video/3gpp2" do
    fixture "fixture.3g2"
  end

  describe "video/MP1S" do
    fixture "fixture.ps.mpg"
  end

  describe "video/MP2P" do
    fixture "fixture.sub.mpg"
  end

  describe "video/mp2t" do
    fixture "fixture.mts"
  end

  describe "video/mp4" do
    fixture "fixture.f4p"
    fixture "fixture.f4v"
    fixture "fixture.m4p"
    fixture "fixture-dash.mp4"
    fixture "fixture-isom.mp4"
    fixture "fixture-mp4v2.mp4"
    fixture "fixture-imovie.mp4"
    fixture "fixture-isomv2.mp4"
  end

  describe "video/mpeg" do
    fixture "fixture.mpg"
    fixture "fixture2.mpg"
  end

  describe "video/ogg" do
    fixture "fixture.ogm"
    fixture "fixture.ogv"
  end

  describe "video/quicktime" do
    fixture "fixture.mov"
    fixture "fixture-moov.mov"
    fixture "fixture-mjpeg.mov"
  end

  describe "video/vnd.avi" do
    fixture "fixture.avi"
  end

  describe "video/webm" do
    fixture "fixture.webm"
  end

  describe "video/x-flv" do
    fixture "fixture.flv"
  end

  describe "video/x-m4v" do
    fixture "fixture.m4v"
  end

  describe "video/x-matroska" do
    fixture "fixture.mkv"
    fixture "fixture2.mkv"
  end

  describe "video/x-ms-asf" do
    @tag :pending
    fixture "fixture.wmv.asf"
  end
end
