from typing import Any
from jinja2.filters import FILTERS as DEFAULT_FILTERS
from jinja2.tests import TESTS as DEFAULT_TESTS

BLOCK_START_STRING = ...  # type: str
BLOCK_END_STRING = ...  # type: str
VARIABLE_START_STRING = ...  # type: str
VARIABLE_END_STRING = ...  # type: str
COMMENT_START_STRING = ...  # type: str
COMMENT_END_STRING = ...  # type: str
LINE_STATEMENT_PREFIX = ...  # type: Any
LINE_COMMENT_PREFIX = ...  # type: Any
TRIM_BLOCKS = ...  # type: bool
LSTRIP_BLOCKS = ...  # type: bool
NEWLINE_SEQUENCE = ...  # type: str
KEEP_TRAILING_NEWLINE = ...  # type: bool
DEFAULT_NAMESPACE = ...  # type: Any

# Names in __all__ with no definition:
#   DEFAULT_FILTERS
#   DEFAULT_TESTS
