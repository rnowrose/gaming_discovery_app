/**
 * plugins/vuetify.ts
 *
 * Framework documentation: https://vuetifyjs.com`
 */

// Composables
import { createVuetify } from 'vuetify'
import { md3 } from 'vuetify/blueprints'
// Styles
import '@mdi/font/css/materialdesignicons.css'

import 'vuetify/styles'

const obsidianTheme = {
  dark: true,
  colors: {
    'background': '#1c2023',
    'surface': '#292d30',
    'surface-variant': '#3a3f42', // Used for input fields
    'primary': '#64d2c8',
    'primary-darken-1': '#003732', // For text on top of primary buttons
    'secondary': '#b0ccc7',
    'accent': '#e0a492',
    'error': '#ffb4ab',
    'info': '#BD00FF',
    'success': '#00FF94',
    'warning': '#FB8C00',
  },
}

// https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
export default createVuetify({
  blueprint: md3,
  theme: {
    defaultTheme: 'obsidianTheme',
    themes: {
      obsidianTheme,
    },
  },
})
