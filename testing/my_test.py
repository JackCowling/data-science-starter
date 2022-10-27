import pytest
from your_package_here.example import function_import


def test_which_passes():
    assert function_import() == "Function successfully imported"


def test_which_fails():
    assert function_import() == "This is not the correct output"
