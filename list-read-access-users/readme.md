# 🛠️ GitHub Read Access Collaborator Lister

This script helps you **list all users with read-only (pull) access** to a specific GitHub repository using the GitHub REST API. <br>
It is ideal for DevOps professionals or GitHub admins who want a quick way to audit repo permissions via the command line.

---

### 📥 Requirements

- GitHub [Personal Access Token](https://github.com/settings/tokens) (with `repo` scope)
- `bash` shell
- `curl`
- `jq` (JSON parser)

---

### 🚀 Usage:

1. Clone the repo or download the script.
2. Export your GitHub credentials securely:
   ```bash
   export username=your_github_username
   export token=your_github_pat

   Run the script:
    ./list_read_access_users.sh <repo_owner> <repo_name>

### Example:

```plaintext
export username=twili8
export token=ghp_abc123PersonalToken
./list_read_access_users.sh iTwili8_Manas MyGitCollabRepo
````

### 📁 Project Structure

```plaintext
github-read-access-auditor/
│
├── list_read_access_users.sh      # Main shell script
├── README.md                      # Project documentation
```

### 🏃 Output

```plaintext
Checking users with read access to twili8/MyCoolRepo...
Users with read access to twili8/MyCoolRepo:
  -> user123
  -> user456
```

### 👏 Credits

Originally created by Abhishek Veeramalla (Source: https://youtu.be/OuyNM5-r8P8?si=dgb8cO0Y1J21_KJr) <br>
Edited, explained, and improved by Twilightxd
