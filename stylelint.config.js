module.exports = {
  extends: ["stylelint-config-standard-scss"],
  customSyntax: "postcss-scss",
  ignoreFiles: [
    "assets/scss/font-awesome/**/*.scss",
    "resources/**/*.scss",
    "exampleSite/resources/**/*.scss"
  ]
};
