import os
import glob
import codecs
from jinja2 import Environment, FileSystemLoader
from parse import parse, parse_person

env = Environment(loader=FileSystemLoader("./templates"))

index_tpl = env.get_template("index.html")
person_tpl = env.get_template("person.html")

people = {}

for name in glob.glob("data/*.html"):
  person_id = int(name.split("/")[-1].split(".")[-4])
  id = int(name.split("/")[-1].split(".")[-3])
  namestr, taskname, task = parse(codecs.open(name))
  if person_id not in people:
    people[person_id] = parse_person(namestr)
    people[person_id]["tasks"] = {}
    people[person_id]["tasknames"] = {}
    people[person_id]["taskpoints"] = {}

  people[person_id]["tasks"][id] = task
  people[person_id]["tasknames"][id] = taskname
  people[person_id]["taskpoints"][id] = sum([g['total'] for g in task])

for person_id in people:
  people[person_id]["total"] = sum(people[person_id]["taskpoints"].values())

os.makedirs("./dist/")

for i, person in people.items():
  person_tpl.stream(person=person).dump(open("dist/%i.html" % i, 'w'))

index_tpl.stream(people=people).dump(open("dist/index.html", 'w'))