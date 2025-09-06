# Homepage of Lockey

## Configuration

### Configure Projects

Write information of projects which include **name**, **link**, and **image**, in `config.toml` file.

```toml
projects = [
  { name = "Project Name", link = "URL of Project", image = "path/to/image" },
]
```

### Configure Member Information

Create `${member}.md` under `content/testimonials/` folder, and the template of content is:

```markdown
+++
[extra]
name = "Member Name"
image = "/images/avatars/your-avatar"
blurb = "Introduction or Slogan"
link = "Personal Website Link (Optional)"
+++
```

## Development

1. Clone and enter the repository.

```bash
git clone --recurse-submodules git@github.com:lockeyteam/lkt-icu.git && cd lkt-icu/
```

2. Enter dev shell.

```bash
nix develop
```

3. Start the server.

```bash
just dev
```

4. Build the site.

```bash
just build
```

5. Format code (Run this before pushing).

```bash
just format
```

## Acknowledgement

The website is based on [Vonge Zola Theme](https://github.com/paberr/vonge-zola-theme). Thanks all related contributors for making the theme freely available.
