# Raycast Scripts

A collection of useful Raycast scripts for developers to streamline common tasks.

## 📋 Available Scripts

### 1. Clone Git Repo (SSH)

**File:** `clone-repo.sh`  
**Description:** Quickly clone a Git repository using SSH URL into a specified directory.  
**Icon:** 🐙

**Features:**

- Clone repositories via SSH
- Specify custom destination directory
- Automatic git path detection for Homebrew installations
- Error handling for missing git command

### 2. Kill Port

**File:** `kill-port.sh`  
**Description:** Kill all processes running on a specified port.  
**Icon:** 🔪 (default)

**Features:**

- Kill processes by port number
- Safe execution (won't fail if no process found)
- Visual feedback with emoji

## 🚀 Setup Instructions

### Prerequisites

1. **Install Raycast** (if not already installed)

   - Download from [raycast.com](https://raycast.com)
   - Or install via Homebrew: `brew install --cask raycast`

2. **Make scripts executable**
   ```bash
   chmod +x clone-repo.sh
   chmod +x kill-port.sh
   ```

### Step-by-Step Configuration

#### Step 1: Open Raycast Scripts Directory

1. Open Raycast (`Cmd + Space`)
2. Type "Script Commands" and press Enter
3. Click "Add Script Directory"
4. Navigate to your project folder: `/Users/gimnath/Developer/Dev_Space/Products/open-source/awesome-scripts/raycast`
5. Select the `raycast` folder

#### Step 2: Configure Clone Git Repo Script

1. In Raycast, search for "Clone Git Repo"
2. The script should appear in your command palette
3. **Optional customization:**
   - Edit the default destination directory in the script (line 19)
   - Change from `/Users/gimnath/Developer/Dev_Space/Temp` to your preferred directory

#### Step 3: Configure Kill Port Script

1. In Raycast, search for "Kill Port"
2. The script should appear in your command palette
3. No additional configuration needed

#### Step 4: Test the Scripts

1. **Test Clone Repo:**

   - Open Raycast (`Cmd + Space`)
   - Type "Clone Git Repo"
   - Enter an SSH URL: `git@github.com:octocat/Hello-World.git`
   - Optionally specify a destination directory

2. **Test Kill Port:**
   - Open Raycast (`Cmd + Space`)
   - Type "Kill Port"
   - Enter a port number (e.g., `3000`)

## 🔧 Customization

### Clone Repo Script Customization

You can customize the default destination directory by editing line 19 in `clone-repo.sh`:

```bash
DEST_DIR="${2:-/Users/gimnath/Developer/Dev_Space/Temp}"
```

Replace `/Users/gimnath/Developer/Dev_Space/Temp` with your preferred default directory.

### Kill Port Script Customization

The kill port script is minimal and doesn't require customization. However, you can:

- Add a confirmation prompt for safety
- Add support for multiple ports
- Customize the output message

## 🛠️ Troubleshooting

### Common Issues

1. **"git not found" error**

   - Install git: `brew install git`
   - Ensure Homebrew is in your PATH

2. **Permission denied errors**

   - Make sure scripts are executable: `chmod +x *.sh`

3. **Scripts not appearing in Raycast**

   - Verify the correct directory is added to Raycast
   - Restart Raycast application
   - Check that the script files have proper Raycast metadata headers

4. **Clone fails with SSH errors**
   - Ensure SSH keys are set up with your Git provider
   - Test SSH connection: `ssh -T git@github.com`

## 📝 Usage Examples

### Clone Repo Script

```bash
# Basic usage - clones to default directory
git@github.com:facebook/react.git

# With custom destination
git@github.com:facebook/react.git /Users/username/projects/react
```

### Kill Port Script

```bash
# Kill processes on port 3000
3000

# Kill processes on port 8080
8080
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests! When contributing:

1. Follow the existing script format with proper Raycast metadata
2. Test scripts thoroughly before submitting
3. Update this README with any new scripts or changes

## 📄 License

This project is part of the awesome-scripts collection. Please refer to the main project README for licensing information.
