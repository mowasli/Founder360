# Founder360 AI — Release acceptance review

Reviewed: 12 November 2026. Scope: local runnable pilot with synthetic cases.

**Release decision: production gate NOT PASSED.** The local platform is implemented and tested. Live external verification, production infrastructure/security validation and a real-founder pilot remain unperformed. No API key was created, no paid model request was made and no protected corpus was ingested.

## Executed verification

- Application tests: 74 passed (scoring, financial metadata and units, routing, tenants/roles, consent, encrypted evidence, source reviews/conflicts/expiry, jobs, exports and PDF).
- Original attached reference-engine suite: 8 passed. Total: **82 automated tests passed**.
- React/Vite production build: passed. Python compile check: passed. Exact command output: `docs/test-results.txt`.
- Synthetic cases: local services, SaaS and marketplace; idea through growth routing, plus idea/early-revenue report schema validation. Original supplied marketplace fixture retained.
- Browser review: Arabic RTL and English LTR; public sample; isolated synthetic founder workspace; answer saved and next question advanced; report job completed; task status persisted; actual PDF download completed. Native inputs/buttons are labelled in the accessibility tree.
- PDF review: Arabic and English PDFs generated with embedded fonts, correct Arabic shaping, Latin company/metric text and clickable references; multipage layout visually inspected.
- Synthetic account seeding and SQLite backup integrity/decryption verification: passed. A full live infrastructure restore drill was not performed.

PASS means the stated local behavior was verified. NOT RUN means no evidence of an external/field/deployment outcome is claimed. FAIL means a requested production property is not yet provided by this local implementation.

## Original acceptance criteria, in original order

| # | Criterion | Status | Evidence / limit |
|---|---|---|---|
| 1 | 20 pillars / 100 distinct criteria; stage-aware applicability | PASS | Original stable IDs retained; explicit pre-launch exclusions and reasons; stage/model/sector routing tests. |
| 2 | AR/EN questions, Arabic RTL visual review and accessible keyboard/screen-reader structure | PASS | Desktop AR/EN visual and accessibility-tree review; labelled native controls, focus styles, reduced motion. Full assistive-technology certification and narrow/mobile visual review NOT RUN. |
| 3 | 25–45 first-pass questions, no wall, pause/resume | PASS | 36 selected questions, single-question view; account save/reopen API tests and browser save/advance. |
| 4 | Unknown stays null, not artificially low | PASS | Unknown responses not scored; N/A justification cannot remove arbitrary pillars. |
| 5 | Single deterministic, audited scoring engine | PASS | Pure Python criteria → pillar → weighted total; no LLM arithmetic. |
| 6 | Overall withheld below 60% coverage or 10 scored pillars | PASS | Boundary, missing-data, N/A, invalid/duplicate and fewer-than-ten tests. |
| 7 | Bottom-up TAM/SAM/SOM with units/year/sources, no arbitrary share | PASS | Source/period/currency metadata required; capacity/conversion-based SOM; no automatic totals. Inputs remain founder reported or explicit assumptions. |
| 8 | Three sectors and initial-idea / early-revenue cases | PASS | Synthetic services, SaaS, marketplace; all six routing stages; original case included. |
| 9 | Revenue contradiction warning, no silent overwrite | PASS | 10 customers × 1 unit × 100 vs 5000 flagged; original values retained. |
| 10 | Real live competitor links and local → regional → global verification | NOT RUN | Ordered adapters/citation allow-list/relevance gate implemented; no authorized live provider was configured and no real competitor finding is claimed. |
| 11 | Conflicting sources, freshness and geography visible | PASS | Both synthetic contradictory records retained; reviewed/expired status, geography and comparison limits displayed; no real-world verification claimed. |
| 12 | Missing external tools visibly offline, no invented competitor | PASS | Default offline provider; not-run status and empty verified-competitor output tested and shown in browser. |
| 13 | No LTV without retention; correct new-paying CAC denominator | PASS | Cohort evidence gates; explicit units, matched periods, zero/missing handling; no guessed benchmark. |
| 14 | External assertions cited; estimates labelled and recalculable | PASS | Human-review gate for verified_external; formulas retain input references and assumptions. Live research behavior still NOT RUN. |
| 15 | 30/60/90 plan with owner, experiment, time, cost/currency, KPI, falsification and dependency | PASS | Includes day 7 too; unknown costs explicitly null and require founder quotes, never fabricated budgets. |
| 16 | Report JSON schema + full Arabic PDF + clickable references | PASS | Supplied schema validation; full AR/EN PDF tests, visual review and actual browser download. |
| 17 | Tenant isolation, no unconsented training, export/delete | PASS | Cross-tenant/same-org founder/mentor assignment/consent tests; encrypted active data and file deletion; non-content accounting/audit retained; backup policy remains operator work. |
| 18 | Prompt-injection protection in uploads/web content | PASS | Files never ingested automatically; public-only research; source text treated as untrusted; constrained cited candidates; adversarial synthetic text cannot change scores/leak tenants. Independent live-model red-team review NOT RUN; no universal guarantee. |
| 19 | API budget caps, retries, queue, logs, permissions directory | PASS | Durable jobs, leases/idempotency, bounded replay, request/token caps and conservative atomic reservations tested. Reservations do not guarantee provider billing; provider-side spending limit required. |
| 20 | Mentor console, baseline/follow-up, version annotations | PASS | Scoped console; immutable report/review history; source and criterion reviews; comparison compatibility and stale-data checks. Console role logic tested via API; credential-based admin UI session NOT RUN. |
| 21 | Pilot with 3–5 real founders and independent mentor feedback | NOT RUN | No real founders participated. No scientific validation or success-probability claim. |

## Additional production requirements from architecture baseline

| Requirement | Status | Current boundary |
|---|---|---|
| Durable local DB, authentication and encrypted files | PASS | SQLite WAL, server sessions, field/file encryption work locally. |
| Managed PostgreSQL + forced tenant RLS deployment | NOT RUN | Adapter and RLS migration supplied; no live database provisioned or tested. |
| TLS and deployed incubator domain | NOT RUN | Docker/reverse-proxy guides supplied; no website/domain deployment performed. |
| Presigned private object-store upload flow | FAIL | Current implementation uses authenticated encrypted local upload/download; managed object storage not connected. |
| Enterprise malware scanning | FAIL | File-type/size and active-PDF checks only; a scanner service is not integrated. |
| OIDC / email verification / password recovery | FAIL | Local password accounts are implemented; these external identity services are not implemented. |
| Cryptographically signed PDF audit attestation | FAIL | Report version/digest metadata and authenticated exports exist; no signing service. |
| Distributed rate limiting, KMS rotation and independent security audit | NOT RUN | Single-node pilot controls; scaling/security review required. |
| Live provider/model, data-retention and paid-source license review | NOT RUN | No secret provisioning, paid source access or live calls performed. |
| Real-founder pilot / rubric calibration | NOT RUN | Release cannot be certified production-ready. |

## Important interpretation limits

A detailed report is not a verified company audit. Founder assertions can only support provisional weak ratings, never independent facts. Higher grades need a human review with attributed evidence; grade 4 needs more than one evidence item. An empty report dimension remains unknown. A score is readiness of evidence/execution, not a forecast of company survival.

Research candidates are not automatically verified. Links and curated references do not establish the right to copy books or datasets into RAG. Budgets without real quotes stay unknown; proposed experiment gates support bounded learning and do not certify product-market fit.
