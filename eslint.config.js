// eslint.config.js
import js from "@eslint/js";
import globals from "globals";

export default [
  js.configs.recommended,
  {
    files: ["**/*.js"],
    languageOptions: {
      globals: {
        ...globals.node
      },
      ecmaVersion: "latest",
      sourceType: "module"
    },
    rules: {
      "no-console": "off"
      // ⚠ Do NOT add 'constructor-super' manually
    }
  }
];
