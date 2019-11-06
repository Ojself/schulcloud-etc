#! /bin/bash
#: macht ETC neu

# ssl for cluster
SSLVALUE=""
if [ "$SSL" = true ] ; then export SSLVALUE="--ssl" ; fi

# putzen
mongo $MONGO_URI $SSLVALUE cleanup.js

# neu machen
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=accounts /tmp/seed/schulcloud.accounts.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=classes /tmp/seed/schulcloud.classes.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=consents /tmp/seed/schulcloud.consents.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=courses /tmp/seed/schulcloud.courses.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=files /tmp/seed/schulcloud.files.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=homeworks /tmp/seed/schulcloud.homeworks.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=lessons /tmp/seed/schulcloud.lessons.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=news /tmp/seed/schulcloud.news.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=schools /tmp/seed/schulcloud.schools.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=submissions /tmp/seed/schulcloud.submissions.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=teams /tmp/seed/schulcloud.teams.json
mongoimport --uri=$MONGO_URI $SSLVALUE --collection=users /tmp/seed/schulcloud.users.json

exit 0
