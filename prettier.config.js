module.exports = {
  plugins: ["prettier-plugin-go-template"],
  printWidth: 100,
  tabWidth: 2,
  useTabs: false,
  overrides: [
    {
      files: ["*.html"],
      options: {
        parser: "go-template"
      }
    }
  ]
};
