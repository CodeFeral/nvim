return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		local function wordWrap(text, maxWidth)
			local lines = {}
			local line = {}

			for word in text:gmatch("%S+") do
				local tempLine = table.concat(line, " ") .. " " .. word
				if #tempLine > maxWidth then
					table.insert(lines, table.concat(line, " "))
					line = { word }
				else
					table.insert(line, word)
				end
			end

			-- Add the last line
			table.insert(lines, table.concat(line, " "))

			return lines
		end

		local quotes = {
			{
				"Clarity is King.",
				"- unknown -",
			},
			{
				"Play is the highest form of research.",
				"- Albert Einstein -",
			},
			{
				"You don't become enlightened by imagining figures of light, but by making the darkness conscious.",
				"- Carl Jung -",
			},
			{
				"Pain is inevitable. Suffering is optional.",
				"- Haruki Murakami -",
			},
			{
				"The strength of a person's spirit is measured by how much truth he could tolerate, or more precisely, to what extent he needs to have it diluted, disguised, sweetened, muted, falsified.",
				"- Friedrich Nietzsche -",
			},
			{
				"Those who say it cannot be done should not interrupt the ones doing it.",
				"- unknown -",
			},
			{
				"We only see what we know.",
				"- Goethe -",
			},
			{
				"Whether you think you can or think you can't, you're right.",
				"- Henry Ford -",
			},
			{
				"Live as if you were to die tomorrow. Learn as if you were to live forever.",
				"- Mahatma Gandhi -",
			},
			{
				"If you wish to make an apple pie from scratch, you must first invent the universe.",
				"- Carl Sagan -",
			},
			{
				"Man is quite insane. He wouldn't know how to create a maggot, and yet he creates Gods by the dozen.",
				"- Michel de Montaigne -",
			},
			{
				"Earth provides enough to satisfy every man's need, but not every man's greed.",
				"- Mahatma Gandhi -",
			},
			{
				"We may encounter many defeats, but we must not be defeated.",
				"- Maya Angelou -",
			},
			{
				"If it costs you your peace, then it's too expensive.",
				"- unknown -",
			},
			{
				"The path to paradise begins in hell.",
				"- Dante -",
			},
			{
				"The reasonable man adapts himself to the word. The unreasonable one persists in trying to adapt the world to himself. Therefore all progress depends on the unreasonable man.",
				"- George Bernard Shaw -",
			},
			{
				"Judge a man by his questions rather than by his answers.",
				"- unknown -",
			},
			{
				"I may disagree with what you have to say, but I shall defend, to the death, your right to say it.",
				"- Voltaire -",
			},
			{
				"Doubt is not a pleasant condition, but certainty is absurd.",
				"- Voltaire -",
			},
			{
				"God is a comedian, playing to an audience too afraid to laugh.",
				"- Voltaire -",
			},
			{
				"To learn who rules over you, simply find out who you are not allowed to criticize.",
				"- Voltaire -",
			},
			{
				"Strength does not come from physical capacity. It comes from an indomitable will.",
				"- Mahatma Gandhi -",
			},
			{
				"Ever tried, ever failed. No matter. Try again, fail again. Fail better.",
				"- Samuel Beckett -",
			},
			{
				"The harder I practice, the luckier I get.",
				"- unknown -",
			},
			{
				"Fear he who fears nothing.",
				"- Terrorblade -",
			},
			{
				"A man chooses, a slave obeys.",
				"- Andrew Ryan -",
			},
			{
				"We all make choices, but in the end our choices make us.",
				"- Andrew Ryan -",
			},
			{
				"The great achievements of man have come from those who dared to believe that something inside them was superior to circumstances.",
				"- Andrew Ryan -",
			},
			{
				"The impossible becomes possible, the possible becomes probable, the probable becomes inevitable.",
				"- Andrew Ryan -",
			},
			{
				"The price of Liberty is eternal vigilance.",
				"- Thomas Jefferson -",
			},
			{
				"The question is not what you look at, but what you see.",
				"- Henry David Thoreau -",
			},
			{
				"The only way to do great work is to love what you do.",
				"- Steve Jobs -",
			},
			{
				"Curiosity will conquer fear even more than bravery will.",
				"- James Stephens -",
			},
			{
				"The true sign of intelligence is not knowledge but imagination.",
				"- Albert Einstein -",
			},
			{
				"He who dares not offend cannot be honest.",
				"- Thomas Paine -",
			},
			{
				"As a human being one has been endowed with just enough intelligence to be able to see clearly how utterly inadequate that intelligence is when confronted with what exists.",
				"- Albert Einstein -",
			},
			{
				"In a mad world, only the mad are sane.",
				"- Akira Kurosawa -",
			},
			{
				"Man cannot remake himself without suffering, for he is both the marble and the sculptor.",
				"- Alexis Carrel -",
			},
			{
				"Beware of unearned wisdom.",
				"- Carl Jung -",
			},
			{
				"The ultimate test of your knowledge is your ability to convey it to others.",
				"- Richard Feynman -",
			},
			{
				"There is nothing outside of yourself that can ever enable you to get better, stronger, richer, quicker, or smarter. Everything is within. Everything exists. Seek nothing outside of yourself.",
				"- Miyamoto Musashi -",
			},
			{
				"You must understand that there is more than one path to the top of the mountain.",
				"- Miyamoto Musashi -",
			},
			{
				"The true science of martial arts means practicing them in such a way that they will be useful at any time, and to teach them in such a way that they will be useful in all things.",
				"- Miyamoto Musashi -",
			},
			{
				"All man are the same except for their belief in their own selves, regardless of what others may think of them.",
				"- Miyamoto Musashi -",
			},
			{
				"Nothing that is truly for you will require you to act out of character to get it.",
				"- unknown -",
			},
			{
				"Truth is not what you want it to be, it is what it is, and you must bend to its power or live a lie.",
				"- Miyamoto Musashi -",
			},
			{
				"If to correct you must humiliate, you don't know how to teach.",
				"- unknown -",
			},
			{
				"Hesitation is defeat.",
				"- Isshin Ashina -",
			},
			{
				"It's the truth I'm after, and the truth never harmed anyone. What harms us is to persist in self-deceit and ignorance.",
				"- Marcus Aurelius -",
			},
			{
				"Those who lack the courage will always find a philosophy to justify it.",
				"- Albert Camus -",
			},
			{
				"Know all the theories, master all the techniques, but as you touch a human soul be just another human soul.",
				"- Carl Jung -",
			},
			{
				"The first half of life is learning how to be an adult. The second half is learning how to be a child.",
				"- Pablo Picasso -",
			},
			{
				"A foolish faith in authority is the worst enemy of the truth.",
				"- Albert Einstein",
			},
		}

		-- Randomly select a quote
		math.randomseed(os.time()) -- Seed the random number generator
		local selectedPair = quotes[math.random(#quotes)]
		local wrappedQuoteText = wordWrap(selectedPair[1], 50) -- Assuming a max width of 50 characters
		local author = selectedPair[2]

		-- Add some formatting if needed, e.g., new lines
		local formattedQuote = string.rep("\n", 4)
			.. table.concat(wrappedQuoteText, "\n")
			.. "\n\n"
			.. author
			.. "\n\n\n\n"

		require("dashboard").setup({
			theme = "doom",
			config = {
				header = vim.split(formattedQuote, "\n"),

				center = {
					{ action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
					{ action = "Neotree float reveal", desc = " File tree", icon = " ", key = "ee" },
					{ action = "Telescope find_files", desc = " Find file", icon = " ", key = "ff" },
					{ action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "fr" },
					{ action = "Telescope live_grep", desc = " Find text", icon = " ", key = "fs" },
					{ action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "L" },
					{ action = "qa", desc = " Quit", icon = " ", key = "q" },
				},

				footer = {},
			},
		})
	end,
}
