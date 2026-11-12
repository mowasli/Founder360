# Founder360 AI

Runnable bilingual startup diagnostic and venture-development platform. Built from the supplied 20-pillar / 100-indicator rubric and 140-question AR/EN bank, with real local accounts, tenant authorization, durable assessments, encrypted evidence, a deterministic financial/scoring engine, versioned reports, PDF/JSON exports, experiments and a program console.

**Read [README_AR.md](README_AR.md) for the full Arabic operating guide.** This is a local pilot release, not a production-readiness certificate. No paid AI calls or live competitor verification were performed. External adapters are implemented but disabled until keys, consent, authorized models and budgets are configured.

```bash
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
npm ci
npm run build
cp .env.example .env.local
python scripts/serve.py
```

Open `http://localhost:8000`. The built `dist/` is included; Node is needed only to rebuild the React frontend. On Windows use `py -3.12 -m venv .venv` and `.venv\Scripts\Activate.ps1`, or directly invoke `.venv\Scripts\python.exe`.

Create a program administrator with `python scripts/manage.py create-admin --email manager@example.org`. Seed synthetic accounts with `python scripts/manage.py demo` (development only; choose a password interactively). The isolated synthetic trial button permits end-to-end exploration without personal credentials in development and must not be used for real data.

```bash
python -m unittest discover -s backend/tests -v
python -m unittest discover -s specification/06_tests -v
```

- [Architecture decisions](docs/ARCHITECTURE.md)
- [Schema and access controls](docs/SCHEMA.md)
- [Deployment and integration](docs/DEPLOYMENT.md)
- [Release acceptance evidence](docs/ACCEPTANCE_REPORT.md)
- OpenAPI: `/openapi.json`; interactive API docs: `/docs` when the server runs.

No protected external books or datasets are ingested. The source registry is a link/permissions directory. Original source specification is preserved in `specification/`. Project-authored code is under the MIT license; bundled fonts retain their separate notices in `frontend/public/fonts/`.
