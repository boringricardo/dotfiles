vim.g.projectionist_heuristics = {
  artisan = {
    ['*'] = {
      start = 'sail up',
      console = 'sail tinker',
      make = 'npm run dev',
    },
    ['app/Models/*.php'] = {
      type = 'model',
    },
    ['app/Http/Controllers/*.php'] = {
      type = 'controller',
    },
    ['routes/*.php'] = {
      type = 'route',
    },
    ['database/migrations/*.php'] = {
      type = 'migration',
    },
    ['app/*.php'] = {
      type = 'source',
      alternate = {
        'tests/Unit/{}Test.php',
        'tests/Feature/{}Test.php',
      },
    },
    ['tests/Feature/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/Unit/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
  },
  vite = {
    ['*'] = {
      start = 'npm run dev'
    },
    ['src/components/*.jsx'] = {
      type = 'component',
      alternate = {
        'tests/components/{}.test.jsx'
      }
    },
    ['src/pages/*.jsx'] = {
      type = 'pages',
      alternate = {
        'e2e/tests/{}.jsx'
      }
    },
    ['src/machines/*.jsx'] = {
      type = 'machines',
      alternate = {
        'tests/machines/{}.test.jsx'
      }
    },
    ['tests/*.test.jsx'] = {
      type = 'test',
      alternate = {
        'src/{}.jsx'
      }
    },
    ['e2e/*.spec.js'] = {
      type = 'spec',
      alternate = {
        'src/pages/{}.jsx'
      }
    }
  }
}
