# Contribution Guide

Thank you for considering contributing to our Namma UI Kit! We appreciate your time and effort in helping to make this project better. To maintain the quality and consistency of the project, we have established the following contribution guidelines. Please read them carefully before making your contributions.

## Project Structure

All contributions should adhere to the following directory structure:

```
/lib/pages/<your-page-name>
```

### Folder Naming Conventions
The name should be all lowercase, with underscores to separate words, "just_like_this".Use only basic Latin letters and Arabic digits: [a-z0-9_]

- **Small-case**: All folder names must be in lowercase.
- **No Spaces**: Folder names should not contain spaces.
- **Underscore Only**: Use underscores (`_`) to separate words in folder names.

For example, if you are contributing a new page for a user profile, the folder name should be `/lib/pages/user_profile`.

## Code Guidelines

To maintain the integrity and consistency of the UI kit, please follow these guidelines:

1. **No Third-Party Packages**: Your contribution should not rely on any third-party packages. The focus is on pure Flutter code to ensure that the UI kit remains lightweight and easily integrable.
   
2. **No internal/External Assets**: You can include Internet assets that can be directly copy pasted, please do not include any assets (e.g., images, fonts) that needs to be added manually in your contribution. 

3. **UI-Only Code**: This is a UI library, so the contributions should focus solely on UI elements. Avoid including any business logic or functions unless they are absolutely essential for rendering the UI component. The goal is to provide clean, reusable UI components.

4. **Code Quality**: Please ensure that your code is clean, well-documented, and adheres to Dart's best practices. Proper comments and documentation within the code are encouraged to help others understand your work.


## How to Contribute

1. **Fork the Repository**: Start by forking the repository to your GitHub account.

2. **Create a Branch**: Create a new branch in your forked repository for your feature or fix. Use a descriptive branch name (e.g., `/lib/pages/user-profile-page`).

3. **Implement Your Changes**: Make your changes in the appropriate folder under `/lib/pages/<your-page-name>`.

4. **Test Your Changes**: Ensure that your changes do not break any existing functionality and that they adhere to the guidelines mentioned above.

5. **Create a Pull Request**: Once your changes are complete and tested, create a pull request to the main repository. Provide a clear and detailed description of your changes.

6. **Review Process**: Your pull request will be reviewed by the maintainers. Please be patient as this process may take some time. You may be asked to make changes based on the review.

7. **Merge**: Once your pull request is approved, it will be merged into the main repository.

## Community and Support

If you have any questions or need assistance, feel free to reach out to the community by opening an issue.

## Code of Conduct

Please note that all contributions are subject to our [Code of Conduct](https://github.com/Namma-Flutter/namma_ui_kit/blob/master/CODE_OF_CONDUCT.md). We expect all contributors to adhere to these guidelines to maintain a welcoming and inclusive environment.

Thank you for your contributions! Together, we can build an amazing Namma UI Kit.
