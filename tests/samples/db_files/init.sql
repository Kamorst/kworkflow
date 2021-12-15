CREATE TABLE IF NOT EXISTS "tags"(
	"id" INTEGER PRIMARY KEY,
	"tag" TEXT UNIQUE
);

CREATE TABLE IF NOT EXISTS "pomodoro"(
	"tag_id" INTEGER NOT NULL,
	"start_date" TEXT NOT NULL,
	"start_time" TEXT NOT NULL,
	"duration" INTEGER NOT NULL,
	"description" TEXT,
	FOREIGN KEY("tag_id") REFERENCES "tags"("id")
);

CREATE TABLE IF NOT EXISTS "statistics"(
	"name" TEXT NOT NULL,
	"start_date" TEXT NOT NULL,
	"start_time" TEXT,
	"execution_time" INTEGER NOT NULL
);

