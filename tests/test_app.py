import pytest
from app import greet

def test_greet():
    assert greet("World") == "Hello, World"
    assert greet("Alice") == "Hello, Alice"

def test_addition():
    assert 1 + 1 == 2
