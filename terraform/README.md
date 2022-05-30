<div align="center">
    <picture>
        <source media="(prefers-color-scheme: light)" srcset="https://www.datocms-assets.com/2885/1620155116-brandhcterraformverticalcolor.svg">
        <source media="(prefers-color-scheme: dark)" srcset="https://www.datocms-assets.com/2885/1620155117-brandhcterraformverticalcolorwhite.svg">
        <img src="https://www.datocms-assets.com/2885/1620155116-brandhcterraformverticalcolor.svg"/>
    </picture>
</div>

# Terraform

Multiverse uses Terraform to manage and setup infrastructure as code.

## Module Reference

| Name      | Purpose                                             |
|-----------|-----------------------------------------------------|
| `buckets` | Manages Backblaze B2 buckets                        |
| `dns`     | Manages DNS records through the Cloudflare provider |
| `rules`   | Manages Cloudflare rules i.e. page rules            |