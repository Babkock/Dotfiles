#!/bin/sh
# preview.sh stolen
batorcat() {
    file="$1"
    shift
    if command -v bat >/dev/null 2>&1; then
		bat --pager=never --color=always --theme="$BAT_THEME" --style=changes "$file" "$@"
    else
        cat "$file"
    fi
}

image() {
	if [ -n "$WT_SESSION" ] || [ -n "$TMUX" ]; then
		# windows terminal (no sixels yet) or tmux (not much success with passthrough to iterm here)
		chafa -f symbols -s "$2x$3" --animate off --polite on "$1"
    else
		chafa -f sixels -s "$2x$3" --animate off --polite on "$1"
    fi
}

# cpbotha's simplified version
CACHE="$HOME/.cache/lf/thumbnail.$(sha256sum "$1" | awk '{print $1}')"

case "$(file -Lb --mime-type -- "$1")" in
    image/*)
        #chafa -f sixel -s "$2x$3" --animate off --polite on "$1"
        image "$1" "$2" "$3" "$4" "$5"
        exit 1
        ;;
    application/pdf)
        [ ! -f "${CACHE}.jpg" ] && pdftoppm -jpeg -f 1 -singlefile "$1" "$CACHE"
        image "${CACHE}.jpg" "$2" "$3" "$4" "$5"
        ;;

	audio/*)
		mediainfo "$1"
		;;

	video/x-matroska)
		mediainfo "$1"
		;;

	video/mp4)
		mediainfo "$1"
		;;

	application/x-pie-executable)
		objdump -d "$1"
		;;
	
	application/x-object)
		objdump --visualize-jumps --no-addresses -d "$1"
		;;

	application/x-sharedlib)
		objdump --no-addresses -d "$1"
		;;

	application/octet-stream)
		hexyl "$1"
		;;
	
	htm|html|xhtml|mhtml)
		w3m -dump "$1"
		;;

	application/x-bittorrent)
		transmission-show -D "$1"
		;;
	
	iso|img|qcow2|raw|vdi|vmdk|vhd|vhdx)
		qemu-img info -U --backing-chain "$1"
		;;

	application/json)
		jq -C '.' "$1"
		;;

	text/*)
        batorcat "$1"
        ;;
    *)
        #file -b "$1"
        # lesspipe can list many archives, and even do docx files
        # if it does not work (e.g. message/rfc822) then batorcat can try
        lesspipe "$1" || batorcat "$1" || echo "lesspipe not installed or could not open file"
        ;;
esac

