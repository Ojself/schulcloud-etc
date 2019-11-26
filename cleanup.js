// files lo:schen
db.teams.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.files.deleteMany({owner: id._id, refOwnerModel: "teams"})})
db.courses.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.files.deleteMany({owner: id._id, refOwnerModel: "course"})})
db.users.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.files.deleteMany({owner: id._id, refOwnerModel: "user"})})
// lessons
db.courses.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.lessons.deleteMany({courseId: id._id})})
//consents
db.users.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.consents.deleteMany({userId: id._id})})
//accounts
db.users.find({schoolId: ObjectId("0000013faf98270031450073")}, {_id: 1}).forEach(function(id){db.accounts.deleteMany({userId: id._id})})
//alles andere
db.classes.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.courses.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.homeworks.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.news.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.submissions.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.teams.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.users.deleteMany({schoolId: ObjectId("0000013faf98270031450073")})
db.schools.remove({_id: ObjectId("0000013faf98270031450073")})

