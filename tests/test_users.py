import pytest
from app import app

@pytest.fixture
def client():
    app.config["TESTING"] = True

    with app.test_client() as client:
        yield client

def test_users(client):
    response = client.get("/users")

    assert response.status_code == 200

    users = response.get_json()

    assert len(users) == 2
    assert users[0]["name"] == "Alice"
    assert users[1]["id"] == 2


# def test_not_found(client):
#     response = client.get("/fake")

#     assert response.status_code == 404