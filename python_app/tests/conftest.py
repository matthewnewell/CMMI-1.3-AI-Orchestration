import pytest
from app import create_app, db
from app.models import ProcessArea

@pytest.fixture(scope='module')
def test_app():
    """Create and configure a new app instance for each test module."""
    app = create_app()
    app.config.update({
        "TESTING": True,
        "SQLALCHEMY_DATABASE_URI": "sqlite:///:memory:"
    })

    # Create a test context
    with app.app_context():
        db.create_all()
        yield app
        db.session.remove()
        db.drop_all()

@pytest.fixture(scope='module')
def test_client(test_app):
    """A test client for the app."""
    return test_app.test_client()

@pytest.fixture(scope='module')
def runner(test_app):
    """A test runner for the app's CLI commands."""
    return test_app.test_cli_runner()
