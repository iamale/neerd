from bs4 import BeautifulSoup

def parse_person(s):
  # Участник ru.olymp.spb.2015.1123. Пушков Александр Алексеевич (564, 11 класс)
  s = s.replace("Участник ru.olymp.spb.", "")
  year, id, s = s.split(".")
  year = int(year)
  id = int(id)

  name, s = s.split("(")
  name = name.strip()

  school, class_ = s.split(",")
  try:
    class_ = int(class_.strip(" клас)"))
  except:
    class_ = None

  return {
    "id": id,
    "name": name,
    "school": school,
    "class": class_
  }

def parse(f):
  soup = BeautifulSoup(f)
  namestr = soup.h2.get_text()
  taskname = soup.find_all("h2")[1].get_text().split(". ")[1]
  groups = []
  current_group = None
  for tr in soup.table.find_all("tr")[1:]:
    if "group" in tr.get("class"):
      if current_group is not None:
        groups.append(current_group)
      id = current_group["id"] if current_group is not None else 0
      current_group = {
        "id": id+1,
        "name": tr.get_text().strip(),
        "tests": [],
        "total": -1
      }

    elif "group-result" in tr.get("class"):
      current_group['total'] = int(tr.find_all("td")[-1].get_text())

    else:
      tds = tr.find_all("td")

      current_group['tests'].append({
        "number": int(tds[0].get_text()),
        "result": tds[2].get_text(),
        "comment": tds[1].get_text().strip(),
        "message": tds[3].get_text(),
        "points": int(tds[4].get_text())
      })
  groups.append(current_group)

  return namestr, taskname, groups

if __name__ == '__main__':
  import sys, json
  json.dump(parse(sys.stdin)[1], sys.stdout)