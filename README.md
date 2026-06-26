# Mione Sofa Live Command Center

Static GitHub Pages app with Supabase as the free shared database.

## 1. Set up Supabase

1. Open Supabase.
2. Go to SQL Editor.
3. Paste and run `supabase-setup.sql`.
4. Confirm the table is named `orders` in lowercase.

The app already points at:

- Supabase URL: `https://arpuitifnvyyctphobql.supabase.co`
- Publishable key: the key inside `index.html`

### Optional Supabase CLI path

The project is already prepared with `supabase/config.toml` and a migration in `supabase/migrations/`.

If Supabase CLI is installed, run:

```powershell
supabase login
supabase link --project-ref arpuitifnvyyctphobql
supabase db push
```

Do not paste or commit your real database password into this repo. The publishable key is okay for a public frontend; the database password is private.

## 2. Publish on GitHub Pages

1. Create a GitHub repository.
2. Upload these files:
   - `index.html`
   - `supabase-setup.sql`
   - `README.md`
3. In GitHub, open Settings -> Pages.
4. Under Build and deployment, choose:
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/root`
5. Save.

GitHub will give you a live URL like:

`https://YOUR-GITHUB-USERNAME.github.io/YOUR-REPO-NAME/`

Send that same link to the owner, VA, and production team.

## Notes

This setup is intentionally simple and free. Anyone with the link can read and update orders because there is no login layer. For a private production system, add Supabase Auth or a lightweight passcode gate before sharing it widely.
