import pytest
from app import app

@pytest.fixture
def client():
    app.config["TESTING"] = True

    with app.test_client() as client:
        yield client


def test_not_found(client):
    response = client.get("/fake")

    assert response.status_code == 404