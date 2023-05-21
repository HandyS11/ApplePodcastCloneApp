/*
        All this stub belongs to Samuel, it was insanely detailled so I ask him for it because I was too lasy.
        (I did some little changes to adapt it to my model of course)
 */

import Foundation

private let formatter : DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return formatter
} ()

private let hippocampe: [Episode] = [
    Episode(date: formatter.date(from: "01/07/2022")!, title: "EP#89: Les pervers narcisiques ?", desc: "Comprendre leur fonctionnement (avant, pendant... et même après). J'espère que ce podcast apportera un peu à sa manière.Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes. Abonnez-vous, laissez votre plus belle note : Vous êtes les seuls ambassadeurs !Tous les liens cités dans l’émission : linktr.ee/FabienOlicardPour participer inscrivez-vous dans le formulaire sur ce lien : linktr.ee/OlicardContact : fabien.olicard@sherlockm.com\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 1680),
    Episode(date: formatter.date(from: "28/06/2022")!, title: "EP#88 - Trésors ou Escrouerie? (H.S)", desc: "L'histoire d'un trésor qui n'en serait pas un...Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes. Abonnez-vous, laissez votre plus belle note : Vous êtes les seuls ambassadeurs !Tous les liens cités dans l’émission : linktr.ee/FabienOlicardContact : fabien.olicard@sherlockm.com\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 1740),
    Episode(date: formatter.date(from: "07/12/2021")!, title: "EP#87 - Comment tenir bon ?", desc: "Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes. Abonnez-vous, laissez votre plus belle note : Vous êtes les seuls ambassadeurs !Tous les liens cités dans l’émission : linktr.ee/FabienOlicardPour participer inscrivez-vous dans le formulaire sur ce lien : linktr.ee/OlicardContact : fabien.olicard@sherlockm.com\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 540),
    Episode(date: formatter.date(from: "30/11/2021")!, title: "EP#86 - La vérité sur l'hyponse", desc: "Alors l'hypnose ? Faut-il y croire ? Les médecins s'en servent-ils ? Les réponse dans cet épisode !Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes. Abonnez-vous, laissez votre plus belle note : Vous êtes les seuls ambassadeurs !Tous les liens cités dans l’émission : linktr.ee/FabienOlicardPour participer inscrivez-vous dans le formulaire sur ce lien : linktr.ee/OlicardContact : fabien.olicard@sherlockm.com\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 780),
    Episode(date: formatter.date(from: "23/11/2021")!, title: "EP#85 - Les gagnants n'ont pas raison !", desc: "Et si il ne fallait pas écouter les gagnants ? Ceux qui réussissent ? Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes. Abonnez-vous, laissez votre plus belle note : Vous êtes les seuls ambassadeurs !Tous les liens cités dans l’émission : linktr.ee/FabienOlicardPour participer inscrivez-vous dans le formulaire sur ce lien : linktr.ee/OlicardContact : fabien.olicard@sherlockm.com\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 480)
]

private let chaleurUmaine: [Episode] = [
    Episode(date: formatter.date(from: "09/05/2023")!, title: "7. Comment se libérer de la voiture individuelle", desc: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****\n\nEn 2023, 38 millions de voitures sont en circulation en France : à elle seule, la voiture pèse 16 % de nos émissions de gaz à effet de serre. Comment faire pour diminuer la place de la voiture ? Existe-t-il des solutions qui ont déjà été testées, et qui permettent d’y arriver ? Vers quels autres types de véhicules peut-on se tourner ?\n\nAurélien Bigo est chercheur associé à la chaire Energie et Prospérité. Il est l’auteur d’un livre à paraître intitulé Voitures (au pluriel) aux éditions Tana. Il a consacré sa thèse à la décarbonation du transport.\n\nUn épisode produit par Adèle Ponticelli avec l’aide d’Esther Michon, réalisé par Amandine Robillard. Musique originale : Amandine Robillard.\n\n« Chaleur humaine » est un podcast hebdomadaire de réflexion et de débat sur les manières de faire face au défi climatique. Ecoutez gratuitement chaque mardi un nouvel épisode, sur Lemonde.fr, Apple Podcast, Acast ou Spotify. Retrouvez ici tous les épisodes.\n\nVous pouvez m’écrire pour me faire part de vos avis, idées, et de vos critiques à l’adresse chaleurhumaine@lemonde.fr. Je réponds chaque semaine dans la newsletter Chaleur humaine à une question sur le défi climatique.\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 2940),
    Episode(date: formatter.date(from: "25/04/2023")!, title: "6. Gestes individuels et actions collectives : comment agir pour le climat ? (EN PUBLIC)", desc: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****\n\nPour atteindre la neutralité carbone en 2050, renoncer au pétrole, au gaz et au charbon, il va falloir transformer aussi bien nos modèles économiques que nos comportements. Mais la volonté de mobiliser chaque individu provoque un vif débat, tant parmi les experts que parmi les militants, qui accusent parfois l'Etat et les entreprises de mettre la responsabilité sur les individus pour justifier leur inaction. Un sujet qui avait déjà occupé un premier épisode de Chaleur humaine en 2022, intitulé \"Peut-on sauver la planète avec des petits gestes\" ?\n\nLa publication de cet épisode a suscité beaucoup de messages et d'interrogations, ce qui a débouché sur un nouvel épisode de Chaleur humaine enregistré en public, le 8 mars 2023, dans les locaux du Monde. Quels sont les gestes qui ont un impact et ceux qui n’en ont pas ? Pourquoi l’injonction à faire des gestes individuels est-elle parfois contre-productive ? Que faire des gestes qu’on aimerait réaliser mais qu’on ne peut pas faire ?\n\nSophie Dubuisson-Quellier est sociologue, directrice de recherches au CNRS, chercheuse à Sciences Po Paris et membre du Haut conseil pour le climat. C’est sa deuxième intervention dans Chaleur humaine (Ecouter ici l'épisode de juillet 2022 et lire l'interview en version texte).\n\nCésar Dugast est ingénieur, manager au cabinet Carbone 4. Il est le co-auteur de l’étude « Faire sa part ? » ainsi que de l’étude ayant servi à l’Affaire du Siècle dans son action en justice devant le Conseil d’État.\n\nSi vous souhaitez être informé du prochain épisode enregistré en public, vous pouvez vous manifester ici auprès de mes collègues du Monde Ateliers.\n\nUn épisode produit par Adèle Ponticelli avec l’aide d’Esther Michon, réalisé par Amandine Robillard. Musique originale : Amandine Robillard. Merci à l’équipe du Monde Ateliers, Kévin Hurtaud, Josefa Lopez, Justine Taillefer et Estelle Lavielle. Merci également à Cédric Rottier, Gilles Goedertier et à Eyeshot pour la réalisation en direct.\n\nVous pouvez m’écrire pour me faire part de vos avis, idées, et de vos critiques à l’adresse chaleurhumaine@lemonde.fr.\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 3840),
    Episode(date: formatter.date(from: "18/04/2023")!, title: "5 . CLimat :  transition va-t-elle créer ou détruirees emplois ?", desc: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****\n\nPour atteindre la neutralité carbone, il faut diminuer massivement notre consommation de pétrole, de gaz et de charbon. Mais cette transformation peut avoir un coût social massif. A l'inverse, les nouveaux secteurs qui se développent dans une économie sans carbone espèrent créer des milliers d'emplois.\n\nLa transition climatique peut-elle se faire sans détruire des centaines de milliers d’emplois ? Dans quel secteur est-il possible d’en créer de nouveaux ? Comment faire pour mettre en place la formation et les outils nécessaires pour réussir à complètement transformer le marché du travail ?\n\nDominique Méda est sociologue, elle a écrit de nombreux livres sur le travail et ses évolutions, et elle préside l’institut Veblen. Elle est également chroniqueuse au Monde et sur France culture. Elle mentionne dans l'épisode le rapport de Laurence Parisot sur l'emploi, le Plan de transformation du Shift Project, le travail sur le secteur automobile de la FNH et de la CFDT et enfin celui du chercheur Philippe Quirion.\n\nUn épisode produit par Adèle Ponticelli avec l’aide d’Esther Michon, réalisé par Solène Moulin. Musique originale : Amandine Robillard.\n\n« Chaleur humaine » est un podcast hebdomadaire de réflexion et de débat sur les manières de faire face au défi climatique. Ecoutez gratuitement chaque mardi un nouvel épisode, sur Lemonde.fr, Apple Podcast, Acast ou Spotify. Retrouvez ici tous les épisodes.\n\nVous pouvez m’écrire pour me faire part de vos avis, idées, et de vos critiques à l’adresse chaleurhumaine@lemonde.fr. Je réponds chaque semaine dans la newsletter Chaleur humaine à une question sur le défi climatique.\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 2760),
    Episode(date: formatter.date(from: "11/04/2023")!, title: "4. Faut-il arrêter de prendre l'avion ?", desc: "**** Recevez gratuitement tous les mardis l'infolettre Chaleur humaine en vous inscrivant ici ****\n\nLe secteur aérien pèse environ 2,5 % des émissions de CO2 au niveau global. De prime abord, cela pourrait sembler peu, mais comme le trafic aérien est en constante augmentation, ce poids devient de plus en plus problématique. Or il n'existe pas aujourd'hui de moyen crédible pour décarboner le transport aérien.\n\nQui prend l'avion et pour quels usages ? Est- ce que les avions à hydrogène ou aux biocarburants sont des alternatives crédibles ? Faut-il faire baisser fortement le trafic, et comment ? Et quelles conséquences cela aurait ?\n\nIsabelle Laplace est chercheuse en économie à l’école nationale d’avion civile, l’ENAC, à Toulouse, où l'on forme les futurs pilotes et les professionnels du secteur aérien. Elle travaille depuis plus de dix ans à la transition climatique du secteur aérien et est co-responsable du Pôle Prospective \"Durabilité, Sécurité et autres enjeux sociétaux\" de l'ENAC.\n\nUn épisode produit par Adèle Ponticelli avec l’aide d’Esther Michon, réalisé par Amandine Robillard. Musique originale : Amandine Robillard.\n\n« Chaleur humaine » est un podcast hebdomadaire de réflexion et de débat sur les manières de faire face au défi climatique. Ecoutez gratuitement chaque mardi un nouvel épisode, sur Lemonde.fr, Apple Podcast, Acast ou Spotify. Retrouvez ici tous les épisodes.\n\nVous pouvez m’écrire pour me faire part de vos avis, idées, et de vos critiques à l’adresse chaleurhumaine@lemonde.fr. Je réponds chaque semaine dans la newsletter Chaleur humaine à une question sur le défi climatique.\n\nHébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", time: 2700)
]

private let cqfd: [Episode] = [
    Episode(date: formatter.date(from: "10/05/2023")!, title: "Néandertal : portrait caché", desc: "durée : 00:58:20 - La Science, CQFD - par : Natacha Triou - Apparu il y a environ 400 000 ans, Néandertal a disparu il y a 42 000 ans. On cherche encore les raisons de son extinction. De récents travaux ont montré que les premiers Homo sapiens sont arrivés en Europe Occidentale il y a 54 000 ans. Que sait-on de la rencontre entre ces deux humanités ? - invités : Ludovic Slimak Archéologue, penseur, et chercheur CNRS au laboratoire du Centre d'anthropobiologie et de génomique (CAGT) de Toulouse.; Amélie Vialet Paléoanthropologue, et maîtresse de conférence, au Muséum National d'Histoire Naturelle.", time: 3480),
    Episode(date: formatter.date(from: "10/05/2023")!, title: "Comment l'\"ther luminifère\"a-t-iln temps colonisé le vide", desc: "durée : 00:05:20 - Le Pourquoi du comment : science - par : Etienne Klein, Gilles Bœuf, Bruno David - Quand l'éther dit luminifère trompe son monde !", time: 300),
    Episode(date: formatter.date(from: "10/05/2023")!, title: "Une formule rudimentaire de syntaxeans les vocalisations des chimpanzés", desc: "durée : 00:06:05 - Le Journal des sciences - par : Alexandra Delbot - Au menu du journal des sciences : les vocalisations des chimpanzés, la taille des oiseaux influence leur capacité d’adaptation, trois ceintures d’astéroïdes observées autour de l’étoile de Fomalhaut et la découverte d’une route sous-marine de 7000 ans.", time: 360),
    Episode(date: formatter.date(from: "09/05/2023")!, title: "ADN poubelle : tout n'est pas à jeter", desc: "durée : 00:58:16 - La Science, CQFD - par : Natacha Triou - Au début des années 2000, les scientifiques se sont aperçus de la présence d’un ADN dit “non codant”, qui semblait être inutile. Il est alors appelé “ADN poubelle”. Pourtant, 98% de notre génome en est composé. Cet ADN est-il vraiment aussi inutile qu'on ne le prétend ? - invités : Stanislas Lyonnet Directeur de l’Institut Imagine depuis 2016, professeur de génétique à l’université Paris-Cité et généticien à l’hôpital universitaire Necker - Enfants Malades à Paris.; Antoine Morillon Directeur de recherche au CNRS, et directeur du département spécialisé dans les ARN non-codants et la fluidité des génomes à l'Institut Curie à Paris.", time: 3480),
    Episode(date: formatter.date(from: "09/05/2023")!, title: "Le néant est-ilun bon à rien ?", desc: "durée : 00:04:41 - Le Pourquoi du comment : science - par : Etienne Klein - Le néant, la grande question !", time: 300),
    Episode(date: formatter.date(from: "09/05/2023")!, title: "Cancer : des ultrasons pour faire péntrer plus efficacement les chimiothérapies dans le cerveau", desc: "durée : 00:06:05 - Le Journal des sciences - par : Alexandra Delbot - Au menu du journal des sciences : des ultrasons pour optimiser les traitements contre les cancers du cerveau, la découverte d’un nouveau compartiment cellulaire, des universités saoudiennes payent pour de fausses affiliations, la stratégie des criquets pour échapper au cannibalisme.", time: 360)
]

private let codeChange: [Episode] = [
    Episode(date: formatter.date(from: "11/04/2023")!, title: "Silicon Valley, \"l'art de la guerre avec le sourire\"", desc: "durée : 01:02:01 - Le code a changé - On passe toute une partie de nos vies dans la Silicon Valley. Quand on utilise un Mac, un iPhone ou tout outil Apple, quand on est sur Facebook, Instagram ou Twitter. Quand on consulte ses mails dans Gmail, cherche sur Google, d’une certaine manière, on est dans la Silicon Valley.", time: 3720),
    Episode(date: formatter.date(from: "21/03/2023")!, title: "L'ère des propagations", desc: "durée : 00:56:11 - Le code a changé - “Contagion”, le film de Steven Soderbergh sorti en 2011 a pris une toute autre dimension au moment de la pandémie du COVID, notamment pour ceux qui l'on vu ou revu à ce moment là. Xavier de la Porte fait partie de ceux-là.", time: 3360),
    Episode(date: formatter.date(from: "21/02/2023")!, title: "La typographie : ce qu'on voit, ce qu'on ne voit pas", desc: "durée : 00:48:53 - Le code a changé - \"Ce qu’on aime au fond, c’est ce qui est à la fois hyper-moderne, et très ancien\". C'est grâce à cette phrase prononcée par son ami l'écrivain Olivier Cadiot que Xavier de La Porte a compris pourquoi il aimait le numérique !", time: 2940),
    Episode(date: formatter.date(from: "18/01/2023")!, title: "Anne et Jeanne parle d'Instagram, et ratatam", desc: "durée : 00:45:16 - Le code a changé - Quand Jeanne, et sa copine Anne racontent à Xavier de La Porte comment elles sont devenues accros aux vocaux. Le vocal, c’est un moyen assez nouveau. Ça donne lieu à des conversations nouvelles. Ecoutez Jeanne et Anne.", time: 2700),
    Episode(date: formatter.date(from: "20/12/2022")!, title: "Ethan Zuckerman, l'homme qui regrette d'avoir inventé la pub pop up", desc: "durée : 00:52:00 - Le code a changé - Cet homme est une légende d'Internet. Hyper respecté parce qu'il est à l'origine de nombreuses initiatives qui ont marqué l'histoire du web. Sa bio le présente aussi comme l’inventeur de la pub pop up. Cette fenêtre intrusive. Et c'est à ça que Xavier pense lorsqu'il se retrouve face à lui.", time: 3120)
]


private var stub: [Podcast] = [
    Podcast(name: "L'hippocampe par Fabien Olicard", author: "Fabien Olicard", date: formatter.date(from: "01/07/2022")! ,authorImage: nil, image: "hippocampe", type: ["Affaires"], rating: 4.9, number: 258, episodes: hippocampe),
    Podcast(name: "Chaleur Humaine", author: "Le Monde", date: formatter.date(from: "09/05/2023")!, authorImage: nil, image: "chaleur-humaine", type: ["Actualités", "Chaque semaine"], rating: 4.8, number: 459, episodes: chaleurUmaine),
    Podcast(name: "La science, CQFD", author: "France Culture", date: formatter.date(from: "10/05/2023")! , authorImage: "france-culture", image: "science-cqfd", type: ["Sciences"],  rating: 4.4, number: 1767, episodes: cqfd),
    Podcast(name: "Le code à changé", author: "France Inter", date: formatter.date(from: "11/04/2023")! , authorImage: "france-inter", image: "code-change", type: ["Actualités Technologiques"],  rating: 4.8, number: 539, episodes: codeChange)
]

func loadAllPodcasts() -> [Podcast] {
    stub
}

func loadPodcast(_ index: Int) -> Podcast {
    stub[index]
}