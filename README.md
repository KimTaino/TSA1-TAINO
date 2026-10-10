# Tasks for Today Management System

A CodeIgniter 4 task-management application with four required pages:

- `/` shows only tasks whose `task_date` is today.
- `/tasks` shows every task ordered by `task_date`.
- `/profile` shows the single demo user.
- `/about` identifies the developer.

## Local setup

1. Use PHP 8.2 or newer with MySQL/MariaDB, `intl`, `mbstring`, and `mysqli` enabled.
2. Import `tasks_today.sql` in phpMyAdmin. It creates the database, both tables, 8 tasks across four dates, and exactly one user.
3. If needed, edit `.env` with your URL and database credentials.
4. Point Apache's document root to this project's `public` folder, then open the configured URL.

Example `.env` values:

```ini
app.baseURL = 'http://localhost/your-folder/public/'
database.default.hostname = localhost
database.default.database = tasks_today
database.default.username = root
database.default.password =
database.default.DBDriver = MySQLi
```

## Alternative CodeIgniter setup

After creating an empty database and setting `.env`, run:

```bash
php spark migrate
php spark db:seed TasksAndUsersSeeder
```

## Hosting checklist

Upload the whole project, including `vendor`, but set the domain or subdomain document root to the `public` folder. Update `app.baseURL` to the exact hosted URL, update the MySQL credentials in `.env`, import `tasks_today.sql` or run the migration and seeder, and make `writable` and its subfolders writable by the web server. Do not expose the project root as the public document root.
