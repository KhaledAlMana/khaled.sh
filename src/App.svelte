<script lang="ts">
	import Typewriter from "svelte-typewriter";
	import LinkedIn from "./lib/LinkedIn.svelte";
	import Telegram from "./lib/Telegram.svelte";

	const contactMessage = encodeURI(
		"As-salamu alaykum (Hello),\nI'm reaching you out via khaled.sh.\nWhen can we talk?\nThanks."
	);

	const requestCV = encodeURI(
		"As-salamu alaykum (Hello),\nI'm reaching you out via khaled.sh.\nCan you please send me your latest CV?\nThanks."
	);

	const phoneNumber = "966542430800";
	const tgUser = "khaledalmana";
</script>

<main>
	<Typewriter cascade>
		<h1>- Khaled Al Mana</h1>
	</Typewriter>

	<hr />
	<Typewriter>
		<br />
		<p>Thank you for visiting this page.</p>
		<p>
			If you're seeking to get my CV, please feel free to reach me out via the
			below channels.
		</p>
		<br />
		<LinkedIn />
		<Telegram message={requestCV} {tgUser} />
	</Typewriter>
</main>

<style>
	:root {
		font-family: monospace, Ubuntu, -apple-system, BlinkMacSystemFont,
			"Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans",
			"Helvetica Neue", sans-serif;
		background-color: black;
		color: lawngreen;
		--cursor-color: lawngreen;
	}

	main {
		text-align: left;
		padding: 1em;
		margin: 0 auto;
	}

	h1 {
		text-transform: uppercase;
		font-size: 2rem;
		font-weight: 100;
		line-height: 1.1;
		max-width: 100%;
	}

	p {
		max-width: 100%;
		margin: 4rem auto;
		line-height: 1.35;
	}

	hr {
		border: 0.8px dashed lightgray;
	}

	@media (min-width: 480px) {
		h1 {
			max-width: none;
		}

		p {
			max-width: none;
		}
	}
</style>
