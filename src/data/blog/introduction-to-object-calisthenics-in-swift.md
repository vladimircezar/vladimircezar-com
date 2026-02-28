---
title: "Introduction to Object Calisthenics in Swift"
description: "A practical overview of the nine Object Calisthenics rules and why they matter."
pubDatetime: 2026-02-28T09:00:00-05:00
tags: ["software-engineering", "object-calisthenics", "swift", "oop"]
---

Object Calisthenics is a set of nine programming rules designed to encourage better object-oriented design. These rules help developers create cleaner, more maintainable, and more testable code by enforcing discipline and structure in object-oriented programming.

## Origin of Object Calisthenics

Object Calisthenics was first introduced by Jeff Bay in the book *The ThoughtWorks Anthology* (2008). The concept was inspired by the idea that, just like physical calisthenics improve an athlete's form and strength, these rules help developers improve their coding skills by enforcing strict design principles.

## The Nine Rules of Object Calisthenics

- Only One Level of Indentation Per Method: Keep methods shallow to improve readability.
- Don't Use the `else` Keyword: Encourages a more explicit and maintainable flow.
- Wrap Primitives and Strings in Classes: Reduces fragility and improves domain modeling.
- Use First-Class Collections: Collections should be wrapped in meaningful types.
- One Dot Per Line: Avoid method chaining to simplify debugging.
- Don't Abbreviate: Use clear and meaningful names.
- Keep All Entities Small: Methods and classes should remain compact and focused.
- No Classes with More Than Two Instance Variables: Improves encapsulation and reduces complexity.
- No Getters/Setters/Properties: Encourages behavior-driven design instead of exposing state.

## What's Next?

In this series, I will explore each rule in detail, providing Swift examples to illustrate how you can apply them in real-world projects.

Stay tuned for the next article where I dive into the first rule: Only One Level of Indentation Per Method.

Published on:

- LinkedIn (March 11, 2025)
