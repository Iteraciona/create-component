
# create-node-component

`create-node-component` is a simple CLI tool to automate the creation of components in Node.js applications. It allows you to quickly scaffold a new component with a predefined structure, ensuring consistency and saving you time.

## Features

- Create a component in the default `components/` directory or specify a custom directory.
- Automatically generates the necessary folder structure and empty files for controllers, models, routes, and services.

## Installation

To install `create-node-component` globally, run the following command:

```bash
npm install -g create-node-component
```

## Usage

To create a new component, use the following command:

```bash
create-component <componentName> [customDirectory]
```

### Examples

1. **Create a component in the default directory (`components/`)**:

   ```bash
   create-component auth
   ```

   This will create a new component called `auth` in the `components/auth` directory.

2. **Create a component in a custom directory (e.g., `src`)**:

   ```bash
   create-component auth src
   ```

   This will create a new component called `auth` in the `src/auth` directory.

## Component Structure

When you create a new component, the following structure will be generated:

```
<targetDirectory>/<componentName>/
├── controllers/
│   └── <componentName>Controller.js
├── models/
│   └── <componentName>Model.js
├── routes/
│   └── <componentName>Routes.js
└── services/
    └── <componentName>Service.js
```

### Description of the Structure:

- **controllers/**: Contains the controller files, which handle incoming requests and orchestrate the business logic.
- **models/**: Contains the model files, representing the data structures and business logic for your application.
- **routes/**: Contains the routing files, defining the endpoints for your API and linking them to the appropriate controllers.
- **services/**: Contains the service files, which encapsulate reusable business logic and can be shared across different components.

## Contributing

If you want to contribute to this project, feel free to open issues or submit pull requests. Your feedback and contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
