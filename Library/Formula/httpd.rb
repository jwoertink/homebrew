require 'formula'

class Httpd < Formula
  homepage 'http://httpd.apache.org/download.cgi'
  url 'http://newverhost.com/pub//httpd/httpd-2.4.2.tar.gz'
  md5 '02d674020d5eda33267861d4a09bf3d4'

  depends_on 'pcre'

  def install
    args = ["--prefix=#{prefix}", "--enable-access", "--enable-actions", 
     "--enable-alias", "--enable-asis", "--enable-auth",
     "--enable-auth_dbm", "--enable-auth_digest", "--enable-autoindex",
     "--enable-cache", "--enable-cgi", "--enable-dav",
     "--enable-dav_fs", "--enable-deflate", "--enable-dir",
     "--enable-disk_cache", "--enable-dumpio", "--enable-env",
     "--enable-expires", "--enable-fastcgi", "--enable-file_cache",
     "--enable-headers", "--enable-imap", "--enable-include",
     "--enable-info", "--enable-log_config", "--enable-log_forensic",
     "--enable-logio", "--enable-mem_cache", "--enable-mime",
     "--enable-mime_magic", "--enable-negotiation", "--enable-perl",
     "--enable-rewrite", "--enable-setenvif", "--enable-speling",
     "--enable-ssl", "--enable-status", "--enable-suexec",
     "--enable-unique_id", "--enable-userdir", "--enable-usertrack",
     "--enable-version", "--enable-vhost_alias", "--enable-so",
     "--enable-module=all", "--enable-shared=max"]
    
    system "./configure", *args
    system "make"
    system "make install"
  end
end
