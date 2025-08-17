This command uses **process substitution** (`<(command)`) to pass the output of `curl` as a file-like input to `bash`. Let's break it down:

### **What’s Happening?**
```bash
bash <(curl -sL https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
```
1. **`curl -sL <URL>`**  
   - Fetches the script (`install-release.sh`) from the given URL.
   - `-s` = Silent mode (no progress/errors shown).  
   - `-L` = Follow redirects (if any).

2. **Process Substitution (`<(...)`)**  
   - `<(command)` creates a **temporary named pipe (FIFO)** or **/dev/fd file descriptor** containing the output of `curl`.
   - Instead of saving the script to disk, Bash treats the output as a temporary "file" for input.

3. **`bash <file>`**  
   - The script is executed directly by `bash` without being saved to disk.

### **Why Use Process Substitution?**
- **No Temporary File Needed**  
  Avoids writing the script to disk (cleaner, no cleanup required).
- **Security Consideration**  
  Prevents tampering (if the script were saved, malware could modify it before execution).
- **One-Liner Convenience**  
  Combines download + execution in a single command.

### **Alternatives (Without Process Substitution)**
```bash
# Download to a file, then run (less secure)
curl -sL https://.../install-release.sh -o install.sh
bash install.sh
rm install.sh  # Cleanup

# Pipe directly (no process substitution)
curl -sL https://.../install-release.sh | bash
```
- **Piping (`| bash`)** works but may miss script features (e.g., `$0` detection fails).
- Process substitution preserves script behavior as if it were a local file.

### **Key Takeaway**
Process substitution (`<()`) is used here to **treat the downloaded script as a file** without saving it, combining safety and convenience. It’s a common pattern for remote script execution.

