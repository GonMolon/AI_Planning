from random import randint


class Content:
    def __init__(self, name, duration, watched=False, to_watch=False):
        self.name = name
        self.watched = watched
        self.to_watch = to_watch
        self.duration = duration
        self.precedents = set()
        self.parallels = set()

    def print_init(self):
        if self.to_watch:
            print("    (", "to_watch ", self.name, ")")
        print("    (", "watched", self.name, "somewhen" if self.watched else "never", ")")
        print("    (", "=", "(", "duration", self.name, ")", self.duration, ")")
        for x in self.precedents:
            print("    (", "precedes", x, self.name, ")")
        for x in self.parallels:
            print("    (", "parallel", self.name, x, ")")


word_list = ["nalgo", "tokay", "corky", "elev", "tori", "dove", "peto", "dat", "busby", "fyn", "date", "sikh", "pump",
             "toga", "mch", "alem", "sofar", "pest", "digby", "marin", "rigor", "clem", "casey", "omak", "punic",
             "rumba", "linen", "shorn", "sloop", "meris", "ken", "herta", "qum", "oath", "axing", "regel", "filer",
             "leat", "exor", "kvass", "brawl", "chit", "goral", "parle", "vet", "chico", "lakm", "pomp", "jane",
             "offal", "heed", "fez", "gipsy", "sit", "supt", "hasp", "diu", "heth", "elko", "cyra", "algar", "petra",
             "malwa", "butes", "eyre", "eyas", "chimu", "lefty", "coble", "coven", "whig", "picky", "brie", "part",
             "keres", "tub", "abo", "rod", "shack", "thymi", "kies", "hang", "oken", "troll", "carin", "fluff", "dec",
             "swink", "eur", "zombi", "lear", "engle", "motor", "aback", "fri", "pence", "liest", "gink", "ear",
             "raven", "breaking", "bad", "house", "cards", "game", "thrones", "silicon", "valley"]
middle_list = ["the", "of", "from", "a", "in", "on", "for", "in", "behind", "at", "you"]


def randomWord():
    a = randint(0, len(word_list) - 1)
    b = randint(0, len(middle_list) - 1)
    c = randint(0, len(word_list) - 1)
    return word_list[a] + "_" + middle_list[b] + "_" + word_list[c]


def generateName(used_names=set()):
    name = randomWord()
    if name in used_names:
        return name + str(randint(0, 10000))
    else:
        used_names.add(name)
        return name


def generateRelations(content):
    n = len(content)
    for i in range(randint(int(n / 4), int(n / 2))):
        x = randint(0, n - 1)
        if not content[x].watched:
            content[x].to_watch = True
    for i in range(randint(int(n / 8), int(n / 4))):
        pair = (randint(0, n - 1), randint(0, n - 1))
        if pair[0] != pair[1]:
            content[pair[0]].parallels.add(content[pair[1]].name)
            content[pair[1]].parallels.add(content[pair[0]].name)


def generateContent(n):
    used_names = set()
    content = []
    for i in range(n):
        name = generateName(used_names)
        duration = randint(20, 120)
        isMovie = randint(0, 5) != 0
        if isMovie:
            content.append(Content(name, duration, randint(0, 4) == 0))
        else:
            watched = randint(0, 15)
            seasons = randint(1, 3)
            chapters = randint(2, 5)
            for s in range(1, seasons + 1):
                for c in range(1, chapters + 1):
                    chapter = Content(name + "-" + str(s) + "-" + str(c), duration)
                    if watched > 0:
                        chapter.watched = True
                        watched -= 1
                    if s != 1 or c != 1:
                        chapter.precedents.add(lastName)
                    lastName = chapter.name
                    content.append(chapter)
    return content


def main():
    n = randint(10, 100)
    content = generateContent(n)
    generateRelations(content)
    print("(", "define", "(", "problem redflix_random_problem", ")")
    print("  (", ":domain", "redflix_domain", ")")
    print("  (", ":objects")
    for x in content:
        print("  ", x.name, "-", "content")
    print("  )")
    print("  (", ":init")
    for x in content:
        x.print_init()
    print("    (= (contents_today) 0)")
    print("    (= (minutes_today) 0)")
    print("    (= (totals_watched) 0)")
    print("  )")
    print("  (:metric minimize (totals_watched))")
    print("  (", ":goal")
    print("    (forall (?x - content)")
    print("      (or (not (to_watch ?x)) (watched ?x somewhen))")
    print("    )")
    print("  )")
    print(")")

if __name__ == "__main__":
    main()