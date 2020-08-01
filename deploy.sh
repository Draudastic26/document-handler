#!/bin/bash

cp README.md document-handler-unity/Assets/DocumentHandler
git add .
git commit -m "💬 Copy README to package info"
git subtree push --prefix document-handler-unity/Assets/DocumentHandler origin upm