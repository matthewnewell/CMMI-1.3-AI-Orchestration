def test_home_page(test_client):
    """
    GIVEN a Flask application configured for testing
    WHEN the '/' page is requested (GET)
    THEN check that the response is valid (200)
    """
    response = test_client.get('/')
    assert response.status_code == 200
    assert b"CMMI V1.3 AI Orchestration" in response.data

def test_about_page(test_client):
    """
    GIVEN a Flask application configured for testing
    WHEN the '/about' page is requested (GET)
    THEN check that the response is valid (200)
    """
    response = test_client.get('/about')
    assert response.status_code == 200
    assert b"About" in response.data

def test_introduction_page(test_client):
    """
    GIVEN a Flask application configured for testing
    WHEN the '/introduction' page is requested (GET)
    THEN check that the response is valid (200)
    """
    response = test_client.get('/introduction')
    assert response.status_code == 200
    assert b"Introduction" in response.data
