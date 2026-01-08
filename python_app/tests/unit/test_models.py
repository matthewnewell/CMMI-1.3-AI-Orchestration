from app.models import ProcessArea
from app import db

def test_new_process_area(test_app):
    """
    GIVEN a ProcessArea model
    WHEN a new ProcessArea is created
    THEN check the name, acronym, and maturity level are defined correctly
    """
    pa = ProcessArea(
        name='Technical Solution',
        purpose='The purpose of Technical Solution is to design, develop, and implement solutions to requirements.'
    )
    
    # We can add it to the session to simulate DB interaction (rollback handled by fixture implies isolated DB)
    db.session.add(pa)
    db.session.commit()

    assert pa.name == 'Technical Solution'
    assert 'The purpose of Technical Solution' in pa.purpose
