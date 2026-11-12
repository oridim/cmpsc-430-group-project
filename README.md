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

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-37-23" src="https://github.com/user-attachments/assets/33e5d04f-e486-4550-bc8f-d8c50b33582e" />

### 6. Install Recommendend Extensions

Install the recommended extensions prompted after opening the workspace.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-47-59" src="https://github.com/user-attachments/assets/9be0063d-620d-47d7-a3f1-8cbdcfa6aacc" />

### 7. Reopen in Container

> **NOTE:** This will take several minutes as the Docker images are pulled from the registry. They are rather large.

Reopen the workspace in the Dev Container environment.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-46-38" src="https://github.com/user-attachments/assets/00330795-4f00-41b6-b01e-a85cf8ffbdd4" />

### 8. Access Dev Container Terminal

The SUN Lab Replica Dev Container environment is now accessible via VS Code's integrated terminal. Use it to access Python.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-59-22" src="https://github.com/user-attachments/assets/e8276754-408a-4513-85dd-3777e7b90ef8" />

## Accessing the Oracle DB

While VS Code has the Dev Container open, the development Oracle DB will be running on your machine available to all services on your computer and inside of the Dev Container.

### Access Oracle DB via Standalone Administrative Application

To access the Oracle DB in a standalone administrative application (ex. standalone Oracle SQL Developer) use the connection details of:

- **HOSTNAME:** `localhost`
- **PORT:** `1521`
- **IDENTIFIER TYPE:** `FREEPDB1`
- **ROLE:** `SYSDBA`
- **USERNAME:** `sys`
- **PASSWORD:** `abcdef1002`
- **JDBC URL _(if required)_:** `jdbc:oracle:thin:@//localhost:1521/FREEPDB1`

### Access Oracle DB in Python

To access the Oracle DB in the project's Python codebase use the connection details of:

- **DSN:** `localhost:1521/FREEPDB1`
- **MODE:** `SYSDBA`
- **USERNAME:** `sys`
- **PASSWORD:** `abcdef1002`

## Initialization Scripts

**NOTE:** Initialization scripts are ran in alphabetical order.

Initialization scripts allow you to easily save persistent table and row configuration and data, respectively, through VS Code restarts. Initialization scripts are ran **everytime that VS Code is closed and restarted**.

## Accessing the SQL Workbench Extension (Optional)

If you're happy with Oracle's standalone SQL Developer app, then you do not have to follow these instructions. They are just to help famaliarize yourself with Oracle's official SQL Developer VS Code extension.

### 1. Click SQL Developer Tab (Oracle SQL Developer Extension)

Open the "SQL Developer" tab to access the SQL workbench.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-38-05" src="https://github.com/user-attachments/assets/dd56ad8e-7489-4d87-bfd2-355676e70569" />

### 2. Create a Database Connection

Click the "Create Connection" button to create a new database connection.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-38-24" src="https://github.com/user-attachments/assets/1bdf3dc2-882d-4911-a7d9-b7f61ff409b0" />

### 3. Add Connection Name

Add a readable name to define the connection. It can be anything pleasing to you.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-38-50" src="https://github.com/user-attachments/assets/442f61b8-e74b-4860-9e69-1e091cffa013" />

### 4. Configure Authentication

Use the following details:

- _Role:_ `SYSDBA`
- _Username:_ `SYS`
- _Password:_ `abcdef1002`

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-39-07" src="https://github.com/user-attachments/assets/af38c14a-5ac0-49ea-af37-83303c49093b" />

### 5. Configure Connection

Switch "Connection Type" to `TNS`. It should automatically fill in the rest.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-39-20" src="https://github.com/user-attachments/assets/7bf5b34c-2144-4114-a4af-781e90573d67" />

### 6. Verify Connection Works

Hit the "Test" button to verify a working connection.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-39-32" src="https://github.com/user-attachments/assets/baf2fb24-e50c-453f-9a34-fcf26d38f182" />

### 7. Save the Connection

Enable "Save Password" checkbox and then hit the "Save" button. This connection profile will be saved through restarts.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-39-39" src="https://github.com/user-attachments/assets/56199c08-faff-44e1-b14e-a15d3876de09" />

### 8. Run the Test Query

Open `sql-worksheets/test-student-query.sql`. Then, hit the "Run Statement" button.

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-39-58" src="https://github.com/user-attachments/assets/cc79c09a-7424-4df8-8444-75dac84f00fc" />

<img width="2464" height="1684" alt="Screenshot From 2026-11-11 21-40-17" src="https://github.com/user-attachments/assets/ac7bcb92-5d18-44f5-a330-48148e184469" />
