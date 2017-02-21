#!/bin/bash
cd M7
find . -type f -exec sed -i 's/problem-name=" "/problem-name="Гирлянда"/g' {} +