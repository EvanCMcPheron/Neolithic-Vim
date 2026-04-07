vim.pack.add { 'https://github.com/folke/snacks.nvim', "https://github.com/dtormoen/neural-open.nvim" }

require('snacks').setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	bigfile = { enabled = true },
	dashboard = { enabled = false },
	explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = false },
	picker = { enabled = true },
	notifier = { enabled = false },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
	zen = { enabled = true },
	styles = {
		input = {
			row = 0.45,
			col = 0.4,
		},
	},
}


require("neural-open").setup {
  -- Scoring algorithm: "nn" (neural network), "classic" (weighted features), or "naive"
  algorithm = "nn",

  -- Algorithm-specific configurations
  algorithm_config = {
    -- Neural network algorithm settings (default)
    nn = {
      architecture = { 11, 16, 16, 8, 1 }, -- Input → Hidden1 → Hidden2 → Hidden3 → Output
      optimizer = "adamw",                 -- "sgd" or "adamw"
      learning_rate = 0.001,               -- Learning rate for gradient descent
      batch_size = 128,                    -- Number of samples per training batch
      history_size = 2000,                 -- Maximum stored historical selections
      batches_per_update = 5,              -- Number of batches per weight update
      weight_decay = 0.0001,               -- L2 regularization to prevent overfitting
      layer_decay_multipliers = nil,       -- Optional per-layer decay rates
      dropout_rates = { 0, 0.25, 0.25 },   -- Dropout rates for hidden layers
      warmup_steps = 10,                   -- Learning rate warmup steps (recommended for AdamW)
      warmup_start_factor = 0.1,           -- Start at 10% of learning rate
      adam_beta1 = 0.9,                    -- AdamW first moment decay
      adam_beta2 = 0.999,                  -- AdamW second moment decay
      adam_epsilon = 1e-8,                 -- AdamW numerical stability
      match_dropout = 0.25,                -- Dropout rate for match/virtual_name during training
      margin = 1.0,                        -- Margin for pairwise hinge loss
    },
    -- Classic algorithm settings (weighted feature scoring)
    classic = {
      learning_rate = 0.6,  -- Learning rate for weight adjustments (0.0 to 1.0)
      default_weights = {
        match = 140,        -- Snacks fuzzy matching
        virtual_name = 131, -- Virtual name matching
        open = 3,           -- Open buffer bonus
        alt = 4,            -- Alternate buffer bonus
        proximity = 13,     -- Directory proximity
        project = 10,       -- Project (cwd) bonus
        frecency = 17,      -- Frecency score
        recency = 9,        -- Recency score
        trigram = 10,       -- Trigram similarity
        transition = 5,     -- File transition tracking
        not_current = 5,    -- Not-current-file indicator
      },
    },
    naive = {
      -- No configuration needed
    },
  },

  -- Directory for all picker weight files
  weights_dir = vim.fn.stdpath("data") .. "/neural-open/",
  -- Deprecated: use weights_dir instead. If set, dirname is used as fallback weights_dir
  -- weights_path = vim.fn.stdpath("data") .. "/neural-open/files.json",

  -- Maximum number of files in persistent recency list
  recency_list_size = 100,

  -- Debug settings
  debug = {
    preview = false,                -- Show detailed score breakdown in preview
    snacks_scores = false,          -- Show Snacks.nvim debug scores in picker
    latency = false,                -- Enable detailed latency tracking
    latency_file = nil,             -- Optional file path for persistent latency logging
    latency_threshold_ms = 100,     -- Only log operations exceeding this duration
    latency_auto_clipboard = false, -- Copy timing report to clipboard
  },

  -- File sources for the default file picker
  file_sources = {
  	"buffers",
  	-- "neural_recent", THIS INCLUDES FILES NOT IN CWD
  	"files",
  	"git_files"
  },

  -- Algorithm config for item pickers (8-feature pipeline, separate from file pickers)
  item_algorithm_config = {
    classic = {
      learning_rate = 0.6,
      default_weights = {
        match = 140, frecency = 17, cwd_frecency = 15,
        recency = 9, cwd_recency = 8, text_length_inv = 3,
        not_last_selected = 2, transition = 5,
      },
    },
    nn = {
      architecture = { 8, 16, 8, 1 },  -- 8 inputs for item features
      optimizer = "adamw",
      learning_rate = 0.001,
      batch_size = 128,
      history_size = 2000,
      batches_per_update = 5,
    },
  },

  -- Special files that include parent directory in virtual name
  special_files = {
    ["__init__.py"] = true,
    ["index.js"] = true,
    ["index.jsx"] = true,
    ["index.ts"] = true,
    ["index.tsx"] = true,
    ["init.lua"] = true,
    ["init.vim"] = true,
    ["mod.rs"] = true,
  },
}
