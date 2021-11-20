import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import FullReload from 'vite-plugin-full-reload'
import WindiCSS from 'vite-plugin-windicss'
import colors from 'windicss/colors'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    FullReload(['config/routes.rb', 'app/views/**/*.html.erb']),
    WindiCSS({
      root: __dirname,
      config: {
        extract: {
          include: [
            "./app/views/**/*.html.erb"
          ]
        },
        // purge: [
        // ],
        darkMode: false, // or 'media' or 'class'
        theme: {
          extend: {
            colors: {
              primary: colors.blue,
              hover: colors.blue[800],
            }
          },
        },
        variants: {
          // extend: {},
        },
        plugins: [],
        preflight: true
      }
    })
  ],
})
