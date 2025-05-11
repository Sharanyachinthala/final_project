#!/bin/bash

for item in ./*_R1_*; do
	echo file: $(basename $item)

	bases=$( zgrep -c "^@" $item)
	echo bases: $bases

	total_bp=$(($bases * 250 * 2))
	echo reads: $total_bp

	cov=$(($total_bp / 7000000))
	echo coverage: $cov
done

