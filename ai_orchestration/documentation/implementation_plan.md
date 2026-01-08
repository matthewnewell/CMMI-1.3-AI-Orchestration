# Refactoring CMMI Application to Python/Flask

## Goal
Refactor the existing CMMI-1.3-AI-Orchestration Ruby on Rails application into a modern Python 3 application using the Flask web framework. This will serve as the backbone for a future Multi-Agent System (MAS).

## User Review Required
> [!NOTE]
> I will create a new directory `python_app/` to house the new Python application to avoid conflicts with the existing Rails code.

## Proposed Changes

### Project Structure
New directory `python_app/` with the following structure:
```
python_app/
├── app/
│   ├── __init__.py          # Flask app factory
│   ├── models.py            # SQLAlchemy models (replicating Rails models)
│   ├── routes.py            # Route definitions
│   ├── templates/           # Jinja2 templates (replicating Rails views)
│   │   ├── base.html        # Layout file
│   │   ├── static_pages/    # Home, about, etc.
│   │   └── ...              # Resource templates
│   └── static/
│       ├── css/
│       └── js/
├── config.py                # Configuration classes
├── run.py                   # Entry point
└── requirements.txt         # Dependencies

ai_orchestration/            # Agentic-input artifacts and orchestrators
├── agents.md                # Definition of Agent Roles, Personas, and Responsibilities
├── requirements/
├── code/
├── test/
├── documentation/
├── peer_review/
└── deployment/
```

### Dependencies
- Flask
- Flask-SQLAlchemy (ORM)
- Flask-Migrate (Database migrations)
- Flask-Bootstrap (for Bootstrap integration, replacing `twitter-bootstrap-rails`)

### Models (SQLAlchemy)
Replicate the following data models with appropriate relationships:
- `MaturityLevel`
- `ProcessAreaCategory`
- `ProcessArea`
- `GenericGoal`
- `GenericPractice`
- `SpecificGoal`
- `SpecificPractice`
- `GenericPracticeElaboration`
- `SpecificPracticeElaboration`

### Routes & Views
Replicate `config/routes.rb`:
- **Static Pages**: /, /about, /home, /introduction, /process_area_components, /tying_it_all_together, /relationships_among_process_areas, /using_cmmi_models
- **Resources**: (CRUD routes or Read-only depending on controller implementation)
  - `maturity_levels`
  - `process_area_categories`
  - `process_areas`
  - `generic_goals`
  - `generic_practices`
  - `specific_goals`
  - `specific_practices`

## Verification Plan
### Automated Tests
- Basic unit tests for models to ensure relationships are correct.
- Route tests to ensure pages load (200 OK).

### Manual Verification
- Start the Flask server (`python run.py`).
- Navigate to the home page and verify layout.
- Navigate to resource pages (e.g., `/maturity_levels`) to verify data display.
