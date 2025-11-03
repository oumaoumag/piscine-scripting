# 1. Create the exact folder structure
mkdir -p file-researcher

# 2. Create the facts.txt file (includes line numbers like the real test)
cat > file-researcher/facts.txt <<'EOF'
44:It takes 12 honeybees to make one teaspoon of honey
6:898 tornadoes were recorded to have occurred in the United States in the year 2000.
12:The only two days of the year in which there are no professional sports games (MLB, NBA, NHL, or NFL) are the day before and the day after the Major League All-Star Game.
15:All dogs are the descendant of the wolf. These wolves lived in eastern Asia about 15,000 years ago
32:Most fleas do not live past a year old
39:Every 238 years, the orbits of Neptune and Pluto change making Neptune at times the farthest planet from the sun
60:A maple tree is usually tapped when the tree is at least 45 years old and has a diameter of 12 inches
63:An acre of trees can remove about 13 tons of dust and gases every year from the surrounding environment
67:Every year, 100 million sharks are killed by people
70:One female mouse can produce up to 100 babies a year
95:In Johannesburg, the average car will be involved in an accident once every four years.
96:The youngest actress to be nominated as best actress is Keisha Castle-Hughes who was nominated at just 13 years old
121:In an average lifetime, a person will spend 4 years traveling in an automobile and six months waiting at a red light.
EOF

# 3. Create the PERFECT script (79 bytes)
cat > file-researcher.sh <<'EOF'
#!/bin/bash
grep '^It takes 12 honey' file-researcher/facts.txt
grep -i year file-researcher/facts.txt | cut -d: -f2-
EOF
chmod +x file-researcher.sh

# 4. TEST IT NOW
echo "=== YOUR OUTPUT ==="
./file-researcher.sh | cat -e
echo
echo "=== EXPECTED OUTPUT ==="
cat > expected.txt <<'EOF'
It takes 12 honeybees to make one teaspoon of honey$
898 tornadoes were recorded to have occurred in the United States in the year 2000.$
The only two days of the year in which there are no professional sports games (MLB, NBA, NHL, or NFL) are the day before and the day after the Major League All-Star Game.$
All dogs are the descendant of the wolf. These wolves lived in eastern Asia about 15,000 years ago$
Most fleas do not live past a year old$
Every 238 years, the orbits of Neptune and Pluto change making Neptune at times the farthest planet from the sun$
A maple tree is usually tapped when the tree is at least 45 years old and has a diameter of 12 inches$
An acre of trees can remove about 13 tons of dust and gases every year from the surrounding environment$
Every year, 100 million sharks are killed by people$
One female mouse can produce up to 100 babies a year$
In Johannesburg, the average car will be involved in an accident once every four years.$
The youngest actress to be nominated as best actress is Keisha Castle-Hughes who was nominated at just 13 years old$
In an average lifetime, a person will spend 4 years traveling in an automobile and six months waiting at a red light.$
EOF
cat expected.txt