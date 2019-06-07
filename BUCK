# NOTE: the buck file does not include the 'sandbox',
# 'sandbox_shared_lib', or 'docs' binaries
#
# It also does not provide a way to define "CEREAL_THREAD_SAFE" and link
# to the pthread library


cxx_library(
  name='cereal',
  header_namespace='cereal',
  exported_headers = subdir_glob([
    ('include/cereal', '**/*.hpp'),
    ('include/cereal', '**/*.h'),
  ]),
  tests=[
    '//:cereal_unit_tests',
  ],
  deps=[
  ],
  visibility=[
    'PUBLIC',
  ],
)
