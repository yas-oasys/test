const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: 'Animechain.ai',
  tagline: 'Innovative AI Solutions for Anime Production',
  url: 'https://<your-username>.github.io', // GitHub PagesのURL
  baseUrl: '/animechain-docs/', // リポジトリ名をベースURLとして設定
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: '<your-username>', // GitHubユーザー名
  projectName: 'animechain-docs', // リポジトリ名

  presets: [
    [
      '@docusaurus/preset-classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl: 'https://github.com/<your-username>/animechain-docs/edit/main/website/',
        },
        blog: {
          showReadingTime: true,
          editUrl: 'https://github.com/<your-username>/animechain-docs/edit/main/website/blog/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        logo: {
          alt: 'Animechain.ai Logo',
          src: 'img/logo_red.svg',
        },
        items: [
          {
            type: 'doc',
            docId: 'introduction/anime-industry/market-size',
            position: 'left',
            label: 'Whitepaper',
          },
          {
            href: '/pdf/Animechain_Whitepaper_v1.pdf',
            label: 'Download PDF',
            position: 'right',
            className: 'navbar__item--pdf', // Add class
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Docs',
            items: [
              {
                label: 'Official Site',
                href: 'https://animechain.ai/',
              },
              {
                label: 'WhitePaper',
                to: '/docs/introduction/anime-industry/market-size',
              },
              {
                label: 'Litepaper',
                to: 'https://animechain.ai/',
              },
            ],
          },
          {
            title: 'Community',
            items: [
              {
                label: 'Medium',
                href: 'https://medium.com/@anime_chain',
              },
              {
                label: 'X (Twitter)',
                href: 'https://x.com/anime_chain',
              },
              {
                label: 'X (Twitter) (Japanese)',
                href: 'https://x.com/anime_chain_jp',
              },
            ],
          },
        ],
        copyright: `©︎Animechain LLC All Rights Reserved.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};
