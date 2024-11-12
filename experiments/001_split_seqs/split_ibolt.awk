#! /usr/bin/env awk -f

/^>BOLD:/ {
		split($0, parts, "BOLD:")
		if (length(parts) >= 3) {
			base = parts[3]
			gsub(/^[ \t]+|[ \t]+$/, "", base)
			gsub(/ /, "_", base)
			OUT = base ".fa"
		} else {
		print "Warning: Line does not contain two BOLD: occurrences: " $0 > "/dev/stderr"
		OUT = "unknown.fa"
	}
}
{
	print >> OUT
	close(OUT)
}
