<script lang="ts">
	export let message: string;
	export let tgUser: string;
</script>

<a href="https://t.me/{tgUser}?message={message}" target="_blank"> Telegram </a>

<style>
	a {
		font-family: inherit;
		font-size: inherit;
		padding: 0.5em 1em;
		color: #ffff;
		background-color: #0088cc;
		border-radius: 1.2em;
		border: 2px solid #0088cc;
		outline: none;
		width: 120px;
		font-variant-numeric: tabular-nums;
		cursor: pointer;
	}

	a:focus {
		border: 2px solid #0088cc;
	}

	a:active {
		background-color: rgba(255, 62, 0, 0.2);
	}
</style>
