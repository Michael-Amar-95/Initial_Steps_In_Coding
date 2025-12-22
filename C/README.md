# Longest Unique Substring (C)
A simple C program that finds the **length of the longest substring without repeating characters** in a given string.

## Overview
- Implemented in **C**
- Uses a **sliding window** technique
- Runs in **O(n)** time
- Supports all **ASCII characters**

## Files
- `Unique_Substring_Finder.c` – Contains the implementation and `main` function

## How It Works
The program scans the string while keeping track of the last position of each character.
When a repeated character is found inside the current window, the window start is moved forward.
The maximum window length is updated during the scan.

