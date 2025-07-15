module.exports = {
  plugins: [
    'remark-preset-prettier',
    'remark-lint-heading-increment',
    ['remark-lint-first-heading-level', 1],
    'remark-lint-list-item-indent',
    ['remark-lint-maximum-line-length', 80],
    'remark-lint-no-missing-blank-lines'
  ],
};
