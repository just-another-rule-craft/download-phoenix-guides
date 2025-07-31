# Phoenix Guides Downloader

This script downloads the official Phoenix Framework guides to be used with coding agents in Phoenix projects.

## What it does

The `download_guides.sh` script performs the following actions:

1. **Creates a temporary directory** to clone the Phoenix repository
2. **Clones the Phoenix Framework repository** (shallow clone with depth=1 for efficiency)
3. **Creates a destination folder** called `rules-phoenix`
4. **Creates a rules file** (`rules.md`) for the coding agent
5. **Copies the entire `guides/` folder** from the Phoenix repository to the destination
6. **Cleans up temporary files** after the operation completes

## Purpose

This tool is designed to provide coding agents with access to the official Phoenix Framework documentation and guides. By having local access to these guides, coding agents can:

- Reference official Phoenix conventions and best practices
- Understand framework patterns and architecture
- Provide more accurate code suggestions and implementations
- Follow Phoenix-specific guidelines when generating code

## How to use

### Prerequisites

- Git must be installed on your system
- Bash shell environment (macOS, Linux, or WSL on Windows)
- Internet connection to download from GitHub

### Quick Start (Recommended)

**Run directly from GitHub with a single command:**

```bash
curl -sSL https://raw.githubusercontent.com/just-another-rule-craft/download-phoenix-guides/refs/heads/main/download_guides.sh | bash
```

This command will:
- Download the script directly from the repository
- Execute it immediately
- Create the `rules-phoenix/` folder in your current directory

### Alternative: Manual Download

1. **Download or clone the repository:**
   ```bash
   git clone https://github.com/just-another-rule-craft/download-phoenix-guides.git
   cd download-phoenix-guides
   ```

2. **Make the script executable:**
   ```bash
   chmod +x download_guides.sh
   ```

3. **Run the script:**
   ```bash
   ./download_guides.sh
   ```

3. **The script will create a `rules-phoenix/` folder** containing:
   - `rules.md` - Empty file for custom coding agent rules
   - `guides/` - Complete Phoenix Framework documentation

### Both methods will create the same result

Whether you use the quick one-liner or download manually, both approaches will create the same `rules-phoenix/` folder structure in your current directory.

### Integration with Coding Agents

After running the script, you can integrate the downloaded guides with your coding agent by:

1. **Point your coding agent** to the `rules-phoenix/` directory
2. **Configure the agent** to use the guides as reference material
3. **Add custom rules** to the `rules.md` file if needed
4. **Include the guides** in your project's context for better Phoenix-specific code generation

### Example Output Structure

```
rules-phoenix/
├── rules.md
└── guides/
    ├── introduction/
    ├── installation.md
    ├── up_and_running.md
    ├── directory_structure.md
    ├── request_lifecycle.md
    ├── routing.md
    ├── controllers.md
    ├── views.md
    ├── templates.md
    ├── channels.md
    ├── presence.md
    ├── ecto.md
    ├── contexts.md
    ├── mix_tasks.md
    ├── testing/
    ├── deployment/
    └── ... (and more)
```

## Benefits for Phoenix Development

- **Consistent code patterns** following Phoenix conventions
- **Up-to-date documentation** directly from the official repository
- **Local access** for offline development
- **Comprehensive coverage** of all Phoenix features and best practices
- **Lightweight download** using shallow git clone

## Notes

- The script uses a temporary directory that is automatically cleaned up
- Only the latest version of the guides is downloaded (depth=1 clone)
- The destination folder will be created in the current working directory
- If `rules-phoenix/` already exists, the script will overwrite its contents

## Troubleshooting

- **Permission denied**: Ensure the script has execute permissions with `chmod +x download_guides.sh`
- **Git not found**: Install Git on your system
- **Network issues**: Ensure you have internet connectivity to access GitHub
- **Disk space**: Ensure you have sufficient disk space for the guides (typically < 10MB)