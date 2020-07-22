require "refile/s3"

aws = {
  access_key_id: "AKIA3PENWKH2BV4QKPFE",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "wankogram",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)