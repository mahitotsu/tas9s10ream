module.exports = {
  plugins: [
    'remark-preset-prettier',
    'remark-lint-heading-increment',
    ['remark-lint-first-heading-level', 1],
    'remark-lint-list-item-indent',
    ['remark-lint-ordered-list-marker-value', 'one']
  ],
};
