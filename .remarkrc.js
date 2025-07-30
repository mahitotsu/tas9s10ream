module.exports = {
  plugins: [
    'remark-preset-prettier',
    'remark-lint-heading-increment',
    ['remark-lint-first-heading-level', 1],
    ['remark-lint-ordered-list-marker-style', '.'],
        ['remark-lint-ordered-list-marker-value', 'single'],
  ],
};
