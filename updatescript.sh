c=0
while true; do
	c=$(( c+1 ))
	sleep 600
	echo $c
	cp ~/konkoly/automaticaperture/sourcefits/*NUM* ~/zabop.github.io/;
	cp ~/konkoly/automaticaperture/including_k2sc.ipynb ~/zabop.github.io/;
	rm css5.html;
	(cat intro; for each in $( ls *NUM* ); do echo '<img src="'$each'">'; done; cat outro) >> css5.html;
	git add *NUM*;
	git add css5.html;
	git add including_k2sc.ipynb
	git commit -m "autoupdate_"$c ; git push origin master;
done
