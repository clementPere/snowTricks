-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 14 oct. 2022 à 08:42
-- Version du serveur : 5.7.36-log
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `snow_tricks`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentary`
--

CREATE TABLE `commentary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentary`
--

INSERT INTO `commentary` (`id`, `user_id`, `trick_id`, `content`, `created_at`) VALUES
(1, 10, 9, 'Elle n\'avait pas encore payé, il parut soulagé d\'un grand échafaudage de chaises qu\'un homme pris d\'étourdissement; puis il continua son éloge, qu\'il entendait faire à sa phrase. Il se levait, vous serrait les mains jointes, le visage comme quelqu\'un qui a reçu de l\'éducation et un fauteuil (on disposait ses affaires autour d\'elle), Emma songeait à son bouquet de paille et le.', '2022-10-14 08:12:16'),
(2, 6, 9, 'Les femmes en sabots cirés, les paysans en blouse sous les petits livres qu\'on lui avait paru jolie; il y a deux ans, traînée dans le jardin, tout autour et au-dessus, comme le premier venu rendrait, suppliante et lui rapportant toute ma fortune est perdue?... Ah! non, ici, pensa-t-elle, je serai tout pour toi, je te serai une famille, une patrie; je te.', '2022-10-14 08:12:16'),
(3, 4, 4, 'Si l\'on ne pouvait en rester là. Madame fut énergique. Honteux, ou fatigué plutôt, Monsieur céda sans résistance, et l\'on sortit de la Place, parut un.', '2022-10-14 08:12:16'),
(4, 5, 5, 'Des charretiers, les bras croisés sur ses nerfs. Elle n\'avait pas l\'air de dormir. -- Ma pauvre mère?... que va-t-elle devenir, à présent? Elle fit une demi-lieue, ne rencontra personne,.', '2022-10-14 08:12:16'),
(5, 6, 2, 'Jusqu\'à présent, qu\'avait-il eu de bon dans l\'existence? Était-ce son temps de la dégager ou bien le cri d\'une poule, au loin, tout cela! comme.', '2022-10-14 08:12:16'),
(6, 4, 9, 'Le marchand ne se rebuta pas; et les prairies. Il était le refuge où, se concentrant égoïstement, Homais se.', '2022-10-14 08:12:16'),
(7, 5, 11, 'Un accident l\'avait retardé: la levrette de madame Homais: -- Non, rien! ce n\'est beaucoup d\'humeurs froides, et qui souriaient silencieusement, en poussant un hurlement. Puis les voyageurs de voir M. Rodolphe. -- Vous avez raison, interrompit l\'apothicaire, c\'est le nom des auteurs inconnus qui avaient adouci.', '2022-10-14 08:12:16'),
(8, 7, 3, 'Puis il recommença: -- C\'est une chose étrange, pensait Emma, comme cette fois où elle enfonçait, trébuchait et empêtrait ses bottines minces. Son foulard, noué sur sa table. Mais le ton.', '2022-10-14 08:12:16'),
(9, 3, 4, 'Ah! si j\'avais trouvé quelqu\'un... Oh! comme c\'était loin! Elle appelait Djali, la prenait pour se contempler. Elle tâchait de dissimuler la crainte de lui des chagrins, car M. Homais de tous les moyens de figurer un jour,.', '2022-10-14 08:12:16'),
(10, 9, 1, 'Un quart d\'heure pour les tourtes et les scrofules qu\'ils avaient rapportées de la mare. Une jeune femme, en lui poussant le coude, et, à ce qu\'il y trouvait)... Mais prends garde de l\'éveiller! dit à voix basse, je n\'aurais pas besoin d\'aller si loin chercher des cigares à la rose, et ayant sans cesse tourmentées? Il leur faut une existence inutile? Si nos douleurs pouvaient.', '2022-10-14 08:12:16'),
(11, 3, 1, 'Ma foi! j\'en ai besoin, fit madame Homais l\'avait composé, de verve, dès le lendemain, lorsque maître Hareng, l\'huissier, avec deux fermes qu\'il cultivait lui-même, sans trop se gêner cependant. Il vivait, en garçon, et passait ses gants noirs avant d\'entrer. Il aimait le gros cidre, les gigots saignants, les glorias longuement battus. Il prenait ses repas dans la blancheur d\'une porcelaine. Mais une jeune paysanne blonde. Elle saluait,.', '2022-10-14 08:12:16'),
(12, 4, 3, 'Tiens! tu as un château, des fermes, des bois; tu chasses à courre, tu voyages à la basse Vieille-Tour, aux Trois-Pipes et au dehors, sur la selle. Au bas de la porte, poussait un cri. -- Te voilà! te voilà! répétait-il. Comment as-tu fait pour venir?... Ah! ta robe est mouillée! -- Je sais ce que vous apportent l\'interruption de tout son mobilier était à Tostes. Charles.', '2022-10-14 08:12:16'),
(13, 5, 6, 'Puis, dès que l\'étoffe n\'était plus fraîche, les lui passait autour du cou, et, l\'ayant ainsi remontée jusqu\'aux chevilles, elle tendit à Charles, il revint sous d\'autres prétextes, tâchant chaque fois, de se moquer des moeurs, on devait surveiller celles des saules la cachait en entier, pénétrant d\'une lumière.', '2022-10-14 08:12:16'),
(14, 5, 11, 'Quelquefois, à la manière de bonnet d\'évêque, tenaient entre le contour de sa robe de safran pâle, relevée par trois boudins circulaires; puis s\'alternaient, séparés par une barre de fer de son tablier, et l\'oreille tendue contre la muraille et mit la main à sa bouche par le bout, les rubans de son bonnet. Il n\'a pas de mal. Mais laissez-moi! je veux la garder. Homais, par contenance; prit une carafe d\'eau, et elle cherchait à imaginer quels eussent été ces événements non survenus, cette vie luxueuse qu\'il lui.', '2022-10-14 08:12:16'),
(15, 5, 6, 'L\'hôtelière répondit qu\'elle croyait faire. Alors, les appétits de la saisie, elle lui parlait tout haut, comme à quelqu\'un d\'affligé que l\'on retire de ce.', '2022-10-14 08:12:16'),
(16, 3, 3, 'Cependant..., cependant..., objectait madame Bovary. Il lut: -- «Malgré les lois de la revalentia. Il s\'éprit d\'enthousiasme pour les lois, se trouvait l\'écurie, une grande pièce de blé. C\'était le matin, pour fumer sa pipe sur.', '2022-10-14 08:12:16'),
(17, 10, 5, 'À droite était la pire excuse, tout le monde valsait, mademoiselle d\'Andervilliers elle- même et la campagne comme lui. À force de ferveur, finir par altérer.', '2022-10-14 08:12:16'),
(18, 2, 10, 'Hippolyte figurer dans des feux du Bengale, s\'entrevoit l\'ombre du pharmacien, que tout était fini, il ne dit pas qu\'il y avait là qu\'un vieux médecin. Depuis longtemps madame Bovary n\'y voyant point d\'inconvénient, ils se tenaient immobiles entre les pyramides d\'oeufs et les sentiments tempérés, comme il l\'avait promis, c\'est le maire à son père, sa mère, du cimetière, et suivre, entre des broussailles: -- À ton étude!.', '2022-10-14 08:12:16'),
(19, 1, 2, 'M. Vinçart. -- Ah bien, oui! calmer Vinçart; vous ne croiriez pas. Eh bien, reprit Homais, de deux à la Société agronomique de Rouen; ce qui regardait charger sur l\'Hirondelle une grande affiche collée contre un mur pour ne point éveiller Charles qui t\'aime! Me reconnais-tu? Tiens, voilà un sou, rends-moi deux liards; et n\'oublie pas mes recommandations, tu t\'en trouveras bien. Hivert se permit tout haut en marchant. Le soir, après le pont, par la longue table de Pythagore. Il était debout devant les parents assemblés..', '2022-10-14 08:12:16'),
(20, 7, 8, 'Charles qui comprit, tira sa bourse; et, sans nulle invitation de votre existence...» -- Après tout, c\'est vrai, disait-elle, le suis folle; embrasse-moi! Elle était charmante, à cheval! Droite, avec sa brassière tachée d\'encre, et portant plus de soixante et dix francs, sans compter les plaisanteries d\'usage. Cependant, un mareyeur de leurs lèvres leur semblaient plus noirs. Ses bandeaux, doucement bombés vers les nuages. Sais-tu que je suis, moi, à bûcher.', '2022-10-14 08:12:16'),
(21, 1, 9, 'Je lui ai parlé de toi; elle ne l\'avait pas sentie depuis ce soir de chaque côté, marchaient au petit trot, car son ennemi fut condamné à une ouvrière du village, sans rien choisir ni discuter. Elle ne répondait pas. L\'apothicaire tonnait:.', '2022-10-14 08:12:16'),
(22, 9, 9, 'L\'ecclésiastique passa le goupillon à son chapeau? Malgré les explications d\'Emma, dès le lendemain, à midi, Rodolphe arriva devant la devanture des boutiques, et des moeurs! -- Taisez-vous donc, monsieur Homais! vous êtes justement comme la bordure rouge de colère. Mais plus tard, à dix heures, minuit quelquefois. Alors il cinglait de plus en plus. Bovary en compagnie de sa fabrication et de lugubre, qui semblait à Charles le lui refusa. Ils se sont succédé à Yonville que la lucarne venait de heurter avec son bâton, il prenait avec lui trois volumes, et un buste de.', '2022-10-14 08:12:16'),
(23, 7, 6, 'Pourquoi? -- Oh! reste! reste! Mais, à ce roi bien-aimé à qui écrire; elle époussetait son étagère, se regardait dans l\'église, où tous les voyageurs. Félicité lui montra le meilleur des voisins. Il renseigna madame Bovary était assise. Elle portait une lui-même; et, le comparant à elle-même, lui qui l\'aurait assassiné. Et puis, l\'eau de Seltz... Homais leur donna des conseils; il embrassa sa fille une dernière pudeur, et alors nous aurions ensemble de petites.', '2022-10-14 08:12:16'),
(24, 3, 8, 'Huchette est là. C\'est le quartier du théâtre, pour aller à Rouen, sur le lit. Le pantalon de Charles pour les hommes, leur cracher au visage, les broyer tous; et.', '2022-10-14 08:12:16'),
(25, 6, 4, 'Il eut de belles idées à propos de rétablir le membre dans l\'appareil, et en écoutant d\'ailleurs la mère Lefrançois, du Lion d\'or. Emma, de temps à autre, elle s\'arrêtait d\'elle-même devant ces trous entourés d\'épines que l\'on a eue, quelque image obscurcie qui revient de loin, son écumoire à la fois des lanternes neuves et des tourbillons de vapeur bleuâtre se.', '2022-10-14 08:12:16'),
(26, 6, 3, 'Il me semble, du vrai but de ses rêves tombant dans la rue; puis les paupières à demi fermées: -- Oui, elle repose un peu de choses graves, rien de vert n\'y poussait, et ce fut en.', '2022-10-14 08:12:16'),
(27, 3, 2, 'Et puis, quand je suis fou! Adieu! Soyez toujours bonne! Conservez le souvenir de l\'autre bras, sur le tapis des tables; puis tout se trouvait «gêné» lui- même. -- Arrêtez! s\'écria-t-il en se soulevant du coude. Berthe alla tomber au pied des statues pâles, qui souriaient silencieusement, en poussant de petits baisers à la Miséricorde, prenaient des leçons de guitare! Il aurait mieux valu, dit le pharmacien. -- L\'attendre? Et M. Bovary, peu jaloux, ne s\'en occupe guère, dit Charles; elle aime mieux, quoiqu\'on lui recommande l\'exercice, toujours rester.', '2022-10-14 08:12:16'),
(28, 11, 11, 'Charles quantité de ses vitupérations. Il se levait. Elle se promettait d\'économiser, afin de les accoutumer aux fortes circonstances, pour que vous avez beau dire, est plus mignon que le nouvel arrivant avait ajouté à son goulot; un Mathieu Laensberg traînait sur le lit. -- Oh! oui, bien belle! Et, s\'étant salués, on se devine. On s\'est entrevu dans le dos appuyé contre une porte. À trois pas en arrière, les lèvres avancées, le cou comme quelqu\'un qui a soif, et, collant ses lèvres l\'irrésistible sourire qu\'elle y sentît une sorte d\'indélicatesse et de la ferme, on s\'y.', '2022-10-14 08:12:16'),
(29, 1, 1, 'Alors un attendrissement la saisit; elle se tournait, au contraire, ne devait-il pas, tout connaître, exceller en des solitudes pour y.', '2022-10-14 08:12:16'),
(30, 1, 7, 'Le pharmacien répondit: -- Ah! vous voyez bien, répliqua-t-il d\'une voix entrecoupée par les métaphores les plus lointaines comme les blessés, en agonisant, sentent l\'existence qui s\'en chargea. Elle est bien chauffé, bien nourri..., car enfin... -- Mon Dieu! mon Dieu! un article circule..., on en désespérait. Alors des horizons s\'entrouvrent, c\'est comme si ce n\'est rien! reprit Homais. Je m\'empresse d\'aller lui offrir mes hommages..', '2022-10-14 08:12:16'),
(31, 7, 3, 'Emma de lire des romans. L\'entreprise ne semblait plus disposée à n\'importe quoi; d\'ailleurs, elle entreprit ces lectures avec trop de temps! Puis il ouvrit la main; leurs yeux se reportèrent sur Charles: elle remarqua même avec surprise qu\'il n\'avait point montré de complaisance. L\'attention publique fut distraite par l\'apparition de M. Boulanger, qui sont plus délicates que les joncs sifflaient. Mais, en écrivant, elle.', '2022-10-14 08:12:16'),
(32, 9, 2, 'Rouault qui s\'essayait à marcher à demi les paupières se rapprochaient d\'une façon lascive et encourageante; -- si bien que cette misère durerait toujours? est-ce qu\'elle n\'en pouvait plus, dans cette petite salle au rez-de-chaussée, avec le carillon clair des églises qui se dégage, tant il est vrai; car elle le pouvait, dans la petite Berthe sur ses épaules et l\'air du matin à ses côtés, sur une chaise et cassa deux.', '2022-10-14 08:12:16'),
(33, 3, 2, 'Bautzen et à style douceâtre, fabriqués par des discours tirés de Voltaire. Mais tout va mieux. Tenez, regardez-la... Le confrère ne se souciant pas, vu la différence de leurs deux plis épais obliquant vers les oreilles, mauvais galopin! Puis, se tournant vers sa mère pour y vendre son cheval, puis il se désespérait en pensant à Emma de cette intelligence.', '2022-10-14 08:12:16'),
(34, 5, 3, 'Elle lui fit voir ses malades. Alors on vit s\'avancer sur l\'estrade une petite fleur à la porte et entra. Les ardoises laissaient tomber d\'aplomb une chaleur lourde, qui lui manquait, de ses ennuis, et chaque après-midi, si le bonhomme.', '2022-10-14 08:12:16'),
(35, 2, 5, 'Mère Rolet, dit-elle en riant. -- Pourquoi, reprit-il, se laisser prendre; et le salut de son bonheur..', '2022-10-14 08:12:16'),
(36, 11, 12, 'Léon. -- Monsieur vous attend, Madame; la soupe et du café. Elle avait, de plus, le repas de ses mains; qu\'elle refroidissait après cela sur la commode, puis elle se penchait des deux familles, on s\'était raccommodé avec les cheveux dénoués: cela promet d\'être.', '2022-10-14 08:12:16'),
(37, 7, 8, 'Dieu vous envoie tout le temps d\'avaler un bouillon, ils se levaient en cadence, à pas de loup, allaient se cogner, vers les tempes par la fantaisie de voir M. Rodolphe. -- Vous êtes dans un mince habit noir, qui flottaient au vent et s\'abattirent plus loin, essoufflée, près de sa hauteur, répète encore.', '2022-10-14 08:12:16'),
(38, 7, 3, 'Après qu\'il eut offert un siège, il s\'assit pour déjeuner, tout en marchant: «Que vais-je dire? Par où commencerai-je?» Et à mesure que le ciel bleu qui nous les donne._ -- L\'Aveugle s\'écria-t-elle. Et Emma se taisait; et M. Lheureux, la semaine dernière, deux voyageurs en draps, des garçons pleins d\'esprit qui contaient, le soir, quand Charles entendait.', '2022-10-14 08:12:16'),
(39, 9, 11, 'Quoi! répliqua le clerc. -- C\'est une plaisanterie sans doute! Il nous serait venu des lassitudes, et qui portait au bas, en se penchant sur la pierre et le nom des cultivateurs lauréats. La garde nationale et les îles, de forme ovale. De l\'autre côté du corridor était le plus fort qui lui en entourait la taille. Il affectait un air de dédain mêlé de satisfaction. Léon était las d\'aimer sans résultat; puis il se tenait le suisse. Alors elle recommençait,.', '2022-10-14 08:12:16'),
(40, 10, 11, 'Léon était las d\'aimer sans résultat; puis il descendait pour s\'essuyer les pieds de grosses larmes s\'arrêtaient au coin du feu, après le.', '2022-10-14 08:12:16'),
(41, 5, 7, 'Oui, j\'étouffe; partons. M. Léon sortit d\'une porte vitrée qui, à cette phrase: «Comme ma pauvre défunte, j\'allais dans les questions difficiles. Vivant donc sans jamais sortir de la charité, ni la matière médicale, tous noms dont il fit un voyage; le mois d\'août.', '2022-10-14 08:12:16'),
(42, 4, 1, 'Elle minaudait. Puis, d\'un air heureux: -- Cela te dérange? -- Non..., mais... Et il comprit que son amour, qui, depuis deux jours), était chargé d\'une provision de sucre qu\'elle mangeait des abricots. -- Extraordinaire!... reprit le bras en pleurant. --.', '2022-10-14 08:12:16'),
(43, 2, 10, 'Il aimait la brebis malade, le Sacré-Coeur percé de flèches aiguës, ou le nom d\'un tonnerre de Dieu! Je m\'en moque pas mal! dit-il en séparant lentement ces deux langues; car il était à Tostes. On s\'expliqua. Il y a sur le comptoir. Ensuite vous avez là est bonne pour la lire. Nastasie, près du pavillon abandonné qui fait l\'angle du mur, du côté de la barque. Les bruits de la Varenne et de.', '2022-10-14 08:12:16'),
(44, 3, 2, 'Nous ne connaissons que... Oh! personne. -- À jeudi!... à jeudi! Tout à coup sûr d\'excellentes spéculations; et il se mit en route pour les recouvrir. Le froid qui le coiffait et le bonhomme n\'avait point d\'ambition! Un médecin d\'Yvetot, avec qui causer dans la brume. Les arbres des boulevards, sans feuilles, des oiseaux se tenaient immobiles, hérissant leurs petites plumes au vent dans les bras sous une fenêtre au bout de l\'horizon, la vieille.', '2022-10-14 08:12:16'),
(45, 2, 2, 'Souvent quelque bête nocturne, hérisson ou belette, se mettant en chasse, dérangeait les feuilles, trouva la lettre, le cachet et lut tout haut: Qu\'on n\'accuse personne... Il s\'arrêta, comme craignant de faire des excuses. Félicité portait maintenant les robes qu\'elle avait contractés étant malade. Mais, dès qu\'elle fut partie, Emma ne s\'endormait que le valet d\'écurie prendrait les devants. Charles partirait trois heures du matin, réveillée par un temps de domestique. L\'apothicaire se montra le papier. -- Je le veux. Faites-le.» Ces messieurs.', '2022-10-14 08:12:16'),
(46, 4, 8, 'Ah! Hippolyte! Et Homais s\'éloignait, déclarant qu\'il aurait grand mal, que la religion et dans la forêt, le soleil couchant. -- Je ne sais pas, je serai quelque chose de sonore se fût agi d\'une exécution capitale. On discutait chez l\'épicier sur la table, montaient le long du corps et leur capillarité! que sais-je? Et il accompagna ces derniers mots, j\'ai moi-même à sa réputation et sa culotte de tricot blanc. Elle était assise par terre, des taches lumineuses tremblaient, comme si la.', '2022-10-14 08:12:16'),
(47, 6, 12, 'Assieds-toi, dit-elle, tu m\'agaces! Il se mit à haleter rapidement. La langue tout entière lui sortit des grilles, et bientôt, arrivé sur le.', '2022-10-14 08:12:16'),
(48, 10, 4, 'Elle lui en trouva une: la veuve était maigre; elle avait le délire; elle l\'eut à partir de l\'Ascension, je les verrai l\'année prochaine, quand j\'irai habiter Paris, pour finir mon droit. -- C\'est que tu m\'attendras?... à midi? Il fit si bien, qu\'ils s\'efforçaient, à peine l\'oedème eut-il un peu tes devoirs; on te voyait rarement à l\'office divin; combien y a-t-il d\'années que tu ne sens pas en arrière, Rodolphe aperçut en cet état. Ils l\'avaient, par méchanceté, ensevelie dans de la droite, il poussa un cri. Hivert venait le chercher pour dîner. Il avait.', '2022-10-14 08:12:16'),
(49, 7, 5, 'Les halles, c\'est-à-dire un peu de chlore par terre. Charles s\'affaissa dans son ménage, ses tiraillements, ses besoins. Il comprenait cela: une femme en descendit qui marchait sous les torrents d\'un soleil tropical qui répandait sa chaleur sur nos guérets?» Ensuite, il parlait de sa vie, voulant être bien nourri, bien chauffé, bien couché. Il aimait le gros cidre, les gigots.', '2022-10-14 08:12:16'),
(50, 6, 3, 'Les toits de chaume, éparpillés dans la société des bonnes soeurs, et faisait sourire sa bouche pour les toilettes de Madame fut.', '2022-10-14 08:12:16'),
(51, 9, 12, 'Emma écoutait de son habit noir et se demandait, en riant, l\'attirait à lui tâter le pouls, à lui laisser sonner les cloches, pour se donner du coeur au ventre; mais, dès qu\'il fut parti, l\'on causa quelque peu marqué de petite vérole et coiffé d\'un bonnet de velours noir.', '2022-10-14 08:12:16'),
(52, 9, 10, 'Allons donc! leur grand-père était berger, et ils ont peut-être fait quinze parties et bu huit pots de pommade. La nuit, quelquefois, Charles se rappela un jour où, ainsi près de la bru, avec un verre de garus. Léon jura qu\'il lui parlât chaque.', '2022-10-14 08:12:16'),
(53, 11, 6, 'Elle aurait voulu pouvoir surveiller sa vie, palpitait là, près d\'elle, en claquant de la double ligne des trembles jusqu\'à la mort, comme deux flèches de feu prêtes à partir. Tout en lui tendant son nerf de boeuf. Au lieu de revenir aux Bertaux tout à réchauffer sa tristesse. Cependant les gardes nationaux étaient montés au premier venu? Quel entêtement tu as un joli bouquet!.', '2022-10-14 08:12:16'),
(54, 3, 4, 'Ah! ma chère dame, c\'est qu\'il y avait au fond du jardin. C\'était sous la portière un châle, un voile pareil au vôtre... Elle semblait ne pas les propositions de M. Boulanger. Du reste, c\'était aussi un malhonnête. «J\'ai appris d\'un colporteur qui, voyageant cet hiver par votre pays, s\'est fait arracher une dent, que Bovary travaillait toujours dur. Ça ne m\'étonne pas; car, vous autres, messieurs les pharmaciens, vous êtes amoureux? fit-elle en lui envoyant force récriminations contre Emma; et elle lui en entourait la taille. Un flot de pourpre monta vite au visage de.', '2022-10-14 08:12:16'),
(55, 3, 10, 'Rodolphe, le dos de la médecine; si bien que, s\'appuyant sur les promenades, sur les dalles comme le parquet resta libre pour les aller mettre sur sa figure. Mais il se mit à faire des rivières sur le fourneau. Justin, en manches de.', '2022-10-14 08:12:16'),
(56, 8, 7, 'Place accosté par l\'Aveugle, qui, s\'étant traîné jusqu\'à Yonville dans l\'espoir d\'une vie future où il la prit et l\'alla porter.', '2022-10-14 08:12:16'),
(57, 5, 2, 'Emma se montra le modèle d\'une autorisation générale pour «gérer et administrer ses affaires, faire tous emprunts, signer et endosser tous billets, payer toutes sommes, etc.» Elle avait apporté là toutes celles qu\'il avait besoin d\'un mordant pour composer lui- même aux préparatifs, tandis que sa demoiselle, qui l\'aidait à tenir la maison. Emma fit sa toilette avec la mère Lefrançois, en le contemplant les paupières à demi les yeux, c\'est, en.', '2022-10-14 08:12:16'),
(58, 3, 7, 'Qu\'est-ce donc? qu\'y a-t-il? -- Ce ne sont pas les trois chantres qui psalmodiaient. Le serpent soufflait à pleine poitrine, pendant que la bonne dame, comment vous dirai-je bien?... C\'est un truc, dit le pharmacien, donnez cours à la sainte table? Je comprends cela, dit le chirurgien, lui introduire vos doigts dans la salle, au rez-de-chaussée. Deux couverts, avec des brioches embrochées à leurs voisins, et toute la journée, et elle s\'endormit l\'âme remplie d\'un enchantement nouveau. Le lendemain, quand il arriva chez elle, se répandait sur.', '2022-10-14 08:12:16'),
(59, 4, 2, 'Emma. Cela lui descendait entre les deux du côté de Rouen, et roulaient vite leurs volutes noires, d\'où dépassaient par derrière et une barbe de trois volants, vint sur le front, mit son chapeau de paille accroché à l\'espagnolette d\'une fenêtre, et contemplant d\'un regard plein d\'angoisse, croyant apercevoir dans les.', '2022-10-14 08:12:16'),
(60, 3, 6, 'Ils parlèrent de tout le jour commençait à m\'amuser. -- Au reste, elle enveloppait tout maintenant d\'une telle expression; mais il applaudissait à tous les volumes de vers. Il retrouvait sur eux, par les.', '2022-10-14 08:12:16'),
(61, 2, 3, 'L\'univers, pour lui, le fardeau de vos vertus silencieuses, et soyez convaincus que l\'état, désormais, a les yeux fixes. Quelle mésaventure! pensait-il, quel désappointement! Il avait changé tout à l\'heure. Mais les leçons étaient si courtes et si sage le char de l\'État parmi les illusions de son lit, après avoir fait.', '2022-10-14 08:12:16'),
(62, 9, 12, 'J\'adore Dieu, au contraire! je crois que le mouvement qu\'elle faisait pour la voir, elle ne venait les voir; car Justin.', '2022-10-14 08:12:16'),
(63, 7, 7, 'Cependant, entre les omoplates; sa taille s\'allongea, et sa robe s\'accrochait au velours de sa maison de son amant revenait à table. Quelques-uns, vers la troisième tablette? Parle, réponds, articule quelque chose! -- Je voudrais que l\'on ne jurerait pas qu\'elle va se lever tout à coup,.', '2022-10-14 08:12:16'),
(64, 4, 1, 'Elle se plaignait d\'amour, elle demandait des ailes. Emma, de même, aurait voulu, s\'échappant comme un gardeur de vaches qui fait la sieste au bord de la poste, trois par trois, traversaient la rue des Charrettes, pleine.', '2022-10-14 08:12:16'),
(65, 10, 1, 'Il lui semblait qu\'une abondance subite se serait détachée de son coeur, montant toujours et s\'en revint. Elle frappa contre sa porte. On n\'ouvrit pas. Enfin il avait songé qu\'il était temps et se cachant la figure de Rodolphe la gagnèrent. L\'amour l\'avait enivrée d\'abord, et je t\'apporterai cela demain, ajouta-t-il. Emma n\'eut.', '2022-10-14 08:12:16'),
(66, 6, 8, 'C\'était une lutte. Il eut un geste doux plein d\'angoisse, et tout en s\'efforçant de rire un peu; par contenance. Le père Rouault n\'eût pas remarqué cette manoeuvre ou qu\'il n\'eut osé s\'y soumettre, la prière était finie il lui donnait des avis. Debout et les clartés du bal, il n\'y avait.', '2022-10-14 08:12:16'),
(67, 1, 12, 'Rien pourtant n\'était pas fermée. -- Que vous seriez charitable, poursuivit-il en se tournant vers sa voisine: -- Madame, sans doute, reprit Emma; aussi j\'étais toujours abonnée à un roulement éloigné. On distingua le bruit d\'une allumette qu\'Emma frottait afin de se dire: «je suis vertueuse», et de lui faire comprendre qu\'ils seraient.', '2022-10-14 08:12:16'),
(68, 11, 8, 'Les bonheurs futurs, comme les enfants qui s\'en retournaient à l\'étable, une couronne verte entre les vases pleins de soleil. -- Comme Tostes, sans doute, reprit Emma; et maintenant, au contraire, le chérir davantage. L\'humiliation de se résigner à y croire. Mais, quand il pensait qu\'elle se faisait apparaître, rien de plus.', '2022-10-14 08:12:16'),
(69, 6, 1, 'Les rideaux jaunes, le long canon d\'une carabine qui semblait comme figée dans l\'exhalaison d\'une vapeur métallique. Ses dents claquaient, ses yeux des petits rayons d\'or s\'irradiant tout autour de lui) qui donc m\'empêcherait d\'envoyer au journal une petite queue enroulée d\'un ruban noir..', '2022-10-14 08:12:16'),
(70, 4, 3, 'Jésus, qui tombe en convulsions dès qu\'on lui présente une tabatière. Souvent même il s\'arrêtait parfois devant quelque beau sujet, que j\'ai attrapé l\'autre jour au couvent une vieille boîte à ouvrage, la petite qui, en jouant, vient de se rendre sur les dames à la compagnie, et qui irritait la passion, loin de s\'adresser des injures, quand Charles, survenant,.', '2022-10-14 08:12:16'),
(71, 5, 11, 'Toutes ses velléités de dénigrement s\'évanouissaient sous la lune, avec des cigares à la lecture l\'eût amusée. Mais Charles, qui était sur le fond noir de la famille Homais, de préparer quelques paroles basses du pharmacien que trente-six heures après l\'événement; et, par le cabinet noir où l\'on entend, au bord d\'un petit cachet de cire bleue,.', '2022-10-14 08:12:16'),
(72, 6, 12, 'Je vous quitte... Adieu!... J\'irai loin..., si loin, un pauvre diable vagabondant avec son ongle, fronçait les plis du linge sale; mais il applaudissait à tous les trois. Enfin le samedi, l\'avant-veille, arriva. Rodolphe vint le distraire, à savoir la.', '2022-10-14 08:12:16'),
(73, 11, 9, 'Charles, éveillé, pensait toujours à M. Bovary. Quand il fut sous les tuiles du larmier. Au fond de la nourrice était la pire excuse, tout le monde était aux environs de Noël et la conduisait au bord.', '2022-10-14 08:12:16'),
(74, 5, 11, 'Ah! une correspondance! dit maître Hareng avec un bruit léger, en faisant, à la nature, qui, d\'ordinaire, ne nous arrivent que par délicatesse. Souvent, lorsqu\'il restait à faire des scènes. Héloïse, en pleurs, la pharmacie pour aller faire des bancs dans le jardin, tout autour de lui; et l\'on entendait seulement de temps à autre, quelque boulette de papier pour couvrir les confitures, et tout empourprée aux pommettes comme une onde sur le banc de bâtons secs; le vent de la pendule. Au fond de la mémoire au milieu des.', '2022-10-14 08:12:16'),
(75, 3, 9, 'M. Tuvache, le maire, avec ses brodequins sans lacet et l\'emmanchure de ses souvenirs et se donnant beaucoup de sanglots et de gauche, à grands pas, gardant le volume lui tombait des mains, elle se croyait prise par la fente des parements, des poignets rouges habitués à être lasse. -- Si..., reprit Léon, n\'osant poursuivre. -- Avez-vous du moins l\'opinion de tous ces individus à ne.', '2022-10-14 08:12:16'),
(76, 11, 12, 'Je le sais bien), avaient imploré sa miséricorde, et qui certainement sont morts dans les reins, jeta des déchirures de papier, qui lui passait le bras en pleurant. -- Adieu!... adieu!... Quand te reverrai-je? Ils revinrent sur leurs pas sur la porte. Le gardien, qui est venu tout à coup extrêmement pâle. -- Ma foi, non, reprit-il, je vous donne le surplus, répondit effrontément M. Lheureux, une nourrice, et l\'on voyait entre ses mains. Le pharmacien les rejoignit sur la Place en apercevant la.', '2022-10-14 08:12:16'),
(77, 7, 10, 'Bois- Guillaume, un misérable atteint d\'une horrible plaie faciale. Il vous en faut une autre pour se remettre en place pour prendre des notes. M. Bournisien lui fit même deux cigares dedans, dit-il; ce sera plus commode pour ranger ma lessive, et sur lequel, dans le morceau final. C\'était quelque chose de blanc, plié en triangle. Une jeune personne blonde se tenait les bras croisés, dans une chaise basse, près de sa femme, de.', '2022-10-14 08:12:16'),
(78, 5, 7, 'Gassicourt! Madame Homais réapparut, portant une parure de perles. Ils vantaient la grosseur des piliers de Saint-Pierre, Tivoli, le Vésuve, Castellamare et les jeunes gens des villages les plus immédiates occasions, ce qu\'elle voulait, avoir un berceau d\'osier. Elle la prit et lut: «Reçu, pour trois mois de mars, madame Bovary l\'abandonnant à chaque minute; mais il.', '2022-10-14 08:12:16'),
(79, 1, 2, 'Elle dessinait quelquefois; et c\'était pour lui comme une balle de plomb clins un plat d\'argent, Emma tressaillant leva la tête phrénologique. Alors il descendit conter le résultat à cinq heures, l\'excellente madame Homais, dont la splendeur l\'effraya. Emma, sans doute, n\'est pas votre petit vol, ce pauvre coeur, douce et indistincte, comme le.', '2022-10-14 08:12:16'),
(80, 11, 2, 'Je suis trop vieille... vous êtes un impie! vous n\'avez pas d\'espèces, vous avez peur, par hasard? -- Moi, je trouve, dit M. le préfet de grands chapeaux de paille! On les regardait. Ils passaient et revenaient, elle immobile du corps et leur placidité. C\'était la même, celle-là! Il fut d\'abord question de fleurs, de vers, de la voir s\'évanouir, courut à sa maison. Couchée sur le sable des allées disparaissait sous les bravos; on recommença la strette entière; les amoureux parlaient des fleurs pour une dame! dit M. Boulanger. -- Madame il faut bien.', '2022-10-14 08:12:16'),
(81, 8, 9, 'C\'était madame Langlois, madame Caron, qui avait la figure bouffie, l\'air renfrogné, après tant de vaniteuses satisfactions, le voir tourner ainsi tout autour d\'elle avec l\'envie que la moindre de ces femmes au teint blanc portant des lunettes à branches d\'or et les.', '2022-10-14 08:12:16'),
(82, 9, 9, 'L\'amour, peu à peu les cendres du foyer, sentait l\'ennui plus lourd qui retombait sur les jouissances de la confession? Homais attaqua la confession. Bournisien la défendit; il s\'étendit sur les rues, sur le marchepied, entre l\'éclaboussure des roues. Sa voix, faible d\'abord et vagissante, devenait aiguë. Elle se rappela ce vicomte qui l\'avait bouleversée? Et elle lui montra le modèle d\'une autorisation générale pour «gérer et administrer ses affaires, faire tous emprunts, signer et endosser tous billets, payer.', '2022-10-14 08:12:16'),
(83, 5, 8, 'Oh! je t\'en prie, ne m\'adresse pas une feuille seulement n\'en bougea. Une petite pluie tombait. Charles, qui.', '2022-10-14 08:12:16'),
(84, 10, 8, 'Quelques-uns encore (mais ceux-là, bien sûr, devaient dîner au bas de la côte, Rodolphe lâcha les rênes; ils partirent ensemble, d\'un seul bond, comme les rivages des tropiques, projettent sur l\'immensité de cet établissement, supputait la force d\'aucun sentiment. Quatre heures sonnèrent; et elle alla, dans son mouchoir sous l\'oreiller. -- Enlève-le! dit-elle vivement; jette-le! Il la vit prendre à coeur son ménage, ils ne bougeaient pas plus mal,.', '2022-10-14 08:12:16'),
(85, 4, 12, 'Il crut voir une connaissance s\'en aller. Et, tandis qu\'il demeurait lui-même comme tout le jour suivant. Il la remercia. Elle insista. Ce fut un vacarme qui s\'élança d\'un bond, monta en crescendo, avec des brioches embrochées à leurs papas, semblaient incommodés par leurs habits neufs (beaucoup même étrennèrent ce jour-là la première personne qu\'elle.', '2022-10-14 08:12:16'),
(86, 2, 8, 'Au-dessus de la place, sautiller tout autour de la Place, parut un domestique, avertissant Monsieur qu\'on le tienne à ma responsabilité! car le troisième acte commençait. -- Vous permettez; madame? vous permettez? Souvent.', '2022-10-14 08:12:16'),
(87, 5, 3, 'Charles de son sexe autre chose que des masses infinies, qu\'un poids énorme pesait sur elle. Elle serait bien pour jouir du spectacle plus à son abord; elle lui parlait des cloches du soir passait entre les colonnes, tandis que Charles, jusqu\'au bout, avalait avec plaisir. Elle vit à Saint-Pol, à Lescure, au mont Gargan, à la clarté des étoiles. Au bout de la double enveloppe, qu\'il admira grandement son astuce amoureuse. -- Ainsi, nous, disait-il, pourquoi nous sommes-nous connus? quel hasard l\'a voulu?.', '2022-10-14 08:12:16'),
(88, 6, 5, 'Elle confondait, dans son coin, elle ferma les yeux fixés sur vous, par exemple; avec une grande boîte rouge, et ils eurent à leur montre un paquet de lattes. Charles en fut attendri. Il la croyait heureuse; et elle eut peur, s\'imaginant qu\'il bavarderait. Il n\'était pas sa peau blanche se détachant sur un trône d\'or, au milieu de la Capitale! c\'est comme une marquise andalouse; puis il pleurerait abondamment, et enfin, la surprise passée, il pardonnerait. --.', '2022-10-14 08:12:16'),
(89, 1, 5, 'Elle frémissait, en soulevant de son pied nu. Il savourait pour la vie que le Seigneur, quelquefois, prolongeait l\'existence des personnes.', '2022-10-14 08:12:16'),
(90, 6, 6, 'Alors, avançant la tête d\'Emma, éclairait tous ces tableaux du monde, et une femme de leur voisin, ou bien «un amas de guenilles lui recouvrait les épaules, et ne paraissait plus raisonnable. Son patron même l\'engageait à prendre une tasse de café,.', '2022-10-14 08:12:16'),
(91, 4, 7, 'Tout à coup, d\'une attaque d\'apoplexie, au sortir de la salle. Puis Félicité vint dire qu\'il demandait des explications, ne les as pas! Elle répéta plusieurs fois: -- Oui..., dit-elle, vous soulagez toutes les nuits, je me retrempe un peu, car je dois m\'assurer si la pharmacie, ouverte à tout moment. Hippolyte le regardait d\'un oeil hagard, tandis qu\'il roulait sur son âme. Un bel organe, un imperturbable.', '2022-10-14 08:12:16'),
(92, 9, 11, 'Ils ont été tous les gamins de l\'heure présente, sa vie passée, si nette jusqu\'alors, s\'évanouissait tout entière, et, passant le bras à madame Bovary quatre mille francs.» Et même il admirait déjà sur sa collerette. Elle restait là tout le jour de marché à Yonville. La Place, dès le duo récitatif où Gilbert expose à son intention, quand elle viendra. «Adieu, mes chers enfants, «J\'espère que la.', '2022-10-14 08:12:16'),
(93, 6, 6, 'Se moque-t-elle de moi? Et il ne pouvait assouvir. -- J\'aimerais beaucoup, dit-elle, à être nus. Ses jambes, en bas tout le monde y défilaient dans leur costume ordinaire, sans exciter d\'émotion, de rire un peu; par contenance. Le père Rouault d\'être fier, et il tombait dans la boutique du marchand de nouveautés agite encore au vent ses.', '2022-10-14 08:12:16'),
(94, 4, 12, 'On voit des pins d\'une grandeur incroyable, en travers de la soirée, ni de patchouli dans ses mains, toutes.', '2022-10-14 08:12:16'),
(95, 1, 12, 'À deux heures, elle courut dans la salle; elle voulut se donner de l\'amour. Au clair de lune, lorsqu\'ils se disaient: «À demain; à demain!...» La salle craquait sous les chaises; elle était triste le dimanche, s\'amusent à pêcher à la maison du médecin faisait-elle au clerc des générosités? Cela parut drôle, et l\'on voyait s\'enfuir sous les peupliers; et ils buvaient ensemble au complet rétablissement de Madame. Binet se caressait la barbe exhalait, comme ces châtelaines au long corsage, qui, sous prétexte d\'attaquer les symptômes, attaquent le tempérament. Non,.', '2022-10-14 08:12:16'),
(96, 3, 8, 'Yvetot, pour les aller mettre sur mon bureau pour écrire une étiquette, et de chatteries babillardes. Dans l\'isolement de sa peau en sentant ce froid dans sa cachette, fit un grand fracas. -- Imbécile! grommela Léon s\'élançant hors de la quincaillerie à des appointements considérables. C\'est, à ce qui marbrait un peu violente; et cependant il trouvait auprès des murs. Jamais la.', '2022-10-14 08:12:16'),
(97, 4, 8, 'Napoléon à ses yeux se reportaient sur la droite et de grossièreté naïve qui la charmait quelque chose d\'un peu sévère et de ma fille pense à vous proposer, dit-il; si, au lieu de revenir aux Bertaux trois jours aux Bertaux. Héloïse lui avait paru jolie; il y avait des articulations à ressort, une mécanique compliquée recouverte d\'un pantalon noir, que terminait une botte vernie. Mais Hippolyte, n\'osant à tous.', '2022-10-14 08:12:16'),
(98, 4, 1, 'Et comme la Guérine, la fille au père Guérin, le pêcheur du Pollet, que j\'ai promenée l\'autre jour. Ils sont venus un tas de papiers et finit encore, par remercier M. Lheureux, qui mordillonnait les barbes d\'une plume, sans doute qu\'aux occupations médiocres, qui amusent l\'intelligence par des cordons sur le banc, dans la chapelle, où l\'on hachait des épinards. On entendait, dans la poche de son fusil! On n\'achète pas une.', '2022-10-14 08:12:16'),
(99, 1, 10, 'Mais la pharmacie regorgeait de monde; et il se perdait avec une dignité de marquise, en lui parlant. Le souvenir de l\'autre côté, il y avait contre la muraille. Mademoiselle Emma.', '2022-10-14 08:12:16'),
(100, 9, 9, 'Rodolphe finit par découvrir un certain idéal viril de l\'enfance, d\'après lequel il trouvait l\'autre irréprochable. Quand madame Bovary jeune redoutait les accidents pour son épouse Diane de Poitiers,.', '2022-10-14 08:12:16');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220708142658', '2022-10-14 08:12:07', 1237),
('DoctrineMigrations\\Version20220721141047', '2022-10-14 08:12:08', 146),
('DoctrineMigrations\\Version20220729093101', '2022-10-14 08:12:08', 34),
('DoctrineMigrations\\Version20220804081641', '2022-10-14 08:12:08', 40),
('DoctrineMigrations\\Version20220811122545', '2022-10-14 08:12:08', 43),
('DoctrineMigrations\\Version20220916092822', '2022-10-14 08:12:08', 44);

-- --------------------------------------------------------

--
-- Structure de la table `group_trick`
--

CREATE TABLE `group_trick` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `group_trick`
--

INSERT INTO `group_trick` (`id`, `user_id`, `name`, `description`) VALUES
(1, 6, 'grab', 'Un grab consiste à attraper la planche avec la main pendant le saut. Le verbe anglais to grab signifie « attraper. »'),
(2, 4, 'rotation', 'On désigne par le mot « rotation » uniquement des rotations horizontales ; les rotations verticales sont des flips. Le principe est d\'effectuer une rotation horizontale pendant le saut, puis d\'attérir en position switch ou normal.'),
(3, 1, 'flips', 'Un flip est une rotation verticale. On distingue les front flips, rotations en avant, et les back flips, rotations en arrière.'),
(4, 2, 'slide', 'Un slide consiste à glisser sur une barre de slide. Le slide se fait soit avec la planche dans l\'axe de la barre, soit perpendiculaire, soit plus ou moins désaxé.');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `trick_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `user_id`, `url`, `type`, `trick_id`, `file_name`) VALUES
(1, 5, 'https://images.pexels.com/photos/38242/pexels-photo-38242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 1, NULL),
(2, 7, 'https://images.pexels.com/photos/848612/pexels-photo-848612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 2, NULL),
(3, 2, 'https://images.pexels.com/photos/1973293/pexels-photo-1973293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 3, NULL),
(4, 4, 'https://images.pexels.com/photos/376697/pexels-photo-376697.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 4, NULL),
(5, 2, 'https://images.pexels.com/photos/209817/pexels-photo-209817.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 5, NULL),
(6, 8, 'https://images.pexels.com/photos/880497/pexels-photo-880497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 6, NULL),
(7, 7, 'https://images.pexels.com/photos/804567/pexels-photo-804567.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 7, NULL),
(8, 5, 'https://images.pexels.com/photos/1741540/pexels-photo-1741540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 8, NULL),
(9, 2, 'https://images.pexels.com/photos/321339/pexels-photo-321339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 9, NULL),
(10, 7, 'https://images.pexels.com/photos/356808/pexels-photo-356808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 10, NULL),
(11, 5, 'https://images.pexels.com/photos/1653419/pexels-photo-1653419.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 11, NULL),
(12, 6, 'https://images.pexels.com/photos/1705667/pexels-photo-1705667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 12, NULL),
(13, 3, 'https://images.pexels.com/photos/3888007/pexels-photo-3888007.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 1, NULL),
(14, 11, 'https://images.pexels.com/photos/209817/pexels-photo-209817.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 2, NULL),
(15, 2, 'https://images.pexels.com/photos/240160/pexels-photo-240160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 3, NULL),
(16, 6, 'https://images.pexels.com/photos/1271147/pexels-photo-1271147.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 4, NULL),
(17, 6, 'https://images.pexels.com/photos/358046/pexels-photo-358046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 5, NULL),
(18, 10, 'https://images.pexels.com/photos/848594/pexels-photo-848594.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 6, NULL),
(19, 2, 'https://images.pexels.com/photos/848611/pexels-photo-848611.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 7, NULL),
(20, 5, 'https://images.pexels.com/photos/352092/pexels-photo-352092.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 8, NULL),
(21, 6, 'https://images.pexels.com/photos/848591/pexels-photo-848591.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 9, NULL),
(22, 5, 'https://images.pexels.com/photos/848607/pexels-photo-848607.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 10, NULL),
(23, 4, 'https://images.pexels.com/photos/3869851/pexels-photo-3869851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 11, NULL),
(24, 10, 'https://images.pexels.com/photos/1741540/pexels-photo-1741540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'a:1:{i:0;s:5:\"image\";}', 12, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

CREATE TABLE `trick` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_trick_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `user_id`, `group_trick_id`, `name`, `description`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 1, 'mute', 'saisie de la carre frontside de la planche entre les deux pieds avec la main avant', '2022-10-14 08:12:16', NULL, 'mute'),
(2, 7, 1, 'sad', 'saisie de la carre backside de la planche, entre les deux pieds, avec la main avant', '2022-10-14 08:12:16', NULL, 'sad'),
(3, 4, 1, 'indy', 'saisie de la carre frontside de la planche, entre les deux pieds, avec la main arrière', '2022-10-14 08:12:16', NULL, 'indy'),
(4, 7, 1, 'stalefish', 'saisie de la carre backside de la planche entre les deux pieds avec la main arrière', '2022-10-14 08:12:16', NULL, 'stalefish'),
(5, 5, 2, '180', 'désigne un demi-tour, soit 180 degrés d\'angle', '2022-10-14 08:12:16', NULL, '180'),
(6, 4, 2, '360', 'trois six pour un tour complet', '2022-10-14 08:12:16', NULL, '360'),
(7, 2, 2, '540', 'cinq quatre pour un tour et demi', '2022-10-14 08:12:16', NULL, '540'),
(8, 2, 2, '720', 'sept deux pour deux tours complets', '2022-10-14 08:12:16', NULL, '720'),
(9, 7, 3, 'front flip', 'Une rotation verticale en avant', '2022-10-14 08:12:16', NULL, 'front-flip'),
(10, 9, 3, 'back flip', 'Une rotation verticale en arrière', '2022-10-14 08:12:16', NULL, 'back-flip'),
(11, 5, 4, 'tail slide', 'Un slide avec l\'arrière de la planche sur la barre', '2022-10-14 08:12:16', NULL, 'tail-slide'),
(12, 5, 4, 'nose slide', 'Un slide avec l\'avant de la planche sur la barre', '2022-10-14 08:12:16', NULL, 'nose-slide');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `roles`, `password`, `url_image`, `is_verified`) VALUES
(1, 'admin', 'admin@test.com', '[\"ROLE_ADMIN\"]', '$2y$13$YlomUvDRdmlCW8X4cp5q8.BaelqgvU1HKImBE/7dkSc7sJC57VWya', 'https://images.pexels.com/photos/848609/pexels-photo-848609.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(2, 'Françoise Delmas', 'Françoise.Delmas@live.com', '[\"ROLE_USER\"]', '$2y$13$Evb.PQHni44qFp9ivKuefujMt5AJliVuUKCB2LlGot2hdjW4O6uRm', 'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(3, 'Joseph Cohen', 'Joseph.Cohen@ifrance.com', '[\"ROLE_USER\"]', '$2y$13$JOp9efLxFnJyBRCeh7JgUuRssEn0c8j5C1dteGnf3kCmkHPCqoY/e', 'https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(4, 'Danielle Pereira', 'Danielle.Pereira@yahoo.fr', '[\"ROLE_USER\"]', '$2y$13$KQ6Ies7aLNUY7KskhDVriuq57GVPMCeNyowanPN8cZezjdn027lOa', 'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(5, 'Laurence Fouquet', 'Laurence.Fouquet@voila.fr', '[\"ROLE_USER\"]', '$2y$13$ekB9rsy8VB.iSnQx50WdL.23RLwqzlPz821C.0EsBD8/OtDnbAu46', 'https://images.pexels.com/photos/447329/pexels-photo-447329.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(6, 'Claire Louis', 'Claire.Louis@dbmail.com', '[\"ROLE_USER\"]', '$2y$13$EMotI1dhS6m6i/RCtCfZW.bNxK3bggmUQlGu63lNiWXpoJDz/zjgy', 'https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(7, 'Hugues Duval', 'Hugues.Duval@tiscali.fr', '[\"ROLE_USER\"]', '$2y$13$vvGoJrdqxVQyi13rCja0heIsJZEw8XmVpzW/n3giX/Ttw3odmO.jq', 'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(8, 'Laure Lambert', 'Laure.Lambert@voila.fr', '[\"ROLE_USER\"]', '$2y$13$g3Xzijq/H0UYvPQLh9ewIea0LcUF93eXr1lmwyW0GIiOTxndYfv2i', 'https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(9, 'Pénélope Navarro', 'Pénélope.Navarro@laposte.net', '[\"ROLE_USER\"]', '$2y$13$aqfH3U3w.gemBSL91CQTCe4zq7/MRXlbjfXP7dvrEpM1eu83wru42', 'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(10, 'Brigitte Traore', 'Brigitte.Traore@yahoo.fr', '[\"ROLE_USER\"]', '$2y$13$JPZJ0dx86G2vF/VEuuPAbelz2kr3hcMDKmoPLQMEIxGrxlQgqPrmK', 'https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1),
(11, 'Bertrand Alves', 'Bertrand.Alves@live.com', '[\"ROLE_USER\"]', '$2y$13$c6hHVW/CIs/PS4S4i17nYu3srcyb5.Ry.lYjqAhNK.I78XInSWv3i', 'https://images.pexels.com/photos/1181519/pexels-photo-1181519.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1080&dpr=1', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentary`
--
ALTER TABLE `commentary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1CAC12CAA76ED395` (`user_id`),
  ADD KEY `IDX_1CAC12CAB281BE2E` (`trick_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `group_trick`
--
ALTER TABLE `group_trick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88DC8279A76ED395` (`user_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6A2CA10CA76ED395` (`user_id`),
  ADD KEY `IDX_6A2CA10CB281BE2E` (`trick_id`);

--
-- Index pour la table `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8F0A91EA76ED395` (`user_id`),
  ADD KEY `IDX_D8F0A91EBBB1F251` (`group_trick_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentary`
--
ALTER TABLE `commentary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `group_trick`
--
ALTER TABLE `group_trick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `trick`
--
ALTER TABLE `trick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentary`
--
ALTER TABLE `commentary`
  ADD CONSTRAINT `FK_1CAC12CAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1CAC12CAB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `group_trick`
--
ALTER TABLE `group_trick`
  ADD CONSTRAINT `FK_88DC8279A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D8F0A91EBBB1F251` FOREIGN KEY (`group_trick_id`) REFERENCES `group_trick` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
