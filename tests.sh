#!/usr/bin/env bash

source _vendor/assert.sh/assert.sh

test_data="_test_data"
bro=./bro

# section
assert "$bro passwd" "$(cat $test_data/passwd1.headings)"

# section page
assert "$bro 1 passwd" "$(cat $test_data/passwd1.headings)"
assert "$bro 5 passwd" "$(cat $test_data/passwd5.headings)"

# page heading
assert "$bro passwd NAME" "       passwd - change user password"

# section page heading
assert "$bro 1 passwd NAME" "       passwd - change user password"
assert "$bro 5 passwd NAME" "       passwd - the password file"

# section page heading (mixed-case)
assert "$bro 1 passwd NaMe" "       passwd - change user password"
assert_end unit
