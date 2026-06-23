# Global Claude Code Instructions

## Before Committing

- Update `CLAUDE.md` and `README.md` if the changes affect setup, architecture, commands, or design decisions documented there.
- **Do not stage or commit without my review.** After making changes, stop and let me review. I will stage the files I approve. Only proceed with `git commit` once I've staged changes and explicitly asked you to commit. I will say something like "make commits without my review" to bypass this.

## Environment

- Always run Python code inside a conda environment. Check `CLAUDE.md` or `CLAUDE.local.md` for the project-specific environment name. If none is specified, ask before running.
- Use CLI tools over GUIs (e.g. `git` over GitHub Desktop, `gh` over the GitHub web UI).

## Preferred Libraries

- **PyTorch** over NumPy or JAX for numerical/tensor work.
- **Polars** over Pandas for tabular data.

## Code Style

- Add type annotations by default (Python type hints, TypeScript types). Prefer strict typing.
- Keep responses terse. Don't narrate what the code already says — explain the *why* only when it's non-obvious.
