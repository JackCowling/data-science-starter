import pytest
from your_package_here.import_test import test_function_import


def test_which_passes():
    assert test_function_import() == "Function successfully imported"


# def test_which_fails():
#     assert test_function_import() == "This is not the correct output"
