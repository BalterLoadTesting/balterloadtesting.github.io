rm -r static/_file
rm -r static/_npm
rm -r static/_import
rm -r static/_observablehq

cp -r ../autobalter/demo/dist/* static/

mv static/index.html static/demo-index.html

fastmod --accept-all -d static/ 'href="\./">' 'href="./autobalter">'
#fastmod --accept-all -d static/ demo-history demo-history.html
#fastmod --accept-all -d static/ demo-api-overview demo-api-overview.html
#fastmod --accept-all -d static/ demo-report demo-report.html
#fastmod --accept-all -d static/ demo-specification demo-specification.html
