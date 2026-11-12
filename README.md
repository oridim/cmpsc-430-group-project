# cmpsc-430-group-project

We're making an app about fooooooooood!

## Initializing Dev Container

Follow these steps to get the project's development environment running on your system.

### 1. Install WSL2 (Windows Only)

For Windows developers, Windows Subsystem for Linux 2 (WSL2) needs to be installed.

> https://learn.microsoft.com/en-us/windows/wsl/install

### 2. Install Docker Desktop (Windows / macOS Only)

> **NOTE:** Linux users should install Docker via their package manager.

For Windows / macOS developers, Docker Desktop needs to be installed.

> https://docs.docker.com/desktop/setup/install/windows-install/
> https://docs.docker.com/desktop/setup/install/mac-install/

### 3. Install VS Code

All developers should install VS Code for the best developer experience.

> https://code.visualstudio.com/download

### 4. Open the Workspace Folder

Open the cloned repository as a workspace folder in VS Code.

### 5. Trust the Workspace

Trust the workspace so that VS Code extensions will run with full permissions.

> image-here

### 6. Install Recommendend Extensions

Install the recommended extensions prompted after opening the workspace.

> image-here

### 7. Reopen in Container

> **NOTE:** This will take several minutes as the Docker images are pulled from the registry. They are rather large.

Reopen the workspace in the Dev Container environment.

> image-here

### 8. Access Dev Container Terminal

The SUN Lab Replica Dev Container environment is now accessible via VS Code's integrated terminal. Use it to access Python.

> image-here

## Accessing the Oracle DB

While VS Code has the Dev Container open, the development Oracle DB will be running on your machine available to all services on your computer and inside of the Dev Container.

### Access Oracle DB via Standalone Administrative Application

To access the Oracle DB in a standalone administrative application (ex. standalone Oracle SQL Developer) use the connection details of:

- **HOSTNAME:** `localhost`
- **PORT:** `1521`
- **IDENTIFIER TYPE:** `FREEPDB1`
- **USERNAME:** `system`
- **PASSWORD:** `abcdef1002`
- **ROLE:** `SYSDBA`
- **JDBC URL _(if required)_:** `jdbc:oracle:thin:@//localhost:1521/FREEPDB1`

### Access Oracle DB in Python

To access the Oracle DB in the project's Python codebase use the connection details of:

- **USERNAME:** `system`
- **PASSWORD:** `abcdef1002`
- **DSN:** `localhost:1521/FREEPDB1`

## Initialization Scripts

**NOTE:** Initialization scripts are ran in alphabetical order.

Initialization scripts allow you to easily save persistent table and row configuration and data, respectively, through VS Code restarts. Initialization scripts are ran **everytime that VS Code is closed and restarted**.

## Accessing the SQL Workbench Extension (Optional)

If you're happy with Oracle's standalone SQL Developer app, then you do not have to follow these instructions. They are just to help famaliarize yourself with Oracle's official SQL Developer VS Code extension.

### 1. Click SQL Developer Tab (Oracle SQL Developer Extension)

Open the "SQL Developer" tab to access the SQL workbench.

> image-here

### 2. Create a Database Connection

Click the "Create Connection" button to create a new database connection.

> image-here

### 3. Add Connection Name

Add a readable name to define the connection. It can be anything pleasing to you.

> image-here

### 4. Configure Authentication

Use the following details:

- _Role:_ `SYSDBA`
- _Username:_ `SYS`
- _Password:_ `abcdef1002`

> image-here

### 5. Configure Connection

Switch "Connection Type" to `TNS`. It should automatically fill in the rest.

> image-here

### 6. Verify Connection Works

Hit the "Test" button to verify a working connection.

> image-here

### 7. Save the Connection

Enable "Save Password" checkbox and then hit the "Save" button. This connection profile will be saved through restarts.

> image-here

### 8. Run the Test Query

Open `sql-worksheets/test-student-query.sql`. Then, hit the "Run Statement" button.

> image-here

> image-here
