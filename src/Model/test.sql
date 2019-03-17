
--UPDATE Variantes_Articles set descriptionVarianteEN = REPLACE(descriptionVarianteEN, "\'", "\\'");

-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Ven 08 Mars 2019 à 10:45
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `ftfi_site_v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE `Admin` (
  `idUtilisateur` int(11) NOT NULL,
  `matricule` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Admin`
--

INSERT INTO `Admin` (`idUtilisateur`, `matricule`) VALUES
(1, 'Mg'),
(2, 'Mm'),
(3, 'Ld');

-- --------------------------------------------------------

--
-- Structure de la table `ajouter`
--

CREATE TABLE `ajouter` (
  `idFacture` int(11) NOT NULL,
  `refCommercial` varchar(25) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ajouter`
--

INSERT INTO `ajouter` (`idFacture`, `refCommercial`, `quantite`) VALUES
(1, '11525', 2),
(2, '2072-002', 1),
(29, '11525', 1),
(30, '11525', 2),
(31, 'APC-FN1', 1),
(32, 'ARC-ACAJOU4', 1),
(33, '11525', 1),
(33, 'COUT-P-ACAC', 1),
(36, '80-016', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `idArticle` int(11) NOT NULL,
  `nomArticleFR` varchar(100) NOT NULL,
  `nomArticleEN` varchar(100) NOT NULL,
  `descriptionArticleFR` text NOT NULL,
  `descriptionArticleEN` text NOT NULL,
  `idSousCategorie` int(11) NOT NULL,
  `idFournisseur` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Articles`
--

INSERT INTO `Articles` (`idArticle`, `nomArticleFR`, `nomArticleEN`, `descriptionArticleFR`, `descriptionArticleEN`, `idSousCategorie`, `idFournisseur`) VALUES
(1, 'Acajou', 'Mohagany', 'Sélection de bois pour la fabrication d''ébauches de poignées d''arc ou de lames.', 'Selection of wood for making blanks of bow handles or blades.', 1, 3),
(2, 'Noyer', 'Walnut', 'Sélection de bois pour la fabrication d''ébauches de poignées d''arc ou de lames.', 'Selection of wood for making blanks of bow handles or blades.', 1, 3),
(3, 'Bois stabilisé', 'Stabilized wood', 'Notre nouvelle gamme de manches en bois stabilisé avec procédé mono-couleur ou bi-couleurs.\nLe processus consiste en l''imprégnation de monomères et d''acrylique dans le bois pour en augmenter la durabilité et le mettre en valeur.\nUne fois ceci effectué, le bois n''est que peu sensible à la température, à l''humidité, aux ultraviolets, à l''eau salée ou à la plupart\ndes acides et solvants. Les blocs bi-couleurs présentent un très bel aspect et constituent le matériau le plus exclusif pour fabriquer des manches.', 'Our new range of stabilized wood handles with one-color or two-color process.\nThe process consists of impregnating monomers and acrylic into the wood to increase durability and enhance it. Once this is done, the wood is only\nslightly sensitive to temperature, humidity, ultraviolet light, salt water or most acids and solvents. The bi-color blocks have a beautiful\nappearance and are the most exclusive material for making sleeves.', 2, 3),
(4, 'Plaquettes', 'Wood plates', 'Pour la fabrication et la personnalisation de vos couteaux, nous proposons une large gamme de bois.\nTous ces bois sont préparés et vérifiés afin que leur qualité soit parfaite.\n\nNous fabriquons pour de nombreux couteliers industriels les plaquettes aux dimensions de leurs manches, n''hésitez pas à nous consulter!', 'For the manufacture and customization of your knives, we offer a wide range of wood.\nAll these woods are prepared and checked so that their quality is perfect.\n\nWe manufacture for many industrial cutters the plates to the dimensions of their sleeves, do not hesitate to consult us!', 2, 3),
(5, 'Filets et motifs', 'Nets and patterns', 'De l''artisan à l''industriel, la ''MARQUETERIE GAUTHEY'' vous propose une gamme de produits\nvariés, de fabrication standard ou spéciale.\n\nPlacages teints, naturels, bois massif, colle et accessoires pour la marqueterie…\n\nL ''utilisation de ces produits n''a de limite que votre imagination :\nmeubles, panneaux, parquets, coffrets, cadres, bijoux, instruments de musique, art de la table,\nagencement, portes, fenêtres, escaliers (hôtels, bureaux et yachts), modélisme...\n\nUtilisant des bois sélectionnés dans le monde entier, les techniciens Gauthey, tous de formation\nbois, travaillent aussi bien les bois massifs que les placages teints ou naturels tels que :\n\nBois de rose et violette\n\nébène, palissandre et citronnier\n\nAcajou, padouk, wenge, bubinga\n\nSycomore, buis, noyer, poirier etc\n\nLes filets sont vendus coupés en 2 pour des quantités inférieures à 10 pièces.\n\nA partir de 10 pièces, nous les laissons en 1m.', 'From artisan to industrialist, the ''MARQUETERIE GAUTHEY'' offers a range of productsvaried, of standard or special manufacture.\nDyed veneers, natural, solid wood, glue and accessories for marquetry ...\nThe use of these products is limited only by your imagination:\nfurniture, panels, parquet, boxes, frames, jewelry, musical instruments, tableware,\nlayout, doors, windows, stairs (hotels, offices and yachts), model building ...\nUsing selected woods around the world, Gauthey technicians, all of them trained\nwood, work both solid wood and dyed or natural veneers such as:\n\nRosewood and violet\nebony, rosewood and lemon tree\nMahogany, padouk, wenge, bubinga\nSycamore, boxwood, walnut, pear tree etc.\nThe fillets are sold cut in 2 for quantities of less than 10 pieces.\nFrom 10 pieces, we leave them in 1m.', 3, 3),
(6, 'Produits souples', 'Flexible products', 'Placages jointés de grandes dimensions.\nUn produit réalisé à partir de bois tranchés défibrés poncés et jointés sur papier.\n\nIl est possible de le vernir, de le teinter, de le cirer pour l''adapter au goût de chacun.\n\nLes dimensions du colisage étant importante, le coût de transport est majoré. ( la feuille ne fait pas 25kg )', 'Large jointed veneers.\nA product made from sanded sliced woods sanded and joined on paper.\n\nIt is possible to varnish, tint, polish to suit the taste of each.\n\nThe dimensions of the packing being important, the cost of transport is increased. (the leaf is not 25kg)', 3, 3),
(7, 'Merisier', 'Cherry', 'Nous sommes spécialistes pour la fournitures de bois pour l''artisanat d''art:\nBois pour les tourneurs, sculpteurs, luthiers, couteliers, fabricants d''arc etc....\nNous stockons plus de 120 essences de bois.\nToutes ces essences peuvent être vendus au ''kg'' ou m3 en fonction des essences et de nos disponibilités, plots, grumes...\nLes prix sont bien sûr inférieurs aux prix des bois préparés.', 'We are specialists for the supply of wood for crafts:\nWood for turners, sculptors, luthiers, cutlers, bow makers etc ....\nWe stock more than 120 wood species.\nAll these species can be sold in ''kg'' or m3 depending on the species and our availability, plots, logs ...\nPrices are of course lower than the price of prepared wood.', 4, 3),
(8, 'Pin cembro', 'Cembro pine', 'Nous sommes spécialistes pour la fournitures de bois pour l''artisanat d''art:\nBois pour les tourneurs, sculpteurs, luthiers, couteliers, fabricants d''arc etc....\nNous stockons plus de 120 essences de bois.\nToutes ces essences peuvent être vendus au ''kg'' ou m3 en fonction des essences et de nos disponibilités, plots, grumes...\nLes prix sont bien sûr inférieurs aux prix des bois préparés.', 'We are specialists for the supply of wood for crafts:\nWood for turners, sculptors, luthiers, cutlers, bow makers etc ....\nWe stock more than 120 wood species.\nAll these species can be sold in ''kg'' or m3 depending on the species and our availability, plots, logs ...\nPrices are of course lower than the price of prepared wood.', 4, 3),
(9, 'Acacia', 'Acacia', 'Nous sommes spécialistes pour la fournitures de bois pour l''artisanat d''art:\nBois pour les tourneurs, sculpteurs, luthiers, couteliers, fabricants d''arc etc....\nNous stockons plus de 120 essences de bois.\nToutes ces essences peuvent être vendus au kg ou m3 en fonction des essences et de nos disponibilités, plots, grumes...\nLes prix sont bien sûr inférieurs aux prix des bois préparés.', 'We are specialists for the supply of wood for crafts:\nWood for turners, sculptors, luthiers, cutlers, bow makers etc ....\nWe stock more than 120 wood species.\nAll these species can be sold in kg or m3 depending on the species and our availability, plots, logs ...\nPrices are of course lower than the price of prepared wood.', 5, 3),
(10, 'Caroubier', 'Carob tree', 'Nous sommes spécialistes pour la fournitures de bois pour l''artisanat d''art:\nBois pour les tourneurs, sculpteurs, luthiers, couteliers, fabricants d''arc etc....\nNous stockons plus de 120 essences de bois.\nToutes ces essences peuvent être vendus au kg ou m3 en fonction des essences et de nos disponibilités, plots, grumes...\nLes prix sont bien sûr inférieurs aux prix des bois préparés.', 'We are specialists for the supply of wood for crafts:\nWood for turners, sculptors, luthiers, cutlers, bow makers etc ....\nWe stock more than 120 wood species.\nAll these species can be sold in kg or m3 depending on the species and our availability, plots, logs ...\nPrices are of course lower than the price of prepared wood.', 5, 3),
(11, 'Pour Agraphes type 80', 'For Agraphes type 80', 'Agrafeuse pneumatique pour agrafes type 80 de 4 à 16mm.\n\nOmer modèle 80-16\nApplications: Décoration, tissus, tapisserie, fauteuils', 'Pneumatic stapler for staples type 80 from 4 to 16mm.\nOmer model 80-16\nApplications: Decoration, fabrics, upholstery, armchairs', 6, 4),
(12, 'Pour Agraphes type 90', 'For Agraphs type 90', 'Agrafeuse pneumatique pour agrafes type 90 de 20 à 40mm.\n\nAgrafeuse de menuisier.\nOmer modèle 90-40\nApplicationsF: Profilés, lattes, lambris…', 'Pneumatic stapler for staples type 90 from 20 to 40mm.Carpenter''s stapler.\n\nOmer model 90-40\nApplications: Profiles, slats, paneling ...', 6, 4),
(13, 'Cloueur pour pointe Brads jauge 16', 'Nailer for Brads tip 16 gauge', 'Avec plus de 110 ans d’expérience, Stanley Bostitch dispose du savoir-faire et des compétences qui en font le leader sur le marché des systèmes de clouage bois.\nFTFI est le premier distributeur Français des produits Stanley Bostitch.\n\nCloueur de chantier, simple et fiable pour pointes type FN droite jauge 16 de 25 à 64mm.\nNous avons ajouté la gamme spécifique au marché Anglais APC que nos confrères distribuent habituellement.', 'With more than 110 years of experience, Stanley Bostitch has the know-how and skills that make him the market leader in wood nailing systems.\n\nFTFI is the first French distributor of Stanley Bostitch products.\nField Nailer, simple and reliable for straight FN Type 16 gauge from 25 to 64mm.\n\nWe have added the specific range to the English APC market that our confreres usually distribute.', 7, 4),
(14, 'Cloueur pour aiguilles', 'Nailer for needles', 'Avec plus de 110 ans d’expérience, Stanley Bostitch dispose du savoir-faire et des compétences qui en font le leader sur le marché des systèmes de clouage bois. FTFI est le premier distributeur Français des produits Stanley Bostitch.\nCloueur pneumatique pour finettes ( aiguilles ) de 12 à 30mm.\nApplications: Fixation invisible de moulures, frises, cadres...\nNous assurons le SAV des matériels Stanley Bostitch\n\nLes cloueurs et agrafeuses STANLEY BOSTITCH vendus sur le site FTFi sont neufs et non reconditionnés, et sont aux normes CE, contrairement à certains produits vendus sur des sites concurrents. (produits importés discrétement des Etats Unis)', 'With more than 110 years of experience, Stanley Bostitch has the know-how and skills that make him the market leader in wood nailing systems. FTFI is the first French distributor of Stanley Bostitch products.\nPneumatic nailer for finettes (needles) from 12 to 30mm.\nApplications: Invisible fixing of moldings, friezes, frames ...\nWe provide after-sales service for Stanley Bostitch equipment\n\nThe STANLEY BOSTITCH nailers and staplers sold on the FTFi site are new and not reconditioned, and are CE-compliant, unlike some products sold on competing sites. (products imported discreetly from the United States)', 7, 4),
(15, 'Foret de centrage', 'Centering drill', '', '', 8, 4),
(16, 'Pointe de centrage', 'Centering point', 'Le système de perçage sans limites!\nLes forets Zobo système 3 sont en acier au chrome ou en carbure, du diamètre 15 au diamètre 130mm.\nLe système 3 se caractérise par un logement cylindrique au centre du foret, dans lequel on place au choix des pointes de centrage,\ndes forets de centrage ou des tenons de guidage. Ces accessoires doivent être commandés séparemment en fonction du type d''application (mèche livrée nue).', 'The limitless drilling system!Zobo System 3 drills are chrome steel or carbide, diameter 15 to 130mm diameter.\nSystem 3 is characterized by a cylindrical housing in the center of the drill, in which centering points, centering drills or guide pins are available.\nThese accessories must be ordered separately according to the type of application (wick delivered bare).', 8, 4),
(17, 'Ebauchoirs', 'Chisels', 'Ebauchoirs de fabrication Française', 'French manufacture brooms', 9, 4),
(18, 'Essette et haches', 'Essette and axes', '', '', 9, 4),
(19, 'Bigboy', 'Bigboy', 'La scie japonaise de référence des charpentiers et des couvreurs. 350 millimètres de denture japonaise pour effectuer facilement et proprement les plus gros sciages, même ceux de charpente ! La scie ''Bigboy'' est une scie pliable de grande dimension et à très fort rendement, elle convient aussi au débit de bois verts (préparation de bois de tournage, etc.). En position pliée, la denture est parfaitement protégée dans le manche.\n\n\nL''originalité des lames de scie SILKY:\n\nLa voie* des scies traditionnelles est formée par une torsion alternée des dents à droite puis à gauche de la lame. Les scies Silky, elles, ne sont pas avoyées ; la voie est alors créée par un épaississement progressif du corps de lame au niveau de la denture. Les dents sont donc formées à l''intérieur de la lame et toutes sont donc parfaitement alignées entre elles, sans aucun dépassement latéral. Le résultat ? Un pouvoir coupant amélioré mais surtout une qualité de surface sciée irréprochable car il se forme ainsi beaucoup moins de micro-rayures.\n\n\nLame à deux positions:\n\nCette scie offre deux positions d''ouverture de lame (avec blocage automatique de sécurité pour chacune d''entre elles) : dans l''axe du manche pour toutes les utilisations normales, ou avec le manche relevé pour les sciages dans d''autres positions ; cette fonctionnalité est particulièrement appréciée en charpente, lorsque l''on se trouve dans toutes sortes de positions.\n\n\nLes autres caractéristiques:\n\n- Travaille en tirant, évitant ainsi de tordre la lame sous l''effort et facilitant les coupes rectilignes.\n\n- Lame conçue dans un acier carbonique de type SK4 (très résistant à l''usure et peu cassant) de la meilleure qualité ; un surfaçage chromé renforce encore sa solidité et sa durabilité contre la rouille et les effets de la résine tout en réduisant les frottements.\n\n- Affûtage des dents selon trois pentes pour une redoutable efficacité de coupe : rendement, précision et netteté de la coupe sont au rendez-vous !\n\n- Tenue de coupe largement supérieure grâce à une trempe inductive des pointes de dents.\n\n- Manche en acier et muni d''un revêtement caoutchouc assurant une prise ergonomique très confortable, un excellent grip et ayant l''avantage de réduire les vibrations.\n\n- Lames remplaçables assurant la pérennité de l''outil.\n\n\nLes lames:\nLa scie est livrée d''origine avec une lame ''fine'' (4,3 dents/cm) ; une lame ''grosse'' (2,3 dents/cm) est proposée en option. La lame ''fine'' est adaptée à la réalisation des assemblages et des coupes finies, la lame ''grosse'' est parfaite pour les débits rapides.', '\nThe Japanese saw of reference of carpenters and roofers. 350 millimeters of Japanese teeth to easily and cleanly perform the largest sawn timber, even the timber! The saw ''Bigboy'' is a folding saw of great size and very high performance, it is also suitable for green wood flow (preparation of woodturning, etc.). In the folded position, the toothing is perfectly protected in the handle.\n\n\nThe originality of SILKY saw blades:\n\nThe way of traditional saws is formed by alternating twisting of the teeth to the right and left of the blade. Silky saws, they are not avoyées; the path is then created by a progressive thickening of the blade body at the level of the toothing. The teeth are formed inside the blade and all are perfectly aligned with each other, without any lateral overtaking. The result ? Cutting power improved but above all a quality sawn surface irreproachable because it forms so much less micro-scratches.\n\n\nTwo-position blade:\n\nThis saw offers two blade opening positions (with automatic safety lock for each): in the handle axis for all normal uses, or with the handle raised for sawing in other positions; this feature is particularly appreciated in framing, when one is in all sorts of positions.\n\n\nOther features:\n\n- Work by pulling, thus avoiding twisting the blade under effort and facilitating straight cuts.\n\n- Blade made of carbon steel SK4 (very wear-resistant and low brittle) of the best quality; a chrome surfacing further enhances its strength and durability against rust and resin effects while reducing friction.\n\n- Sharpening of the teeth according to three slopes for a formidable efficiency of cut: yield, precision and sharpness of the cut are at the rendezvous!\n\n- Greater cutting resistance thanks to the inductive quenching of tooth tips.\n\n- Steel handle with a rubber coating ensuring ergonomic grip very comfortable, excellent grip and having the advantage of reducing vibrations.\n\n- Replaceable blades ensure the durability of the tool.\n\n\nThe blades:\nThe saw is delivered with a thin blade (4.3 teeth / cm); a ''big'' blade (2.3 teeth / cm) is available as an option. The ''thin'' blade is suitable for making assemblies and finished cuts, the ''big'' blade is perfect for fast flows.', 10, 4),
(20, 'Pocketboy', 'Pocketboy', 'Une très solide petite scie de poche repliable qui deviendra ''à tout faire'' où que vous vous trouviez : à l''atelier et sur chantier, mais aussi partout ailleurs à l''extérieur, en forêt, au camping, à la pêche, au verger, etc.\n\n\n\nL''originalité des lames de scie SILKY:\n\nLa voie* des scies traditionnelles est formée par une torsion alternée des dents à droite puis à gauche de la lame. Les scies Silky, elles, ne sont pas avoyées ; la voie est alors créée par un épaississement progressif du corps de lame au niveau de la denture. Les dents sont donc formées à l''intérieur de la lame et toutes sont donc parfaitement alignées entre elles, sans aucun dépassement latéral. Le résultat ? Un pouvoir coupant amélioré mais surtout une qualité de surface sciée irréprochable car il se forme ainsi beaucoup moins de micro-rayures.\n\n\nLame à deux positions:\n\nCette scie offre deux positions d''ouverture de lame (avec blocage automatique de sécurité pour chacune d''entre elles) : dans l''axe du manche pour toutes les utilisations normales ou avec le manche relevé pour les sciages dans d''autres positions (au ras d''un obstacle, etc.).\n\n\nLes autres caractéristiques:\n\n- Travaille en tirant, évitant ainsi de tordre la lame sous l''effort et facilitant les coupes rectilignes.\n\n- Lame conçue dans un acier carbonique de type SK4 (très résistant à l''usure et peu cassant) de la meilleure qualité ; un surfaçage chromé renforce encore sa solidité et sa durabilité contre la rouille et les effets de la résine tout en réduisant les frottements.\n\n- Affûtage des dents selon trois pentes pour une redoutable efficacité de coupe : rendement, précision et netteté de la coupe sont au rendez-vous !\n\n- Tenue de coupe largement supérieure grâce à une trempe inductive des pointes de dents.\n\n- Manche en acier et muni d''un revêtement caoutchouc assurant une prise ergonomique très confortable, un excellent grip et ayant l''avantage de réduire les vibrations.\n\n- Lame remplaçable assurant la pérennité de l''outil.\n\n- Livrée avec un solide étui plastique rigide permettant le port à la ceinture.', 'A very solid small foldable pocket saw that will become ''to do everything'' wherever you are: in the workshop and on site, but also everywhere else outside, in the forest, camping, fishing, orchard etc.\n\n\nThe originality of SILKY saw blades:\n\nThe way of traditional saws is formed by alternating twisting of the teeth to the right and left of the blade. Silky saws, they are not avoyées; the path is then created by a progressive thickening of the blade body at the level of the toothing. The teeth are formed inside the blade and all are perfectly aligned with each other, without any lateral overtaking. The result ? Cutting power improved but above all a quality sawn surface irreproachable because it forms so much less micro-scratches.\n\n\nTwo-position blade:\n\nThis saw has two blade opening positions (with automatic safety lock for each): in the shaft axis for all normal uses or with the handle raised for sawing in other positions (at close to an obstacle, etc.).\n\n\nOther features:\n\n- Work by pulling, thus avoiding twisting the blade under effort and facilitating straight cuts.\n\n- Blade made of carbon steel SK4 (very wear-resistant and low brittle) of the best quality; a chrome surfacing further enhances its strength and durability against rust and resin effects while reducing friction.\n\n- Sharpening of the teeth according to three slopes for a formidable efficiency of cut: yield, precision and sharpness of the cut are at the rendezvous!\n\n- Greater cutting resistance thanks to the inductive quenching of tooth tips.\n\n- Steel handle with a rubber coating ensuring ergonomic grip very comfortable, excellent grip and having the advantage of reducing vibrations.\n\n- Replaceable blade ensures the durability of the tool.\n\n- Delivered with a solid hard plastic case for wearing on the belt.', 10, 4),
(21, 'Aspirateur', 'Vacuum', 'Gamme d''aspirateurs de marque Jet\n3 modèles + un système de filtration\nLe modèle DC-1100 peut être livré en tri sur demande.', 'Range of Jet brand vacuum cleaners\n3 models + a filtration system\nThe DC-1100 can be delivered in sorting on request.', 11, 4),
(22, 'Ponceuse', 'Sander', '5 modèles de ponceuses sélectionnées \nLa ponceuse de bords peut être livrée en triphasée au même prix que la monophasée.', '5 models of selected sanders\nThe edge sander can be delivered in three-phase at the same price as the single-phase.', 11, 4),
(23, 'Aspirateur', 'Vacuum', 'Large gamme d''aspirateur et d''accessoires de marque Leman\n\nLes machines sont garanties deux ans.\n\nLe système de filtration Leman ASP018 vient d''être supprimé, la solution de remplacement est le modèle AFS1000B-M de chez Jet qui est identique', 'Wide range of Leman vacuum cleaners and accessories\n\nThe machines are guaranteed for two years.\n\nThe Leman ASP018 filtration system has just been removed, the replacement solution is the model AFS1000B-M from Jet which is identical', 12, 2),
(24, 'Combine à bois', 'Wood combination', '2 combinés à bois en 250 et 310mm\nen 250mm monophasé\nen 310mm monophasé et triphasé\nLa mortaiseuse est en option', '2 combined wood in 250 and 310mm\nin 250mm single phase\nin 310mm single-phase and three-phase\nMortiser is optional', 12, 2),
(25, 'Scie à chantournet JET', 'JET Jig saw', 'Une excellente machine et de plus....avec un prix abordable.', 'An excellent machine and more .... with an affordable price.', 13, 2),
(26, 'Scie à chantourner lourde', 'Heavy coping saw', 'La scie sauteuse VariSpeed de chez Colombo est une machine professionnelle\n\noffrant des performances élevées et une très grande précision de coupe.\n\nElle convient très bien pour les travaux de marqueterie et peut être la solution à tous les nombreux problèmes de sciage, droit ou galbé avec des courbes prononcées.\n\nElle est proposée avec 2 longueurs de bras différentes et avec de nombreuses options. Existe en longueur 150 ( sur demande )', 'The VariSpeed jigsaw from Colombo is a professional machine\noffering high performance and very precise cutting.\nIt is very suitable for marquetry work and can be the solution to all the many problems of sawing, straight or curved with pronounced curves.\n\nIt is offered with 2 different arm lengths and with many options. Available in length 150 (on request)', 13, 2),
(27, 'Entraineur', 'Coach', '8 modèles d''entraineurs pour bois.\nPlusieurs variantes, 220v, 400v, avec variateur.\nDifférentes longueur de bras.\nUn choix large, des produits fiables.', '8 models of coaches for wood.\nSeveral variants, 220v, 400v, with dimmer.\nDifferent arm length.\nA wide choice, reliable products.', 14, 4),
(28, 'Plaqueuse de chant', 'Edgebander', 'Plaqueuse pour chants pré-encollés Virutex:\n4 modèles EB5C, EB10C, EB15-2, et EB25.\nD''autres machines peuvent être proposées (version bac à colle) nous consulter...', 'Virutex pre-glued edge banding machine:\n4 models EB5C, EB10C, EB15-2, and EB25.\nOther machines can be proposed (version glue box) to consult us ...', 14, 2),
(29, 'Affuteuse Tormek', 'Sharpening Tormek', 'Le système d''affûtage à eau et de démorfilage Tormek est une révolution dans l''entretien des outils de coupe,\n\nTout le monde, désormais, peut affûter et démorfiler ses outils avec une précision jusque là inégalée et d''une manière simple et rapide.\n\n2 modèles, le SuperGrind T 4 et le SuperGrind T 8\nLa T-4 est une nouvelle machine en remplacement de la T-3, la modification principale vient de la partie métallique supérieure qui lui donne une rigidité plus importante.\nLa T 8 est la remplaçante de la T 7 \nUn grand nombre d''accessoires permet d''affûter tous types d''outils tranchants.', 'The Tormek water and honing system is a revolution in the maintenance of cutting tools,\n\nEveryone now can sharpen and demystify his tools with a precision previously unmatched and in a simple and fast way.\n\n2 models, the SuperGrind T 4 and the SuperGrind T 8\nThe T-4 is a new machine replacing the T-3, the main modification comes from the upper metal part which gives it a greater rigidity.\nThe T 8 is the substitute for the T 7\nA large number of accessories can be used to sharpen all types of cutting tools.', 15, 4);

--
-- Déclencheurs `Articles`
--
DELIMITER $$
CREATE TRIGGER `TRG_Articles_On_Insert_Row_Dates` AFTER UPDATE ON `articles`
 FOR EACH ROW BEGIN
        insert into ArticlesArchive(idArticleArchive,idArticle,nomArticleFR,nomArticleEN,descriptionArticleFR,descriptionArticleEN,idSousCategorie,idFournisseur,dateHisto)
        values
        (Null,Old.idArticle,Old.nomArticleFR,Old.nomArticleEN,Old.descriptionArticleFR,Old.descriptionArticleEN,Old.idSousCategorie,Old.idFournisseur,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `ArticlesArchive`
--

CREATE TABLE `ArticlesArchive` (
  `idArticleArchive` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `nomArticleFR` varchar(100) NOT NULL,
  `nomArticleEN` varchar(100) NOT NULL,
  `descriptionArticleFR` text NOT NULL,
  `descriptionArticleEN` text NOT NULL,
  `idSousCategorie` int(11) NOT NULL,
  `idFournisseur` int(11) NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Categories`
--

CREATE TABLE `Categories` (
  `idCategorie` int(11) NOT NULL,
  `nomCategorieFR` varchar(150) NOT NULL,
  `nomCategorieEN` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Categories`
--

INSERT INTO `Categories` (`idCategorie`, `nomCategorieFR`, `nomCategorieEN`) VALUES
(1, 'Bois', 'Wood'),
(2, 'Charpente', 'Woodwork'),
(3, 'Machines', 'Machines');

--
-- Déclencheurs `Categories`
--
DELIMITER $$
CREATE TRIGGER `TRG_Categorie_On_Insert_Row_Dates` AFTER UPDATE ON `categories`
 FOR EACH ROW BEGIN
        insert into CategoriesArchive(idCatArchive,idCategorie,nomCategorieFR,nomCategorieEN,dateHisto)
        values
        (Null,Old.idCategorie,Old.nomCategorieFR,Old.nomCategorieEN,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `CategoriesArchive`
--

CREATE TABLE `CategoriesArchive` (
  `idCatArchive` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `nomCategorieFR` varchar(150) NOT NULL,
  `nomCategorieEN` varchar(150) NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `CategoriesArchive`
--

INSERT INTO `CategoriesArchive` (`idCatArchive`, `idCategorie`, `nomCategorieFR`, `nomCategorieEN`, `dateHisto`) VALUES
(0, 1, 'Bois', 'Wood', '2018-12-14 14:56:21'),
(1, 1, 'Boi', 'Wood', '2018-12-14 15:35:47'),
(2, 1, 'Bois', 'Wood', '2018-12-14 15:36:01'),
(3, 1, 'Boi', 'Wood', '2018-12-14 15:36:12'),
(4, 1, 'Bois', 'Wood', '2018-12-14 16:26:28'),
(5, 1, 'Boi', 'Wood', '2018-12-14 16:26:46'),
(6, 1, 'Bois', 'Wood', '2018-12-14 16:43:38'),
(7, 1, 'Boi', 'Wood', '2018-12-14 16:43:49'),
(8, 1, 'Bois', 'Wood', '2018-12-14 17:14:04'),
(9, 1, 'Boi', 'Wood', '2018-12-14 17:14:10');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `idUtilisateur` int(11) NOT NULL,
  `sigle` varchar(100) DEFAULT NULL,
  `siret` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Client`
--

INSERT INTO `Client` (`idUtilisateur`, `sigle`, `siret`) VALUES
(4, 'Test', 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `Factures`
--

CREATE TABLE `Factures` (
  `idFacture` int(11) NOT NULL,
  `paye` int(11) NOT NULL,
  `dateFacture` date DEFAULT NULL,
  `montantHT` float NOT NULL,
  `TVA` float NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idInformation` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Factures`
--

INSERT INTO `Factures` (`idFacture`, `paye`, `dateFacture`, `montantHT`, `TVA`, `idUtilisateur`, `idInformation`) VALUES
(1, 1, '2018-05-18', 200, 20, 4, 1),
(2, 1, '2018-06-02', 200, 20, 4, 1),
(29, 1, '2018-06-04', 9.93, 1.99, 4, 2),
(30, 1, '2018-06-04', 19.86, 3.97, 4, 2),
(31, 1, '2018-06-04', 129.68, 25.94, 2, 1),
(32, 1, '2018-06-05', 0, 0, 4, 2),
(33, 1, '2018-06-05', 0, 0, 4, 2),
(36, 1, '2018-06-15', 200, 20, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `idFournisseur` int(11) NOT NULL,
  `nomFournisseur` varchar(100) NOT NULL,
  `idPays` int(11) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `chiffreAffaires` float NOT NULL,
  `actif` enum('true','false') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Fournisseurs`
--

INSERT INTO `Fournisseurs` (`idFournisseur`, `nomFournisseur`, `idPays`, `statut`, `adresse`, `chiffreAffaires`, `actif`) VALUES
(1, 'Rubio', 3, 'privé', '12 rue cavallotti', 150000, 'true'),
(2, 'Festool', 4, 'privé', '10 rue Henri Barbusse', 3000560, 'false'),
(3, 'Bois', 5, 'public', '12 rue cavallotti', 185948000000, 'true'),
(4, 'Stanley Bostitch', 4, 'public', '10 rue Henri Barbusse', 123406000000, 'false');

--
-- Déclencheurs `Fournisseurs`
--
DELIMITER $$
CREATE TRIGGER `TRG_Fournisseurs_On_Insert_Row_Dates` AFTER UPDATE ON `fournisseurs`
 FOR EACH ROW BEGIN
        insert into FournisseursArchive(idFournArchive,idFournisseur,nomFournisseur,idPays,dateHisto)
        values
        (Null,Old.idFournisseur,Old.nomFournisseur,Old.idPays,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `FournisseursArchive`
--

CREATE TABLE `FournisseursArchive` (
  `idFournArchive` int(11) NOT NULL,
  `idFournisseur` int(11) NOT NULL,
  `nomFournisseur` varchar(100) NOT NULL,
  `idPays` int(11) NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `FournisseursArchive`
--

INSERT INTO `FournisseursArchive` (`idFournArchive`, `idFournisseur`, `nomFournisseur`, `idPays`, `dateHisto`) VALUES
(1, 1, 'Rubio', 3, '2018-12-20 10:49:49'),
(2, 1, 'Rubio', 3, '2018-12-20 10:50:40'),
(3, 2, 'Festool', 4, '2018-12-20 10:51:07'),
(4, 2, 'Festool', 4, '2018-12-20 10:53:27'),
(5, 3, 'Bois', 5, '2018-12-20 10:53:47'),
(6, 4, 'Stanley Bostitch', 4, '2018-12-20 10:54:01'),
(7, 2, 'Festool', 4, '2018-12-20 10:54:12');

-- --------------------------------------------------------

--
-- Structure de la table `Informations`
--

CREATE TABLE `Informations` (
  `idInformation` int(11) NOT NULL,
  `numeroAdresse` int(11) NOT NULL,
  `rueAdresse` varchar(50) NOT NULL,
  `codePostalAdresse` int(11) NOT NULL,
  `villeAdresse` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Informations`
--

INSERT INTO `Informations` (`idInformation`, `numeroAdresse`, `rueAdresse`, `codePostalAdresse`, `villeAdresse`) VALUES
(1, 88, 'Avenue de Fontainebleau', 94270, 'Kreml'),
(2, 51, 'Avenue de Coeuilly', 94420, 'Le Pl');

-- --------------------------------------------------------

--
-- Structure de la table `InformationsFacturation`
--

CREATE TABLE `InformationsFacturation` (
  `idInformation` int(11) NOT NULL,
  `nomFacturation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `InformationsFacturation`
--

INSERT INTO `InformationsFacturation` (`idInformation`, `nomFacturation`) VALUES
(1, 'Mozamel'),
(2, 'Marion');

-- --------------------------------------------------------

--
-- Structure de la table `InformationsLivraison`
--

CREATE TABLE `InformationsLivraison` (
  `idInformation` int(11) NOT NULL,
  `remarques` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `InformationsLivraison`
--

INSERT INTO `InformationsLivraison` (`idInformation`, `remarques`) VALUES
(1, 'ETAGE 2,Digicode 97A512'),
(2, 'ETAGE 5,Digicode 123F34');

-- --------------------------------------------------------

--
-- Structure de la table `Medias`
--

CREATE TABLE `Medias` (
  `idMedia` int(11) NOT NULL,
  `urlMedia` varchar(200) NOT NULL,
  `idNews` int(11) DEFAULT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `idSousCategorie` int(11) DEFAULT NULL,
  `refCommercial` varchar(25) DEFAULT NULL,
  `idArticle` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Medias`
--

INSERT INTO `Medias` (`idMedia`, `urlMedia`, `idNews`, `idCategorie`, `idSousCategorie`, `refCommercial`, `idArticle`) VALUES
(1, 'View/img/Bois/bois%20pour%20archerie/Acajou/Acajou%2050x50x450mm.jpg', NULL, NULL, 1, 'ARC-ACAJOU4', 1),
(2, 'View/img/Bois/bois%20pour%20archerie/Noyer/noyer_50x50x450mm.jpg', NULL, NULL, NULL, 'ARC-NOYER4', 2),
(3, 'View/img/Bois/bois%20pour%20coutellerie/bois stabilisÃ©/loupe_de_marronier_stabilise_vert_140x38x32.jpg', NULL, NULL, 2, 'COUT-STAB1', 3),
(4, 'View/img/Bois/bois%20pour%20coutellerie/bois stabilisÃ©/loupe_erable_stabilise_vert_140x38x32.jpg', NULL, NULL, NULL, 'COUT-STAB4', NULL),
(5, 'View/img/Bois/bois%20pour%20coutellerie/bois%20stabilis%C3%A9/loupe_marronier_stabilise_vert_bleu_140x40x32.jpg', NULL, NULL, NULL, 'COUT-STAB3', NULL),
(6, 'iew/img/Bois/bois%20pour%20coutellerie/plaquettes/plaquette_acacia_6x40x120mm.jpg', NULL, NULL, NULL, 'COUT-P-ACAC', 4),
(7, 'View/img/Bois/bois%20pour%20coutellerie/plaquettes/plaquette_citronnier_ceylan_6x40x120mm.jpg', NULL, NULL, NULL, 'COUT-P-CITRON', NULL),
(8, 'View/img/Bois/bois%20pour%20coutellerie/plaquettes/plaquette_loupe_de_fer_6x40x120mm.jpg', NULL, NULL, NULL, 'COUT-LP-FERCAL', NULL),
(9, 'View/img/Bois/bois%20pour%20plaquage/filets%20et%20motifs/filet_num10_5mmx1m.jpg', NULL, NULL, 3, 'F10-005', 5),
(10, 'View/img/Bois/bois%20pour%20plaquage/filets%20et%20motifs/filet_num61_6mmx1m.jpg', NULL, NULL, NULL, 'F61-006', NULL),
(11, 'View/img/Bois/bois%20pour%20plaquage/filets%20et%20motifs/filet_num65_4mmx1m.jpg', NULL, NULL, NULL, 'F65-004', NULL),
(12, 'View/img/Bois/bois%20pour%20plaquage/produits%20souples/feuille_placage_jointe_chene_2m50x1m25.jpg', NULL, NULL, NULL, 'PS-CHENE-US', 6),
(13, 'View/img/Bois/bois%20pour%20plaquage/produits%20souples/feuille_placage_jointe_wengue_2m50x1m25.jpg', NULL, NULL, NULL, 'PS-WENGUE', NULL),
(14, 'View/img/Bois/bois%20pour%20sculture/merisier/Aviv%C3%A9_rabot%C3%A9_Merisier_300x200x21mm.jpg', NULL, NULL, 4, 'FAVIV-MER1', 7),
(15, 'View/img/Bois/bois%20pour%20sculture/pin%20cembro/avive_rabote_pin_300x140x23mm.jpg', NULL, NULL, NULL, 'AVIV-CEMBRO1', 8),
(16, 'View/img/Bois/bois%20pour%20tournage/Acacia/Acacia_carrelet_50x50x200mm.jpg', NULL, NULL, 5, 'CAR-ACA1', 9),
(17, 'View/img/Bois/bois%20pour%20tournage/Acacia/Acacia_carrelet_80x80x400.jpg', NULL, NULL, NULL, 'CAR-ACA2', NULL),
(18, 'View/img/Bois/bois%20pour%20tournage/Caroubier/Caroubier_carrelet_50x50x200.jpg', NULL, NULL, NULL, 'CAR-CAROUB1', 10),
(19, 'View/img/Bois/bois%20pour%20tournage/Caroubier/Caroubier_carrelet_100x100x200mm.jpg', NULL, NULL, NULL, 'CAR-CAROUB2', NULL),
(20, 'View/img/Charpente/agrafeuses/pour%20agrafes%20type%2080/Agrafeuse_Omer_80-16_bec_court_agrafes_80.jpg', NULL, NULL, 6, '80-016', 11),
(21, 'View/img/Charpente/agrafeuses/pour%20agrafes%20type%2080/Agrafeuse_Omer_80-16_bec_long_agrafes_80.jpg', NULL, NULL, NULL, '80-016SL', NULL),
(22, 'View/img/Charpente/agrafeuses/pour%20agrafes%20type%2090/Agrafeuse_Omer_90-40%20.jpg', NULL, NULL, NULL, '90-040', 12),
(23, 'View/img/Charpente/cloueurs/cloueur%20pour%20pointe%20jauge%2016/Cloueur_Bostitch_pointes_FN%20jauge%2016%20de%2032%20%C3%A0%2064mm.jpg', NULL, NULL, 7, 'APC-FN1', 13),
(24, 'View/img/Charpente/cloueurs/pour%20aiguilles/Aiguilleur_Stanley_Bostitch_mod%C3%A8le_TU-216-2330K-E.jpg', NULL, NULL, NULL, 'TU-216-2330K-E', 14),
(25, 'View/img/Charpente/meches%20a%20chapelle/Foret%20de%20centrage/Foret_centrage_Diam%C3%A8tre_6mm_Type_CB-WD_HSS_6x55.jpg', NULL, NULL, 8, '762617', 15),
(26, 'View/img/Charpente/meches%20a%20chapelle/Foret%20de%20centrage/Foret_centrage_Diam%C3%A8tre_10mm_Type_CB-WD_HSS_10x10.jpg', NULL, NULL, NULL, '629393', NULL),
(27, 'View/img/Charpente/meches%20a%20chapelle/Foret%20de%20centrage/Foret_centrage_Diam%C3%A8tre_10mm_Type_CB-WD_HSS_10x85.jpg', NULL, NULL, NULL, '762618', NULL),
(28, 'View/img/Charpente/meches%20a%20chapelle/pointe%20de%20centrage/Pointe_centrage_courte_Type_CP-WD_6x6mm.jpg', NULL, NULL, NULL, '762621', 16),
(29, 'View/img/Charpente/meches%20a%20chapelle/pointe%20de%20centrage/Pointe_centrage_courte_Type_CP-WD_10x9mm.jpg', NULL, NULL, NULL, '762622', NULL),
(30, 'View/img/Charpente/pour%20le%20charpentier/ebauchoirs/Ebauchoir%20%C3%A0%20lame%20biseaut%C3%A9e%20en%2025mm.jpg', NULL, NULL, 9, '11525', 17),
(31, 'View/img/Charpente/pour%20le%20charpentier/ebauchoirs/Ebauchoir%20%C3%A0%20lame%20biseaut%C3%A9e%20en%2030mm.jpg', NULL, NULL, NULL, '11530', NULL),
(32, 'View/img/Charpente/pour%20le%20charpentier/ebauchoirs/Ebauchoir%20%C3%A0%20lame%20biseaut%C3%A9e%20en%2035mm.jpg', NULL, NULL, NULL, '11535', NULL),
(33, 'View/img/Charpente/pour%20le%20charpentier/essette%20et%20haches/Essette_charpentier_largeur_85mm_manche_6150.jpg', NULL, NULL, NULL, '2072-002', 18),
(34, 'View/img/Charpente/pour%20le%20charpentier/essette%20et%20haches/Herminette_Fran%C3%A7aise_largeur_65mm_manche_Hickory.jpg', NULL, NULL, NULL, '6100-085', NULL),
(35, 'View/img/Charpente/scie%20japonaise/bigboy/Scie_japonaise_Silky_mod%C3%A8le_Bigboy_360-10_Noire_%28grosse_denture%29.jpg', NULL, NULL, 10, 'KSI635036', 19),
(36, 'View/img/Charpente/scie%20japonaise/bigboy/Scie_japonaise_Silky_mod%C3%A8le_Bigboy_360-13_bleu_%28denture_fine%29.jpg', NULL, NULL, NULL, 'KSI635236', NULL),
(37, 'View/img/Charpente/scie%20japonaise/pocketboy/Lame_Pocketboy_170.jpg', NULL, NULL, NULL, 'KSI534017', 20),
(38, 'View/img/Charpente/scie%20japonaise/pocketboy/Scie_japonaise_Silky_mod%C3%A8le_Pocketboy_170-10_noire.jpg', NULL, NULL, NULL, 'KSI534117', NULL),
(39, 'View/img/Machine/gamme%20JET/aspirateur/Aspirateur_JET_mod%C3%A8le_DC-1100A_capacit%C3%A9_200L_230V.jpg', NULL, NULL, 11, 'DC1100A', 21),
(40, 'View/img/Machine/gamme%20JET/aspirateur/Aspirateur_JET_mod%C3%A8le_DC-1300_capacit%C3%A9_90L_230V.jpg', NULL, NULL, NULL, 'DC-1300', NULL),
(41, 'View/img/Machine/gamme%20JET/ponceuse/Ponceuse_%C3%A0_cylindre_JET_mod%C3%A8le_16-32_Plus_M.jpg', NULL, NULL, NULL, '16-32-PLUS', 22),
(42, 'View/img/Machine/gamme%20JET/ponceuse/Ponceuse_combin%C3%A9e_%C3%A0_disque_et_%C3%A0_bande_JET_mod%C3%A8le_233A.jpg', NULL, NULL, NULL, '233A', NULL),
(43, 'View/img/Machine/gamme%20leman/aspirateur/Aspirateur_marque_Leman_capacit%C3%A9_150_litres_2cv_monophas%C3%A9_gamme_LEMAN.jpg', NULL, NULL, 12, 'ASP152', 23),
(44, 'View/img/Machine/gamme%20leman/aspirateur/Aspirateur_marque_Leman_capacit%C3%A9_150_litres_2cv_triphas%C3%A9_gamme_LEMAN.jpg', NULL, NULL, NULL, 'ASP152T', NULL),
(45, 'View/img/Machine/gamme%20leman/combin%C3%A9%20%C3%A0%20bois/Combin%C3%A9_LEMAN_5sur6_op%C3%A9rations_250_mm.jpg', NULL, NULL, NULL, 'COM250', 24),
(46, 'View/img/Machine/gamme%20leman/combin%C3%A9%20%C3%A0%20bois/Combin%C3%A9e_5sur6_op%C3%A9rations_310mm_monophas%C3%A9e.jpg', NULL, NULL, NULL, 'COM310', NULL),
(47, 'View/img/Machine/scie%20%C3%A0%20chantourner/scie%20%C3%A0%20chantourner%20jet/Scie_%C3%A0_chantourner_%C3%A0_vitesses_variables_Jet_354V.jpg', NULL, NULL, 13, '354V', 25),
(48, 'View/img/Machine/scie%20%C3%A0%20chantourner/scie%20%C3%A0%20chantourner%20jet/Scie_%C3%A0_chantourner_Promac_354.jpg', NULL, NULL, NULL, '354', NULL),
(49, 'View/img/Machine/scie%20%C3%A0%20chantourner/scie%20%C3%A0%20chantourner%20lourde/Scie_%C3%A0_chantourner_Colombo_mod%C3%A8le_Varispeed_85-B_CE_bras_longueur_utile_85cm.jpg', NULL, NULL, NULL, 'VS85/B', 26),
(50, 'View/img/Machine/scie%20%C3%A0%20chantourner/scie%20%C3%A0%20chantourner%20lourde/Scie_%C3%A0_chantourner_Colombo_mod%C3%A8le_Varispeed_115-B_CE_bras_longueur_utile_115cm.jpg', NULL, NULL, NULL, 'VS115/B', NULL),
(51, 'View/img/Machine/stationnaire/entraineur/Entraineur_HP30_Vario_tri_avec_bras_longueur_1050mm.jpg', NULL, NULL, 14, 'HP30V', 27),
(52, 'View/img/Machine/stationnaire/entraineur/Entraineur_HP32_Junior_220V_mono_avec_bras_longueur_450mm.jpg', NULL, NULL, NULL, 'HP32M', NULL),
(53, 'View/img/Machine/stationnaire/plaqueuse%20de%20chant/Plaqueuse_pour_chants_pr%C3%A9-encoll%C3%A9s_Virutex_EB25.jpg', NULL, NULL, NULL, '6300000', 28),
(54, 'View/img/Machine/stationnaire/plaqueuse%20de%20chant/Plaqueuse_pour_chants_pr%C3%A9-encoll%C3%A9s_Virutex_EB35_jusqu%27%C3%A0_3_mm.jpg', NULL, NULL, NULL, '8500100', NULL),
(55, 'View/img/Machine/touret%20et%20affuteuse/affuteuse%20tormek/Aff%C3%BBteuse_Tormek_T4.jpg', NULL, NULL, 15, 'T-4', 29),
(56, 'View/img/Machine/touret%20et%20affuteuse/affuteuse%20tormek/Aff%C3%BBteuse_Tormek_T8.jpg', NULL, NULL, NULL, 'T-8', NULL),
(57, 'View/img/Machine/touret%20et%20affuteuse/affuteuse%20tormek/Gabarit_d%27Aff%C3%BBtage_de_Forets_HSS_TORMEK.jpg', NULL, NULL, NULL, 'DBS-22', NULL),
(58, 'View/img/Machine/touret%20et%20affuteuse/affuteuse%20tormek/Kit_de_montage_tourets_%C3%A0_sec.jpg', NULL, NULL, NULL, 'BGM-100', NULL),
(59, 'View/img/Bois_catalogue.jpg', NULL, 1, NULL, NULL, NULL),
(60, 'View/img/Charpente_catalogue.png', NULL, 2, NULL, NULL, NULL),
(61, 'View/img/Machines_catalogue.jpg', NULL, 3, NULL, NULL, NULL),
(62, 'View/img/concours/deuxiemeprix_2018_1.jpg', 1, NULL, NULL, NULL, NULL),
(63, 'View/img/concours/deuxiemeprix_2018Ò_2.jpg', 1, NULL, NULL, NULL, NULL),
(64, 'View/img/concours/premierprix_2018_1.jpg', 1, NULL, NULL, NULL, NULL),
(65, 'View/img/concours/premierprix_2018_2.jpg', 1, NULL, NULL, NULL, NULL),
(66, 'View/img/concours/premierprix_2018_3.jpg', 1, NULL, NULL, NULL, NULL),
(67, 'View/img/concours/premierprix_2018_4.jpg', 1, NULL, NULL, NULL, NULL),
(68, 'View/img/concours/premierprix_2018_5.jpg', 1, NULL, NULL, NULL, NULL),
(69, 'View/img/concours/premierprix_tourn%C3%A9_2018_1.jpg', 1, NULL, NULL, NULL, NULL),
(70, 'View/img/concours/premierprix_tourn%C3%A9_2018_2.jpg', 1, NULL, NULL, NULL, NULL),
(71, 'View/img/concours/premierprix_tourn%C3%A9_2018_3.jpg', 1, NULL, NULL, NULL, NULL);

--
-- Déclencheurs `Medias`
--
DELIMITER $$
CREATE TRIGGER `TRG_Medias_On_Insert_Row_Dates` AFTER UPDATE ON `medias`
 FOR EACH ROW BEGIN
        insert into MediasArchive(idMediaArchive,idMedia,urlMedia,idNews,idCategorie,idSousCategorie,refCommercial,idArticle,dateHisto)
        values
        (Null,Old.idMedia,Old.urlMedia,Old.idNews,Old.idCategorie,Old.idSousCategorie,Old.refCommercial,Old.idArticle,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `MediasArchive`
--

CREATE TABLE `MediasArchive` (
  `idMediaArchive` int(11) NOT NULL,
  `idMedia` int(11) NOT NULL,
  `urlMedia` varchar(200) NOT NULL,
  `idNews` int(11) DEFAULT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `idSousCategorie` int(11) DEFAULT NULL,
  `refCommercial` varchar(25) DEFAULT NULL,
  `idArticle` int(11) DEFAULT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `News`
--

CREATE TABLE `News` (
  `idNews` int(11) NOT NULL,
  `titreNews` varchar(100) NOT NULL,
  `dateNews` date NOT NULL,
  `contenuNews` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `News`
--

INSERT INTO `News` (`idNews`, `titreNews`, `dateNews`, `contenuNews`) VALUES
(1, 'Premierprix', '2018-01-01', ''),
(2, 'deuxiemePrix', '2018-01-01', ''),
(3, 'premierPrixColle', '2018-01-01', ' ');

--
-- Déclencheurs `News`
--
DELIMITER $$
CREATE TRIGGER `TRG_News_On_Insert_Row_Dates` AFTER UPDATE ON `news`
 FOR EACH ROW BEGIN
        insert into NewsArchive(idNewsArchive,idNews,titreNews,dateNews,contenuNews,dateHisto)
        values
        (idNewsArchive,Old.idNews,Old.titreNews,Old.dateNews,Old.contenuNews,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `NewsArchive`
--

CREATE TABLE `NewsArchive` (
  `idNewsArchive` int(11) NOT NULL,
  `idNews` int(11) NOT NULL,
  `titreNews` varchar(100) NOT NULL,
  `dateNews` date NOT NULL,
  `contenuNews` text NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `idPays` int(11) NOT NULL,
  `libellePaysFR` varchar(100) NOT NULL,
  `libellePaysEN` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Pays`
--

INSERT INTO `Pays` (`idPays`, `libellePaysFR`, `libellePaysEN`) VALUES
(1, 'England', 'Angleterre'),
(2, 'France', 'France'),
(3, 'Great Britain', 'Grande-Bretagne'),
(4, 'Germany', 'Allemagne'),
(5, 'America', 'Amérique'),
(6, 'Ireland', 'Irlande'),
(7, 'Africa', 'Afrique'),
(8, 'Japan', 'Japon'),
(9, 'Italy', 'Italie'),
(10, 'Australia', 'Australie'),
(11, 'India', 'Inde'),
(12, 'China', 'Chine');

-- --------------------------------------------------------

--
-- Structure de la table `situer2`
--

CREATE TABLE `situer2` (
  `idInformation` int(11) NOT NULL,
  `idPays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Sous_Categories`
--

CREATE TABLE `Sous_Categories` (
  `idSousCategorie` int(11) NOT NULL,
  `nomSousCategorieFR` varchar(200) NOT NULL,
  `nomSousCategorieEN` varchar(200) NOT NULL,
  `idCategorie` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Sous_Categories`
--

INSERT INTO `Sous_Categories` (`idSousCategorie`, `nomSousCategorieFR`, `nomSousCategorieEN`, `idCategorie`) VALUES
(1, 'Bois pour archerie', 'Wood for archery', 1),
(2, 'Bois pour coutellerie', 'Wood for cutlery', 1),
(3, 'Bois pour plaquage', 'Wood for veneer', 1),
(4, 'Bois pour sculpture', 'Wood for sculpture', 1),
(5, 'Bois pour tournage', 'Wood for turning', 1),
(6, 'Agrafeuses', 'Staplers', 2),
(7, 'Cloueurs', 'Nailers', 2),
(8, 'Mèches à chapelle', 'Chapel wicks', 2),
(9, 'Pour le charpentier', 'For the carpenter', 2),
(10, 'Scie japonaise', 'Japanese saw', 2),
(11, 'Gamme JET', 'JET Range', 3),
(12, 'Gamme Leman', 'Leman Range', 3),
(13, 'Scie à chantourner', 'Chain saw', 3),
(14, 'Stationnaires', 'Stationary', 3),
(15, 'Touret et affuteuse', 'Drill and sharpener', 3);

--
-- Déclencheurs `Sous_Categories`
--
DELIMITER $$
CREATE TRIGGER `TRG_Sous_Categorie_On_Insert_Row_Dates` AFTER UPDATE ON `sous_categories`
 FOR EACH ROW BEGIN
        insert into Sous_CategoriesArchive(idSousCatArchive,idSousCategorie,nomSousCategorieFR,nomSousCategorieEN,dateHisto)
        values
        (Null,Old.idSousCategorie,Old.nomSousCategorieFR,Old.nomSousCategorieEN,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Sous_CategoriesArchive`
--

CREATE TABLE `Sous_CategoriesArchive` (
  `idSousCatArchive` int(11) NOT NULL,
  `idSousCategorie` int(11) NOT NULL,
  `nomSousCategorieFR` varchar(200) NOT NULL,
  `nomSousCategorieEN` varchar(200) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `idUtilisateur` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `motDePasse` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`idUtilisateur`, `email`, `nom`, `motDePasse`, `prenom`) VALUES
(1, 'Mozamel.daya@gmail.com', 'Goulamaly', '043960528d0ace8b3a2f05098f38fd26', 'Mozamel'),
(2, 'katyanne_mm@live.fr', 'Mota', '043960528d0ace8b3a2f05098f38fd26', 'Marion'),
(3, 'diler.lior@gmail.com', 'Diler', '043960528d0ace8b3a2f05098f38fd26', 'Lior'),
(4, 'Client@test.com', 'Test', '043960528d0ace8b3a2f05098f38fd26', 'Test');

-- --------------------------------------------------------

--
-- Structure de la table `Variantes_Articles`
--

CREATE TABLE `Variantes_Articles` (
  `refCommercial` varchar(25) CHARACTER SET latin1 NOT NULL,
  `refFournisseur` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nomVarianteFR` text CHARACTER SET latin1 NOT NULL,
  `nomVarianteEN` text CHARACTER SET latin1 NOT NULL,
  `poidsVariante` float NOT NULL,
  `descriptionVarianteFR` text CHARACTER SET latin1,
  `descriptionVarianteEN` text CHARACTER SET latin1,
  `disponibiliteVariante` int(11) NOT NULL,
  `prixVariante` float DEFAULT NULL,
  `idArticle` int(11) NOT NULL,
  `dateAjout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Variantes_Articles`
--

INSERT INTO `Variantes_Articles` (`refCommercial`, `refFournisseur`, `nomVarianteFR`, `nomVarianteEN`, `poidsVariante`, `descriptionVarianteFR`, `descriptionVarianteEN`, `disponibiliteVariante`, `prixVariante`, `idArticle`, `dateAjout`) VALUES
('11525', 'C0011', 'Ebauchoir à lame biseautée en 25mm', 'Chopping blade with 25mm beveled blade', 0.55, 'Ebauchoir de charpentier en acier forgé, les flancs de la lame sont biseautés.\n\nFabrication Française', 'Forged steel carpenter''s chipper, the flanks of the blade are beveled.\n\nFrench made', 1, 9.93, 17, '2018-06-01'),
('11530', 'C0012', 'Ebauchoir à lame biseautée en 30mm', 'Chopping blade with 30mm beveled blade', 0.55, 'Ebauchoir de charpentier en acier forgé, les flancs de la lame sont biseautés.\n\nFabrication Française', 'Forged steel carpenter''s chipper, the flanks of the blade are beveled.\n\nFrench made', 1, 10.42, 17, '2018-06-01'),
('11535', 'C0013', 'Ebauchoir à lame biseautée en 35mm', 'Chopping blade with 35mm beveled blade', 0.55, 'Ebauchoir de charpentier en acier forgé, les flancs de la lame sont biseautés.\n\nFabrication Française', 'Forged steel carpenter''s chipper, the flanks of the blade are beveled.\n\nFrench made', 1, 13.58, 17, '2018-06-01'),
('16-32-PLUS', 'M0003', 'Ponceuse à cylindre JET modèle 16-32 Plus M', 'JET cylinder sander model 16-32 Plus M', 70, 'Rouleau en aluminium extrudé, auto-refroidissant, travaillé et équilibré.\n\nVitesse d''avancement variable de 0 - 3 m/min pour des résultats optimaux.\nUn dispositif de serrage rapide breveté, placé sur le côté intérieur du rouleau de ponçage, retient la bande d''un côté\n\nMoteur puissant permet le ponçage en continu.\n\nLivrée avec:\nBande abrasive avec grain 80\nBande pilote, grain 100 en surface\nSocle avec console\nCarton avec bandes abrasives\n\nBâton de nettoyage\n\nLes roulettes sont en option et pas comprises dans la livraison de la machine.\n\nCaractéristiques techniques:\n\nPonçage jusqu''à 810 mm par deux passages\n\nTension 230V\nPuissance 1.1 CV\n\nEpaisseur max. 75 mm \nEpaisseur min. 0.8 mm \nLongueur min. 60 mm \nLargeur max. 405 (810) mm \nCylindre de ponçage ø 127 mm \nVitesse d''entraînement réglable en continu 0 - 3 m/min\n\nLargeur bande abrasive 75 mm \nVitesse de rotation de broche 1400 T/min \nBuse d''aspiration 100 mm \nDimensions (L x l x h) \n810x580x1200mm\n\nPoids 65 kg ', 'Extruded aluminum roll, self-cooling, worked and balanced.\nVariable forward speed of 0 - 3 m / min for optimal results.\n\nA patented quick clamping device, placed on the inside of the sanding roller, holds the band on one side\nPowerful motor allows sanding continuously.\n\nDelivered with:\nAbrasive belt with 80 grit\nPilot strip, grain 100 on the surface\nStand with console\n\nCarton with abrasive strips\nCleaning stick\n\nThe casters are optional and not included in the delivery of the machine.\n\nTechnical characteristics:\n\n\nSanding up to 810 mm by two passes\n\nVoltage 230V\nHorsepower 1.1 HP\nThickness max. 75 mm\nThickness min. 0.8 mm\nMin. 60 mm\nMax width 405 (810) mm\nSanding cylinder ø 127 mm\nContinuously adjustable drive speed 0 - 3 m / min\n\nAbrasive belt width 75 mm\nSpindle speed 1400 rpm\nSuction nozzle 100 mm\nDimensions (L x W x H)\n810x580x1200mm\n\nWeight 65 kg', 1, 1140.48, 22, '2018-06-01'),
('2072-002', 'C0014', 'Herminette Française largeur 65mm avec manche Hickory', 'French width 65mm Herminette with Hickory handle', 2.5, 'Herminette de fabrication Autrichienne\n\nLargeur 65mm environ\nCintre rayon 110°\nManche long 440mm en Hickory\nPoids 800g', 'Herminette of Austrian manufacture\n\nWidth 65mm approximately\nHanger radius 110 °\n440mm Hickory long handle\nWeight 800g', 1, 68.46, 18, '2018-06-01'),
('233A', 'M0004', 'Ponceuse combinée à disque et à bande JET modèle 233A', 'Combined disc and belt sander JET model 233A', 60, 'Ponceuse JET 233A, la ponceuse combinée idéale pour le professionnel et le menuisier !\nAngle de ponçage réglable\nTable pivotante de 90° à 45°\nadaptateur pour aspiration\nGuide d''onglet\n\nDisque velcro collant 200 mm\n\nMachine livrée avec :\nBande de ponçage 100 x 914 mm\n1 disque velcro 200 mm\nGuide d''onglet\nTable', 'JET 233A sander, the ideal combination sander for the professional and the carpenter!\nAdjustable sanding angle\nSwivel table from 90 ° to 45 °\nsuction adapter\nTab guide\nSticky velcro disc 200 mm\n\nMachine delivered with:\n\nSanding belt 100 x 914 mm\n1 velcro disc 200 mm\nTab guide\nTable', 1, 359.47, 22, '2018-06-01'),
('354', 'M0010', 'Scie à chantourner Promac 354 ', 'Promac 354 Scroll Saw', 33, 'Le Clone de la scie à chantourner connu de tous.\nLa référence en la matière....\n\n\nTable en fonte de 225 x 440mm\nInclinable jusqu''à 45°\nLongueur de lame 130mm\nMoteur 100W 230v\nMouvement : 700 et 1400 par minute\nCourse 20mm\nCol de cygne de 460mm\nHauteur de coupe à 90° = 60mm\nHauteur de coupe à 45° = 45mm\nPoids 30kg', 'The clone of the coping saw known to all.\nThe reference in the field ....\n\n225 x 440mm cast iron table\nTilt up to 45 °\nBlade length 130mm\n100W 230v motor\nMovement: 700 and 1400 per minute\n\n20mm stroke\n460mm gooseneck\nCutting height at 90 ° = 60mm\nCutting height at 45 ° = 45mm\nWeight 30kg', 0, 401.44, 25, '2018-06-01'),
('354V', 'M0009', 'Scie à chantourner à vitesses variables Jet 354V', 'Jet 354V Variable Speed Scroll Saw', 33, 'Le Clone de la scie à chantourner connu de tous.\nLa référence en la matière....\n\nLe modèle à variateur de vitesses\n\nTable en fonte de 225 x 440mm\n\nInclinable jusqu''à 45°\nLongueur de lame 130mm\nMoteur 100W 230V\nVariateur : 400 à 1400 mouvements par minute\nCourse 20mm\nCol de cygne de 460mm\nHauteur de coupe à 90° = 60mm\nHauteur de coupe à 45° = 45mm\nPoids 30kg', 'The clone of the coping saw known to all.\nThe reference in the field ....\n\nThe model with speed variator\n\n225 x 440mm cast iron table\nTilt up to 45 °\nBlade length 130mm\n100W 230V motor\nVariator: 400 to 1400 movements per minute\n\n20mm stroke\n460mm gooseneck\nCutting height at 90 ° = 60mm\nCutting height at 45 ° = 45mm\nWeight 30kg', 1, 492.69, 25, '2018-06-01'),
('6100-085', 'C0015', 'Essette de charpentier largeur 85mm + manche 6150', 'Carpenter''s towel width 85mm + handle 6150', 1, NULL, NULL, 1, 64.93, 18, '2018-06-01'),
('629393', 'C0007', 'Foret de centrage Diamètre 10mm Type CB-WD HSS ', 'Centering drill diameter 10mm Type CB-WD HSS', 0.2, 'Acier spécial diamètre 50-130mm - Carbure diamètre 50-100mm. Longueur utile ca. in 10mm.', 'Special steel diameter 50-130mm - Carbide diameter 50-100mm. Useful length ca. in 10mm.', 1, 12.48, 15, '2018-06-01'),
('6300000', 'M0015', 'Plaqueuse pour chants pré-encollés Virutex EB25', 'Virutex EB25 Pre-Glued Edge Banding Machine', 130, 'Dimensions extérieures 1720 x 950 x 1350 mm\nPoids 117 Kg\n\nRéglage et mise en marche de la machine en 2 minutes\n\nRéglage électronique de la température\nFonctionnement sans air comprimé\nUtilisation simple ', 'External dimensions 1720 x 950 x 1350 mm\nWeight 117 Kg\n\n\nSetting and turning on the machine in 2 minutes\n\nElectronic temperature adjustment\nOperation without compressed air\nSimple use', 1, 6761.17, 28, '2018-06-01'),
('762617', 'C0006', 'Foret de centrage Diamètre 6mm Type CB-WD HSS 6x55', 'Centering drill diameter 6mm Type CB-WD HSS 6x55', 0.2, 'Acier spécial diamètre 15-50mm - Carbure diamètre 15-50m\nLongueur utile ca. in 55mm', 'Special steel diameter 15-50mm - Carbide diameter 15-50m\nUseful length ca. in 55mm', 0, 11.33, 15, '2018-06-01'),
('762618', 'C0008', 'Foret de centrage Diamètre 10mm Type CB-WD HSS 10x85', 'Centering drill diameter 10mm Type CB-WD HSS 10x85', 0.2, 'Acier spécial diamètre 50-130mm - Carbure diamètre 50-100mm\nLongueur utile ca. in 85mm', 'Special steel diameter 50-130mm - Carbide diameter 50-100mm\nUseful length ca. in 85mm', 1, 15.13, 15, '2018-06-01'),
('762621', 'C0009', 'Pointe de centrage courte - Type CP-WD 10x9mm.', 'Short Centering Point - Type CP-WD 10x9mm', 0.04, 'Diamètre 10mm - Pour mèches de 50 à 130mm\n\nLongueur 9mm', 'Diameter 10mm - For wicks from 50 to 130mm\nLength 9mm', 1, 16.7, 16, '2018-06-01'),
('762622', 'C0010', 'Pointe de centrage courte - Type CP-WD 6x6.0', 'Short Centering Point - Type CP-WD 6x6.0', 0.15, 'Diamètre 6mm - pour mèches de 6 à 50mm\n\nLongueur utile ca. in 6.0mm', 'Diameter 6mm - for wicks from 6 to 50mm\nUseful length ca. in 6.0mm', 1, 8.28, 16, '2018-06-01'),
('80-016', 'C0001', 'Agrafeuse Omer 80-16 à bec court pour agrafes 80', 'Omer 80-16 stapler with short nose for 80 staples', 1.2, 'Agrafeuse pneumatique Omer 80-16 à bec court pour agrafes type 80 de 4 à 16mm.\n\nPression d''utilisation 4 - 7 bars, \nconsommation 0,25 L / coup.\nPoids 1 kg. \nApplications: Décoration, tissus, tapisserie, fauteuils… ', 'Pneumatic stapler Omer 80-16 with short nose for staples type 80 from 4 to 16mm.\n\nOperating pressure 4 - 7 bar,\nconsumption 0.25 L / stroke.\nWeight 1 kg.\nApplications: Decoration, fabrics, upholstery, armchairs ...', 1, 184, 11, '2018-06-01'),
('80-016SL', 'C0002', 'Agrafeuse Omer 80-16SL à bec long pour agrafes 80', 'Omer 80-16SL Stapler with long beak for 80 clips', 1.2, 'Agrafeuse pneumatique Omer 80-16 à bec long pour agrafes type 80 de 4 à 16mm.\n\nPression d''utilisation 4 - 7 bars,\n\nconsommation 0,25 L / coup.\nPoids 1 kg. \nApplications: Décoration, tissus, tapisserie, fauteuils… ', 'Pneumatic stapler Omer 80-16 with long nose for staples type 80 from 4 to 16mm.\n\nOperating pressure 4 - 7 bar,\nconsumption 0.25 L / stroke.\nWeight 1 kg.\nApplications: Decoration, fabrics, upholstery, armchairs ...', 1, 22.53, 11, '2018-06-01'),
('8500100', 'M0016', 'Plaqueuse pour chants pré-encollés Virutex EB35 jusqu''à 3 mm', 'Virutex EB35 pre-glued edge banding machine up to 3 mm', 150, 'Dimensions 1720 x 950 x 1350 mm\nPoids 135 Kgs\n\n\nCaractéristiques:\nPuissance 2300W.\nLargeur minimum : 7mm\nLargeur maximum : 65mm\nRayon extérieur : illimité\nRayon minimum intérieur : 55mm\nRéglage électronique de la température de 0 à 500°C\nTension 220V mono', 'Dimensions 1720 x 950 x 1350 mm\nWeight 135 Kgs\n\nCharacteristics:\n2300W power.\nMinimum width: 7mm\nMaximum width: 65mm\n\nOutside radius: unlimited\nMinimum inside radius: 55mm\nElectronic temperature adjustment from 0 to 500 ° C\n220V mono voltage', 1, 7896.93, 28, '2018-06-01'),
('90-040', 'C0003', 'Agrafeuse Omer 90/40 ', 'Omer 90/40 Stapler', 2, 'L''agrafeuse du menuisier.\nPour agrafes type 90 de 20 à 40mm.\n\nMagasin capacité 130 agrafes.\nPression de service 4,5 à 7 bars.\nConsommation 1 litre / coup\nPoids 1,8kg', 'The carpenter''s stapler.\nFor staples type 90 from 20 to 40mm.\n\nStore capacity 130 staples.\nOperating pressure 4.5 to 7 bar.\nConsumption 1 liter / shot\nWeight 1,8kg', 1, 363.47, 12, '2018-06-01'),
('APC-FN1', 'C0004', 'Cloueur Bostitch pointes FN jauge 16 de 32 à 64mm', 'Bostitch nailer with FN tips 16 gauge from 32 to 64mm', 2, 'Le cloueur ''second oeuvre'' par excellence.\n\nIdéal dans une application parquet ou escalier.\nIl est le plus léger et le plus puissant de sa catégorie.\nIl peut donc être utilisé sans problème sur les bois les plus durs... exemple lames de terrasse en Ipé.\n\nPour pointes type FN droite( Bostitch ) de 25 à 64mm jauge 16.\nPression d''utilisation 5 à 7 bars\nPoids 1,75kg\nCapacité du chargeur 130 clous.', 'Nailer ''second work'' par excellence.\nIdeal in a parquet or staircase application.\nIt is the lightest and most powerful of its category.\nIt can therefore be used without problem on the hardest woods ... example Ipe deck boards.\n\nFor straight FN type tips (Bostitch) from 25 to 64mm gauge 16.\nOperating pressure 5 to 7 bar\nWeight 1.75kg\nLoader capacity 130 nails.', 1, 129.68, 13, '2018-06-01'),
('ARC-ACAJOU4', 'B0001', 'Ebauche de poignée d''arc en bois d''acajou ( Swietenia humilis ) 50 x 50 x 450mm', 'Mahogany Wood Handle Handle (Swietenia humilis) 50 x 50 x 450mm', 0.15, '\nVariété : Swietenia humilis \nAutre nom : Acajou d''Amérique \nFamille: Meliaceae \nOrigine : Amérique centrale \nCouleur : brun clair à brun rouge avec des reflets dorés\n\nDensité 550kg/m3 \nCaractéristiques : Bois mi dur, maille fine', 'Mahogany wood bow handle roughing \nVariety: Swietenia humilis \nOther name: Mahogany of America \nFamily: Meliaceae \nOrigin: Central America\n\nColor: light brown to red brown with golden highlights \nDensity 550kg / m3 \nFeatures: Medium hardwood, fine mesh', 1, 17.5, 1, '2018-06-01'),
('ARC-NOYER4', 'B0002', 'Ebauche de poignée d''arc en bois de Noyer ( Juglans régia ) 50 x 50 x 450mm', 'Rough Handle Bow Wooden Walnut (Juglans Regia) 50 x 50 x 450mm', 0.25, 'Ebauche de poignée d''arc en bois de Noyer\n\n- VARIETE: noyer d''Europe(Juglans regia L.). \n- ORIGINE: Haute-Marne. \n- DENSITE (sec): 640kg/m3. \n- DURETE: bois tendre. \n- USINAGE: très facile.\n\n- COULEUR: blanc-gris en périphérie, brun au coeur', 'Walnut bow handle roughing \n- VARIETE: European walnut (Juglans regia L.). \n- ORIGIN: Haute-Marne. \n- DENSITY (dry): 640kg / m3. \n- HARDNESS: soft wood. \n- MACHINING: very easy.\n\n- COLOR: gray-white on the periphery, brown in the heart', 1, 13.5, 2, '2018-06-01'),
('ASP152', 'M0005', 'Aspirateur marque Leman capacité 150 litres 2cv monophasé', 'Vacuum cleaner brand Leman capacity 150 liters 2cv single phase', 53, '• Base mécano-soudée montée sur 4 roulettes\nmultidirectionnelles indépendantes.\n• Poignée sur le collecteur pour un déplacement aisé.\n• Moteur asynchrone de 1500W, puissant,\nendurant et silencieux.\n• Hélice en acier rivetée pour une plus grande résistance\n\nà l’usure, et ailettes profilées pour optimiser le débit d’air\net minimiser le bruit.\n• Ventilateur, collecteur, et montants mécano-soudés.\n• Sac de filtration et sac de récupération en coton.\nLe serrage sur le collecteur se fait par une sangle à feuillard métallique passée dans l’ourlet du sac.\n• 2 connexions au ventilateur diamètre 100mm, 1 bouchon obturateur fourni.\n• Tuyau de connexion très résistant (double couche de PVC avec spire en polyamide),\nmais souple et très maniable.\n\n\nCaractéristiques techniques:\n\nPuissance moteur 230 V: 1500w ( 2cv )\nEncombrement (L x l x h): 850 x 610 x 1950mm\nVitesse de rotation: 2950 tr/min\nDiamètre de l’hélice: 305mm\nDiamètre d’entrée du ventilateur: 125mm \nNombre et diamètre de connexion: 2 x 100mm\nLongueur du flexible: 2m\nDébit d’air: 2530 m3/h\nSac de récupération: 1 x 150 litres\nFiltration des sacs: 35µ\nPoids total: 49kg\nColisage (mm): 920 x 580 x 580 Poids brut: 55kg\n\n\nFournitures standard :\nLa machine est livrée avec 1 sac plastique, 1 bouchon obturateurl, 2 mètres de flexible, 2 colliers de serrage, clés et notice d’utilisation\n\nGarantie 2 ans\n\nex ASP150', '• Welded base mounted on 4 wheels\nmultidirectional independent.\n• Handle on the manifold for easy movement.\n• 1500W asynchronous motor, powerful,\nenduring and silent.\n• Riveted steel propeller for greater strength\n\nto wear, and profiled fins to optimize airflow\nand minimize the noise.\n• Fan, collector, and mechanically welded uprights.\n• Bag of filtration and bag of recovery in cotton.\nClamping on the manifold is through a metal strap strap passed through the hem of the bag.\n• 2 connections to 100mm diameter fan, 1 blanking plug provided.\n• Highly resistant connection pipe (double layer of PVC with polyamide coil),\n\nbut flexible and very manageable.\n\nTechnical characteristics:\n\n230 V motor power: 1500w (2hp)\nOverall dimensions (L x W x H): 850 x 610 x 1950mm\nRotation speed: 2950 rpm\nDiameter of the propeller: 305mm\nFan inlet diameter: 125mm\n\nNumber and diameter of connection: 2 x 100mm\nLength of the hose: 2m\nAir flow: 2530 m3 / h\nRecovery bag: 1 x 150 liters\nFiltration of bags: 35?\nTotal weight: 49kg\nPacking (mm): 920 x 580 x 580 Gross weight: 55kg\n\nStandard supplies:\n\nThe machine is delivered with 1 plastic bag, 1 shutter plug, 2 meters of hose, 2 clamps, keys and instructions for use\n\n2 years warranty\n\nex ASP150', 1, 284.91, 23, '2018-06-01'),
('ASP152T', 'M0006', 'Aspirateur marque Leman capacité 150 litres 2cv triphasé', 'Vacuum cleaner brand Leman capacity 150 liters 2cv three-phase', 53, '• Base mécano-soudée montée sur 4 roulettes\nmultidirectionnelles indépendantes.\n\n• Poignée sur le collecteur pour un déplacement aisé.\n• Moteur asynchrone de 1500W, puissant,\nendurant et silencieux.\n• Hélice en acier rivetée pour une plus grande résistance\nà l’usure, et ailettes profilées pour optimiser le débit d’air\net minimiser le bruit.\n\n• Ventilateur, collecteur, et montants mécano-soudés.\n• Sac de filtration et sac de récupération en coton.\nLe serrage sur le collecteur se fait par une sangle à feuillard métallique passée dans l’ourlet du sac.\n• 2 connexions au ventilateur diamètre 100mm, 1 bouchon obturateur fourni.\n• Tuyau de connexion très résistant (double couche de PVC avec spire en polyamide),\nmais souple et très maniable.\n\nCaractéristiques techniques:\n\n\nPuissance moteur 380 V: 1500w ( 2cv ) triphasé\nEncombrement (L x l x h): 850 x 610 x 1950mm\nVitesse de rotation: 2950 tr/min\nDiamètre de l’hélice: 305mm\nDiamètre d’entrée du ventilateur: 125mm \nNombre et diamètre de connexion: 2 x 100mm\nLongueur du flexible: 2m\nDébit d’air: 2530 m3/h\nSac de récupération: 1 x 150 litres\nFiltration des sacs: 35µ\nPoids total: 49kg\nColisage (mm): 920 x 580 x 580 Poids brut: 55kg\n\nFournitures standard :\n\nLa machine est livrée avec 1 sac plastique, 1 bouchon obturateurl, 2 mètres de flexible, 2 colliers de serrage, clés et notice d’utilisation\n\nGarantie 2 ans\n\nEx ASP150T', '• Welded base mounted on 4 wheels\nmultidirectional independent.\n• Handle on the manifold for easy movement.\n• 1500W asynchronous motor, powerful,\nenduring and silent.\n• Riveted steel propeller for greater strength\n\nto wear, and profiled fins to optimize airflow\nand minimize the noise.\n• Fan, collector, and mechanically welded uprights.\n• Bag of filtration and bag of recovery in cotton.\nClamping on the manifold is through a metal strap strap passed through the hem of the bag.\n• 2 connections to 100mm diameter fan, 1 blanking plug provided.\n• Highly resistant connection pipe (double layer of PVC with polyamide coil),\nbut flexible and very manageable.\n\nTechnical characteristics:\n\n\n380 V motor power: 1500w (2hp) three phase\nOverall dimensions (L x W x H): 850 x 610 x 1950mm\nRotation speed: 2950 rpm\nDiameter of the propeller: 305mm\nFan inlet diameter: 125mm\nNumber and diameter of connection: 2 x 100mm\n\nLength of the hose: 2m\nAir flow: 2530 m3 / h\nRecovery bag: 1 x 150 liters\nFiltration of bags: 35?\nTotal weight: 49kg\nPacking (mm): 920 x 580 x 580 Gross weight: 55kg\n\nStandard supplies:\n\nThe machine is delivered with 1 plastic bag, 1 shutter plug, 2 meters of hose, 2 clamps, keys and instructions for use\n\n2 years warranty\n\nEx ASP150T', 1, 284.91, 23, '2018-06-01'),
('AVIV-CEMBRO1', 'B0014', 'Avivé raboté de Pin Cembro ( Arolle ) pour sculpteur 300 x 140/200 x 23mm', 'Planked Planed Pin Cembro (Arolle) for Sculptor 300 x 140/200 x 23mm', 1.2, NULL, NULL, 1, 14, 8, '2018-06-01'),
('BGM-100', 'M0020', 'Kit de montage, tourets à sec', 'Mounting kit, dry drums', 2, 'Permet d''utiliser les gabarits TORMEK devant votre touret à sec. Contient XB-100, US 105 + instructions', 'Allows TORMEK templates to be used in front of your dry drum. Contains XB-100, US 105 + instructions', 1, 42.72, 29, '2018-06-01'),
('CAR-ACA1', 'B0015', 'Carrelet de bois d''Acacia 50x50x200mm', 'Acacia wood tile 50x50x200mm', 0.06, 'Carrelets d''acacia préparés pour le tournage\n\nVARIETE: Robinier faux acacia, Robinia pseudoacacia \nAutres noms\nAcacia, faux acacia, robinie (All.), robinia (Ang.)\nORIGINE: France.\nCOULEUR: Bois parfait jaune verdâtre à l''état frais puis brun doré clair.\nAubier très mince distinct jaune clair.\n\nDENSITE: 700 à 800 kg/m3 \nExcellente Durabilité \nIl se tourne très bien s''il est bien coupé, prend un très beau poli (ne pas poncer trop aux mêmes endroits, fendilles)\nmais il est très dur à creuser en bois de bout. Il s''agit d''un bois siliceux qu''il vaut mieux travailler avec des outils en acier dur (H.S.S.).', 'Acacia squares prepared for filming\n\nVARIETY: Robinia acacia, Robinia pseudoacacia\nOther names \nAcacia, false acacia, robinia (All.), Robinia (Ang.)\nORIGIN: France.\nCOLOR: Perfect greenish yellow wood in fresh state then pale golden brown. Sapwood very thin distinct pale yellow.\nDENSITY: 700 to 800 kg / m3\n\nExcellent Durability \nIt turns very well if it is well cut, takes a very nice polish (do not sand too much in the same places, fendilles)\nbut it is very hard to dig in end wood. It is a siliceous wood that is best treated with hard steel tools (H.S.S.).', 1, 3.36, 9, '2018-06-01'),
('CAR-ACA2', 'B0016', 'Carrelet de bois d''Acacia 80x80x400mm', 'Acacia wood tile 80x80x400mm', 0.08, 'Carrelets d''acacia préparés pour le tournage\n\nVARIETE: Robinier faux acacia, Robinia pseudoacacia \nAutres noms\nAcacia, faux acacia, robinie (All.), robinia (Ang.)\nORIGINE: France.\nCOULEUR: Bois parfait jaune verdâtre à l''état frais puis brun doré clair.\nAubier très mince distinct jaune clair.\n\nDENSITE: 700 à 800 kg/m3 \nExcellente Durabilité \nIl se tourne très bien s''il est bien coupé, prend un très beau poli (ne pas poncer trop aux mêmes endroits, fendilles)\nmais il est très dur à creuser en bois de bout. Il s''agit d''un bois siliceux qu''il vaut mieux travailler avec des outils en acier dur (H.S.S.).', 'Acacia squares prepared for filming\n\nVARIETY: Robinia acacia, Robinia pseudoacacia\nOther names \nAcacia, false acacia, robinia (All.), Robinia (Ang.)\nORIGIN: France.\nCOLOR: Perfect greenish yellow wood in fresh state then pale golden brown. Sapwood very thin distinct pale yellow.\nDENSITY: 700 to 800 kg / m3\n\nExcellent Durability \nIt turns very well if it is well cut, takes a very nice polish (do not sand too much in the same places, fendilles)\nbut it is very hard to dig in end wood. It is a siliceous wood that is best treated with hard steel tools (H.S.S.).', 1, 11.25, 9, '2018-06-01'),
('CAR-CAROUB1', 'B0017', 'Carrelet de Caroubier 50 x 50 x 200mm', 'Carob tree square 50 x 50 x 200mm', 0.5, 'Carrelet de Caroubier préparé pour le Tournage ou la sculpture .\n\nBois utilisé dans l''Egypte ancienne pour réaliser des statues\n\n- VARIETE: Ceratonia Siliqua\n- AUTRE NOM: Carouge, figuier d''Egypte, fève de Pythagore\n- ORIGINE: pays méditerranéen\n- DENSITE (sec): 500 kg/m3.\n\n- DURETE: bois dur.\n- USINAGE: facile.\n- COULEUR: Bois clair avec un veinage marqué, parfois légèrement rosé\n- UTILISATION: tournage, sculpture, ébénisterie.\n- Sec, paraffiné, prêt à l''emploi.', 'Carob tree slab prepared for turning or carving.\n\nWood used in ancient Egypt to make statues\n\n- VARIETY: Ceratonia Siliqua\n- OTHER NAME: Carouge, fig tree of Egypt, bean of Pythagoras\n- ORIGIN: Mediterranean country\n- DENSITY (dry): 500 kg / m3.\n- HARDNESS: hardwood.\n- MACHINING: easy.\n\n- COLOR: Light wood with a marked veining, sometimes slightly pinkish\n- USE: shooting, sculpture, cabinet making.\n- Dry, waxed, ready to use.', 1, 4.2, 10, '2018-06-01'),
('CAR-CAROUB2', 'B0018', 'Carrelet de Caroubier 100 x 100 x 200mm', 'Carob tree square 100 x 100 x 200mm', 1.3, 'Carrelet de Caroubier préparé pour le Tournage ou la sculpture .\n\nBois utilisé dans l''Egypte ancienne pour réaliser des statues\n\n- VARIETE: Ceratonia Siliqua\n- AUTRE NOM: Carouge, figuier d''Egypte, fève de Pythagore\n- ORIGINE: pays méditerranéen\n- DENSITE (sec): 500 kg/m3.\n\n- DURETE: bois dur.\n- USINAGE: facile.\n- COULEUR: Bois clair avec un veinage marqué, parfois légèrement rosé\n- UTILISATION: tournage, sculpture, ébénisterie.\n- Sec, paraffiné, prêt à l''emploi.', 'Carob tree slab prepared for turning or carving.\n\nWood used in ancient Egypt to make statues\n\n- VARIETY: Ceratonia Siliqua\n- OTHER NAME: Carouge, fig tree of Egypt, bean of Pythagoras\n- ORIGIN: Mediterranean country\n- DENSITY (dry): 500 kg / m3.\n- HARDNESS: hardwood.\n- MACHINING: easy.\n\n- COLOR: Light wood with a marked veining, sometimes slightly pinkish\n- USE: shooting, sculpture, cabinet making.\n- Dry, waxed, ready to use.', 1, 12, 10, '2018-06-01'),
('COM250', 'M0007', 'Combiné LEMAN 5/6 opérations 250 mm Garantie 2 ans', 'Combined LEMAN 5/6 operations 250 mm Warranty 2 years', 400, 'Sortie d’aspiration du combinée : 3 x 100 mm \nPoids : 370 kgs\nColisage (LxlxH) : 1300 x 1130 x 1010 mm \nPoids Brut : 445 kg\n\nGarantie 2 ans', 'Combi suction outlet: 3 x 100 mm\nWeight: 370 kgs\nPacking (LxWxH): 1300 x 1130 x 1010 mm\nGross Weight: 445 kg\n\n2 years warranty', 1, 3784.92, 24, '2018-06-01'),
('COM310', 'M0008', 'Combinée 5/6 opérations 310mm monophasée marque Leman. Garantie 2 ans', 'Combined 5/6 operations 310mm single-phase Leman brand. 2 years warranty', 0.5, 'Fournitures standard:\n\nLa machine est livrée avec 1 lame carbure ø 315 de 40\ndents, 3 fers de coupe ,les presseurs , le guide d’onglet,le\nguide d ‘angle et règle extensible , des bagues de remplissage\net de réglage, des bagues lumière de table ,1 rouleau\nponceur (Ht 120 - Gr100) , le guide pour le travail à l''arbre, clés et notice d''utilisation.\n\nGarantie 2 ans', 'Standard supplies:\n\nThe machine is delivered with 1 carbide blade ø 315 of 40\nteeth, 3 cutting irons, the pressers, the miter guide, the\nangle guide and extensible ruler, filling rings\nand adjustment, rings table light, 1 roll\n\nsander (Ht 120 - Gr100), guide for working at the shaft, keys and instructions for use.\n\n2 years warranty', 1, 5165.54, 24, '2018-06-01'),
('COUT-LP-FERCAL', 'B0007', 'Paire de plaquettes en loupe de Bois de Fer de Californie 6 x 40 x 120mm', 'Pair of California Ironwood magnifying glass wafers 6 x 40 x 120mm', 0.04, 'Rare, quantité limitée ', 'Rare, limited quantity', 0, 26.5, 4, '2018-06-01'),
('COUT-P-ACAC', 'B0006', 'Paire de plaquettes en Acacia 6 x 40 x 120mm', 'Pair of Acacia boards 6 x 40 x 120mm', 0.04, NULL, NULL, 1, 2.51, 4, '2018-06-01'),
('COUT-P-CITRON', 'B0006.1', 'Paire de plaquettes en Citronnier de Ceylan 6 x 40 x 120mm', 'Pair of platelets in Ceylon Lemon tree 6 x 40 x 120mm', 0.04, NULL, NULL, 1, 3.35, 4, '2018-06-01'),
('COUT-STAB1', 'B0003', 'Ebauche de manche 140 x 38 x 32mm en Loupe de Marronnier stabilisée Vert', 'Handle 140 x 38 x 32mm in Horse Chestnut Loupe stabilized Green.', 0.25, 'Dimensions environ 140 x 38 x 32mm.', 'Dimensions approximately 140 x 38 x 32mm.', 1, 26.95, 3, '2018-06-01'),
('COUT-STAB3', 'B0005', 'Ebauche de manche 140 x 40 x 32mm en Loupe de Marronnier stabilisée Bleu / Vert.', 'Handle 140 x 40 x 32mm magnifying Horse Chestnut Blue / Green.', 0.25, 'Dimensions environ 140 x 40 x 32mm.', 'Dimensions about 140 x 40 x 32mm', 1, 17.5, 3, '2018-06-01'),
('COUT-STAB4', 'B0004', 'Ebauche de manche 140 x 38 x 32mm en Loupe d''Erable stabilisée Vert.', 'Handle 140 x 38 x 32mm in Green Stabilized Maple Loupe.', 0.25, 'Dimensions environ 140 x 38 x 32mm.', 'Dimensions approximately 140 x 38 x 32mm.', 1, 26.95, 3, '2018-06-01'),
('DBS-22', 'M0019', 'Gabarit d''Affûtage de Forets HSS TORMEK', 'TORMEK HSS Drill Sharpening Template', 3, 'Permet d''affûter vos forets avec la plus grande précision sur votre affûteuse à eau TORMEK. Vous créerez des pointes à quatre facettes, pour obtenir une performance de perçage optimale. Vous pourrez choisir la meilleure combinaison angle de pointe/angle de dépouille pour chaque affûtage, en fonction du diamètre du foret et du matériau à percer. Il sera possible de refaire des forets complètement usés, et même cassés, en leur restituant la forme idéale.\n\n\nA la différence des affûteuses traditionnelles, l''affûtage TORMEK est refroidi à eau, ce qui est doux pour l''acier. En général, la surchauffe de l''acier ne se voit pas, mais un foret surchauffé se désaffûte rapidement, et peut même casser. En travaillant avec les lois de la physique, et en refroidissant constamment le tranchant, on élimine les risques de surchauffe, de détrempe de l''acier, et de développement de micro-fissures.\n\n\nL''affûtage à 4 facettes donne au foret une vraie pointe, au lieu du bout plat souvent constaté. Une pointe à 4 facettes ne ''ripera'' pas, et réduit considérablement la force d''appui requise pour assurer la pénétration, en comparaison à un foret à bout conique. Cet affûtage engendre une moindre échauffement, prolongeant ainsi la durée de vie du foret.\n\n\nLe gabarit peut se régler pour tout angle de pointe entre 90° et 150°, et pour quatre différents angles de dépouille. Cette souplesse permet de donner au foret la géométrie qui convient le mieux pour chaque opération de perçage. Par exemple, en augmentant l''angle de pointe, tout en diminuant l''angle de dépouille, il est possible de minimiser la formation de bavures en sortie de perçages débouchants.\n\n\nLe porte-foret et les guides sont réalisés avec un maximum de précision, pour garantir que les longueurs des deux tranchants seront quasi-identiques. Ceci est essentiel si on veut que les deux tranchants travaillent de paire, pour percer un trou rond et rectiligne, dont le diamètre ne sera pas plus grand que celui du foret lui-même.\n\n\nAccepte les forets diamètres 3 à 22 mm\nS''adapte sur toute affûteuse TORMEK', 'Allows you to sharpen your drills with the utmost precision on your TORMEK water grinder. You''ll create four-sided spikes for optimal piercing performance. You will be able to choose the best edge angle / draft angle combination for each sharpening, depending on the diameter of the bit and the material to be drilled. It will be possible to remake drills completely worn, and even broken, by restoring the ideal shape.\n\n\nUnlike traditional sharpeners, TORMEK sharpening is water cooled, which is gentle on steel. In general, the overheating of the steel is not visible, but an overheated drill quickly decays, and can even break. By working with the laws of physics, and by constantly cooling the cutting edge, we eliminate the risk of overheating, tempera of steel, and development of micro-cracks.\n\n\nThe 4-facet sharpening gives the drill a true tip, instead of the flat end often found. A 4-facet tip will not ''rip'', and significantly reduces the amount of support required for penetration, compared to a tapered drill bit. This sharpening results in less heating, thus prolonging the life of the forest.\n\n\nThe template can be adjusted for any rake angle between 90 ° and 150 °, and for four different draft angles. This flexibility makes it possible to give the drill the geometry that is best suited for each drilling operation. For example, by increasing the tip angle, while decreasing the draft angle, it is possible to minimize the formation of burrs at the output of through holes.\n\n\nThe drill holder and guides are made with maximum precision, to ensure that the lengths of the two cutting edges will be almost identical. This is essential if you want the two cutting edges to work together, to drill a round and straight hole, the diameter of which will not be greater than that of the drill itself.\n\n\nAccepts drills diameters 3 to 22 mm\nFits on any TORMEK grinding machine', 1, 153.58, 29, '2018-06-01'),
('DC-1300', 'M0002', 'Aspirateur JET modèle DC1300 capacité 90L 230V', 'Vacuum cleaner JET model DC1300 capacity 90L 230V', 28, '- Grâce à l''utilisation de filtres de catégorie G de haute qualité : 99,5% d''efficacité de filtrage des poussières microscopiques de 0.2 à 2 microns\n\n- Résultat optimal d''aspiration grâce à un moteur puissant et à un ventilateur spécialement construit\n- Dispositif de roulettes permet de déplacer l''appareil\n\n- Montage simple du sac avec serrage rapide.\n- Exécution robuste du bâti d''aspiration.\n\nLivré avec : Tuyau d''aspiration 2.5m, sac à copeaux, dispositif roulant\n\n\nCaractéristiques techniques :\n\n\nPuissance : 230V - 0.75 CV\nVolume d''aspiration : 1300 m3/h\nCapacité : 90 litres\nDépression : 1750 Pa\nDiamètre de la buse 100mm\nFiltre : G / 2 microns\nDimensions : 882x479x1623 mm\nPoids : 24 kg', '- Thanks to the use of high quality G class filters: 99.5% microscopic dust filtering efficiency from 0.2 to 2 microns\n\n- Optimal suction result thanks to a powerful motor and a specially built fan\n- Device of casters allows to move the device\n\n- Simple assembly of the bag with quick tightening.\n- Robust execution of the suction frame.\n\nSupplied with: 2.5m suction hose, chip bag, rolling device\n\n\nTechnical characteristics :\n\n\nPower: 230V - 0.75 HP\nSuction volume: 1300 m3 / h\nCapacity: 90 liters\nDepression: 1750 Pa\nDiameter of the nozzle 100mm\nFilter: G / 2 microns\nDimensions: 882x479x1623 mm\nWeight: 24 kg', 1, 451.54, 21, '2018-06-01'),
('DC1100A', 'M0001', 'Aspirateur JET modèle DC-1100A capacité 200L 230V ', 'Vacuum cleaner JET model DC-1100A capacity 200L 230V', 58, '- Roue de ventilateur équilivrée avec précision, garantissant un fonctionnement silencieux et exempt de vibrations\n\n- Montage facile du sac à copeaux\n- 4 roues pour une bonne mobilité dans votre atelier\n\n- Puissance optimale d''aspiration grâce à un moteur puissant et à une roue de ventilateur de conception spéciale\n- Nouvelle technologie Vortex Cone\n\n- Uniquement l''air et les particules fines accèdent dans la zone du filtre. Il y a moins de problèmes de santé grâce à la concentration réduite de poussière, 98% des copeaux ne sont plus dans le secteur du filtre, on évité ainsi le colmatage.\n\n-La capacité d''aspiration reste constante, le sac à copeaux peut absorber plus de copeaux\n\n\nLivré avec : Cartouche 30 microns, 5 sac à copeaux, dispositif roulant, raccord en Y 2 x 100mm\n\nCaractéristiques techniques :\n\nPuissance : 1.9 CV\nVolume d''aspiration : 1620 m3/h (Ø 150mm) / 1150 m3 (Ø 100mm)\nCapacité : 200 litres\n\nDépression : 1700 Pa\nDiamètre de la buse 150mm (2x100)\nFiltre : 30 microns\nDimensions : 940x510x2000 mm\nPoids : 55 kg', '- Precisely balanced fan wheel, ensuring quiet, vibration-free operation\n\n- Easy assembly of the chip bag\n- 4 wheels for a good mobility in your workshop\n\n- Optimum suction power thanks to a powerful motor and a specially designed fan wheel\n- New technology Vortex Cone\n\n- Only air and fine particles enter the filter area. There are fewer health problems thanks to the reduced concentration of dust, 98% of the chips are no longer in the filter sector, thus avoiding clogging.\n\n-The suction capacity remains constant, the chip bag can absorb more chips\n\nDelivered with: 30 micron cartridge, 5 chip bag, rolling device, 2 x 100mm Y connector\n\n\nTechnical characteristics :\n\nPower: 1.9 HP\nSuction volume: 1620 m3 / h (Ø 150mm) / 1150 m3 (Ø 100mm)\nCapacity: 200 liters\nDepression: 1700 Pa\nDiameter of the nozzle 150mm (2x100)\nFilter: 30 microns\nDimensions: 940x510x2000 mm\nWeight: 55 kg', 1, 420.83, 21, '2018-06-01'),
('EB-1234', 'EBA1', 'Ebauche de poignée d''arc en bois d''amarante', 'Rough Handle Bow of Amaranth Wood\r\n', 500, 'Ebauche de poignée d''arc\r\n\r\n- VARIETE: Amarante (Peltogyne Venosa Benth.)\r\n\r\n- ORIGINE: Amérique du sud.\r\n\r\n- DENSITE (sec): 800 kg/m3.\r\n\r\n- DURETE: considéré comme bois dur.\r\n\r\n- COULEUR: violet (couleur amarante), ne prend toute sa couleur qu''après une exposition à la lumière.\r\n\r\n- UTILISATION: menuiserie, ébénisterie,lutherie, coutellerie,tournage, sculpture.\r\n\r\n- Sec, 1° choix, paraffiné, prêt à l''emploi.\r\n\r\n\r\nL''Amarante est une essence exotique très prisée pour sa couleur naturelle exceptionelle, couleur qui ne se révèle pleinement qu''après une exposition d''un jour ou deux à la lumière.\r\n\r\n', 'Roughing Arc Handle\r\n\r\n- VARIETE: Amaranth (Peltogyne Venosa Benth.)\r\n\r\n- ORIGIN: South America.\r\n\r\n- DENSITY (dry): 800 kg / m3.\r\n\r\n- HARDNESS: considered as hardwood.\r\n\r\n- COLOR: purple (amaranth color), does not take all its color until after exposure to light.\r\n\r\n- USE: carpentry, cabinet making, violin making, cutlery, turning, sculpture.\r\n\r\n- Dry, 1st choice, waxed, ready to use.\r\n\r\n\r\nAmaranth is an exotic essence highly prized for its exceptional natural color, a color that is fully revealed only after a day or two exposure to light.\r\n', 1, 12, 32, '2018-06-01'),
('EB-ARMA4', 'EB-AR', 'Ebauche de poignée d''arc en bois d''amarante', 'Rough Handle Bow of Amaranth Wood', 800, 'Ebauche de poignée d''arc\r\n\r\n- VARIETE: Amarante (Peltogyne Venosa Benth.)\r\n\r\n- ORIGINE: Amérique du sud.\r\n\r\n- DENSITE (sec): 800 kg/m3.\r\n\r\n- DURETE: considéré comme bois dur.\r\n\r\n- COULEUR: violet (couleur amarante), ne prend toute sa couleur qu''après une exposition à la lumière.\r\n\r\n- UTILISATION: menuiserie, ébénisterie,lutherie, coutellerie,tournage, sculpture.\r\n\r\n- Sec, 1° choix, paraffiné, prêt à l''emploi.\r\n\r\n\r\nL''Amarante est une essence exotique très prisée pour sa couleur naturelle exceptionelle, couleur qui ne se révèle pleinement qu''après une exposition d''un jour ou deux à la lumière.', 'Roughing Arc Handle\r\n\r\n- VARIETE: Amaranth (Peltogyne Venosa Benth.)\r\n\r\n- ORIGIN: South America.\r\n\r\n- DENSITY (dry): 800 kg / m3.\r\n\r\n- HARDNESS: considered as hardwood.\r\n\r\n- COLOR: purple (amaranth color), does not take all its color until after exposure to light.\r\n\r\n- USE: carpentry, cabinet making, violin making, cutlery, turning, sculpture.\r\n\r\n- Dry, 1st choice, waxed, ready to use.\r\n\r\n\r\nAmaranth is an exotic essence highly prized for its exceptional natural color, a color that is fully revealed only after a day or two exposure to light.', 1, 12, 32, '2018-06-01'),
('F10-005', 'B0008', 'Filet N°10 largeur 5mm long 1m.', 'Net N ° 10 width 5mm long 1m.', 0.04, NULL, NULL, 1, 3.75, 5, '2018-06-01'),
('F61-006', 'B0009', 'Filet N°61 largeur 6mm long 1m.', 'Net N ° 61 width 6mm long 1m.', 0.04, NULL, NULL, 1, 3.89, 5, '2018-06-01'),
('F65-004', 'B0010', 'Filet N°65 largeur 4mm long 1m.', 'Net N ° 65 width 4mm long 1m.', 0.04, NULL, NULL, 1, 1.56, 5, '2018-06-01'),
('FAVIV-MER1', 'B0013', 'Avivé raboté de Merisier pour sculpteur 300 x 200 x 21mm', 'Planed Cherry Blade for Sculptor 300 x 200 x 21mm', 1.2, 'Pour la réalisation de panneaux sculptés et bas reliefs.Les cotes extérieures sont approximatives à + ou - 2cm \nL''épaisseur à + ou - 1mm\n\nLe merisier est un bois noble, il se travaille assez facilement.', 'For the realization of carved panels and low reliefs.\n\nExternal dimensions are approximate to + or - 2cm\nThickness at + or - 1mm\nThe cherry tree is a noble wood, it works quite easily.', 1, 12, 7, '2018-06-01'),
('HP30V', 'M0013', 'Entraineur HP30 Vario tri avec bras longueur 1050mm.', 'HP30 Vario trainer with arm length 1050mm.', 15, 'Bras longueur 1050mm\n3 galets 120 x 60mm\nVitesses réglables en continu de 3,5 à 24 m / min .\nTri 400V', 'Arm length 1050mm\n3 rollers 120 x 60mm\nSpeeds adjustable continuously from 3.5 to 24 m / min.\nSorting 400V', 1, 1303.75, 27, '2018-06-01'),
('HP32M', 'M0014', 'Entraineur HP32 Junior 220V mono avec bras longueur 450mm.', 'HP32 Junior 220V mono trainer with arm length 450mm.', 15, 'Bras longueur 450mm\n3 galets 80 x 30mm\n4 vitesses 5 - 6,5 - 8 - 11m / min .\nMono 220V', 'Arm length 450mm\n3 rollers 80 x 30mm\n4 speeds 5 - 6.5 - 8 - 11m / min.\nMono 220V', 1, 466.08, 27, '2018-06-01'),
('KSI534017', 'C0018', 'Scie japonaise Silky modèle Pocketboy 170-10 noire', 'Japanese saw Silky model Pocketboy 170-10 black', 1.5, NULL, NULL, 1, 30.19, 20, '2018-06-01'),
('KSI534117', 'C0019', 'Lame Pocketboy 170', 'Pocketboy 170 Blade', 0.5, NULL, NULL, 1, 1.56, 20, '2018-06-01'),
('KSI635036', 'C0016', 'Scie japonaise Silky modèle Bigboy 360-10 Noire (grosse denture)', 'Japanese Silky Saw Model Bigboy 360-10 Black (Large Tooth)', 2.5, NULL, NULL, 1, 54.35, 19, '2018-06-01'),
('KSI635236', 'C0017', 'Scie japonaise Silky modèle Bigboy 360-13 bleu (denture fine)', 'Silky Japanese Saw Model Bigboy 360-13 Blue (Fine Tooth)', 2.5, NULL, NULL, 1, 1.56, 19, '2018-06-01'),
('PS-CHENE-US', 'B0011', 'Feuille de placage jointé CHENE D''AMERIQUE dimensions 2m50 x 1m25.', 'Joined veneer sheet CHENE D''AMERIQUE dimensions 2m50 x 1m25.', 0.04, 'Prêt à l''emploi, vous le couperez avec une simple paire de ciseaux et le collerez en un tour de main.\nUn produit réalise à partir de bois tranchés défibrés poncés et jointés sur papier.\nIl est possible de le vernir, de le teinter, de le cirer pour l''adapter au goût de chacun.\n\nDescriptif produit : \nNom botanique : Quercus Alba \nNom local : White Oak \nProvenance : Amérique du nord \nDensité : 0.60 à 0.80\n\nDescription : Bois brun rouge à gris .\nNuances blondes et mailles possibles. ', 'Ready to use, you will cut it with a simple pair of scissors and glue it in a jiffy.\nA product made from sanded sliced woods sanded and joined on paper.\nIt is possible to varnish, tint, polish to suit the taste of each.\n\nProduct description : \nBotanical Name: Quercus Alba \nLocal name: White Oak \nProvenance: North America \nDensity: 0.60 to 0.80\n\nDescription: Brown wood red to gray. \nBlonde shades and possible meshes.', 1, 157.18, 6, '2018-06-01'),
('PS-WENGUE', 'B0012', 'Feuille de placage jointé WENGUE dimensions 2m50 x 1m25.', 'WENGUE jointed veneer sheet dimensions 2m50 x 1m25.', 0.04, 'Prêt à l''emploi, vous le couperez avec une simple paire de ciseaux et le collerez en un tour de main.\nUn produit réalise à partir de bois tranchés défibrés poncés et jointés sur papier.\nIl est possible de le vernir, de le teinter, de le cirer pour l''adapter au goût de chacun.\nDescriptif produit : \nNom botanique : Millettia Laurentii \nNom local : WENGE Provenance : AFRIQUE\nDensité : 0.80 à 0.95 \nDescription : Bois brun plus ou moins foncé. Poli difficile mais beau.', 'Ready to use, you will cut it with a simple pair of scissors and glue it in a jiffy.\nA product made from sanded sliced woods sanded and joined on paper.\n\nIt is possible to varnish, tint, polish to suit the taste of each.\nProduct description:\nBotanical Name: Millettia Laurentii\nLocal name: WENGE\nProvenance: AFRICA\nDensity: 0.80 to 0.95\nDescription: More or less dark brown wood. Polite difficult but beautiful.', 1, 261.73, 6, '2018-06-01'),
('T-4', 'M0017', 'Affûteuse Tormek T4 ', 'Tormek T4 grinding machine', 22, 'Les affûteuses à eau Tormek sont présentent sur la marché Français depuis près de 20 ans.\n\nElles sont copiées mais leurs copies n''ont rien à voir avec les originales.\n\nLes affûteuses Tormek sont fiables.\n\nPour information, depuis que FTFI vends ces affûteuses ( depuis 2001 ) très peu de machines ont été en SAV...\n\nLa T-4 est livrée sans dispositif, ce qui permet de choisir le dispositif le plus adapté.', 'Tormek water grinding machines have been present on the French market for almost 20 years.\n\nThey are copied but their copies have nothing to do with the original ones.\n\nTormek sharpeners are reliable.\n\nFor information, since FTFI sell these sharpeners (since 2001) very few machines have been in SAV ...\n\nThe T-4 is delivered without a device, which makes it possible to choose the most suitable device.', 1, 293.28, 29, '2018-06-01'),
('T-8', 'M0018', 'Affûteuse Tormek T8', 'Tormek T8 Sharpening machine', 22, 'Tormek optimise la précision!\n\nTormek met la barre encore plus haut avec un bâti révolutionnaire, entièrement en fonte, sur son nouveau modèle T-8. Sa nouvelle conception incorporant plusieurs améliorations de détail vous garantit les conditions optimales pour un affûtage réussi aux résultats parfaits.\n\nSur le nouveau modèle Tormek T-8, les manchons, précédemment rapportés, sont désormais intégrés à un bâti tout fonte. Cette innovation réduit au minimum le jeu du Support Universel, améliore le contrôle de l’affûtage, et augmente la précision du résultat final.\n\nLe nouveau modèle utilise le système d’entraînement innovant et caractéristique de la marque Tormek. Ce système efficace et unique, présent sur toutes les machines Tormek, maintient une vitesse constante, même à pleine charge.\n\nLa Pierre d’Origine Tormek permet d’affûter tous types d’acier, y compris l’acier rapide (HSS)\n\nLe Bac à Eau avancé a encore été amélioré, avec une montée par vis pour faciliter la pose, et un racloir aimanté pour un nettoyage efficace. De plus, l’utilisateur bénéficie du SE-77, gabarit perfectionné pour tranchants droits, désormais équipé d’un côté mobile pour le fin réglage, permettant d’obtenir au choix un parfait angle droit, ou un tranchant\n\n\nDimensions:\nLargeur 270mm\nProfondeur 270mm\nHauteur 330mm\nPoids machine seule 14,8kg\nPoids avec emballage et accessoires 17,8kg', 'Tormek optimizes accuracy!\n\nTormek sets the bar even higher with a revolutionary cast-iron frame on its new T-8 model. Its new design incorporating several detail enhancements guarantees optimal conditions for successful sharpening to perfect results.\n\nOn the new Tormek T-8 model, the sleeves, previously reported, are now integrated into a cast iron frame. This innovation minimizes Universal Support play, improves grinding control, and increases the accuracy of the final result.\n\nThe new model uses the innovative and characteristic Tormek drive system. This efficient and unique system, present on all Tormek machines, maintains a constant speed, even at full load.\n\nThe Tormek Stone of Origin allows to sharpen all types of steel, including high speed steel (HSS)\n\nThe Advanced Water Tray has been further improved, with a screw mount for ease of installation, and a magnetic scraper for efficient cleaning. In addition, the user benefits from the SE-77, an advanced template for sharp edges, now equipped with a movable side for fine adjustment, allowing you to choose a perfect right angle, or a sharp edge\n\n\nDimensions:\nWidth 270mm\nDepth 270mm\nHeight 330mm\nMachine weight only 14,8kg\nWeight with packaging and accessories 17,8kg', 1, 510.9, 29, '2018-06-01'),
('TESTT', 'TESTT', 'Ebauchoir à lame biseautée en 30mm', 'Chopping blade with 30mm beveled blade', 0.55, '', '', 1, 10.42, 17, '2018-06-01'),
('TU-216-2330K-E', 'C0005', 'Aiguilleur Stanley Bostitch modèle TU-216-2330K-E', 'Stanley Bostitch Sharpener Model TU-216-2330K-E', 1.2, 'Utilisation :\n\nPour la pose de moulure ou tous travaux divers exigeant une fixation quasi invisible\npointe diamètre 0,6mm.\n\nCaractéristiques de l’outil:\n\nPoignée caoutchouc ergonomique\nCorps aluminium\nPuissance réglable\nEchappement arrière\nGâchette double sécurité\n\nChargement du magasin sur le coté\n\nPoids 1 kg\nPression d''utilisation de 4,8 à 7 bars\nConsommation d''air 0,5L/ coups\nChargeur 200 aiguilles', 'Use :\n\nFor laying molding or any other work requiring almost invisible fixation\n\ntip diameter 0.6mm.\n\nFeatures of the tool:\n\nErgonomic rubber grip\nAluminum body\nAdjustable power\nRear exhaust\nDouble safety trigger\n\nLoading the store on the side\nWeight 1 kg\nOperating pressure 4.8 to 7 bar\nAir consumption 0,5L / shots\n200 needle loader', 1, 210, 14, '2018-06-01'),
('VS115/B', 'M0012', 'Scie à chantourner Colombo modèle Varispeed 115/B CE bras longueur utile 115cm.', 'Scroll saw Colombo model Varispeed 115 / B CE arm length useful 115cm.', 220, 'La scie sauteuse VariSpeed est une machine extrêmement professionnelle, versatile, offrant des performances élevées et une très grande précision de coupe. Elle convient très bien pour les travaux de marqueterie et peut être la solution à tous les nombreux problèmes de sciage, droit ou galbé avec des courbes prononcées.\n\nElle permet de travailler aisément sur du bois, contreplaqué, plastique et alliages légers dans le secteur de l''artisanat d''art, modélisme, bricolage et menuiserie pour les meubles. La sécurité, garantie par la conformité aux Directives Européennes (marque CE), associée à une utilisation facile, à une maintenance simple et limitée, et par-dessus tout par le grand SILENCE de la machine, en font une machine qui est appréciée aussi bien par les professionnels que par les amateurs mais aussi par les écoles techniques et professionnelles.\n\nUn aspect important de la sécurité est représenté par le BLOCAGE IMMEDIAT DE LA TIGE SUPERIEURE EN CAS DE RUPTURE DE LA LAME.\n\nDIMENSIONS MACHINE: 175 x 61 x 156cm\n\nDIMENSION AVEC EMBALLAGE: 193 x 70 x 175cm\n\nPOIDS NET: 150 kg\nPOIDS BRUT: 200 kg\n(EMBALLAGE LEGER CAGE)', 'The VariSpeed ??jigsaw is an extremely professional, versatile machine with high performance and high cutting accuracy. It is very suitable for marquetry work and can be the solution to all the many problems of sawing, straight or curved with pronounced curves.\n\nIt makes it easy to work on wood, plywood, plastic and light alloys in the field of crafts, model making, DIY and carpentry for furniture. Safety, guaranteed by compliance with the European Directives (CE mark), combined with easy operation, simple and limited maintenance, and above all by the great SILENCE of the machine, make it a machine that is appreciated as well. by the professionals than by the amateurs but also by the technical and professional schools.\n\nAn important aspect of safety is represented by the IMMEDIATE BLOCKING OF THE UPPER ROD IN CASE OF BLADE BREAK.\n\n\nDIMENSIONS MACHINE: 175 x 61 x 156cm\nDIMENSION WITH PACKING: 193 x 70 x 175cm\n\nNET WEIGHT: 150 kg\nRAW WEIGHT: 200 kg\n(LIGHT PACKAGING CAGE)', 1, 4373.04, 26, '2018-06-01');
INSERT INTO `Variantes_Articles` (`refCommercial`, `refFournisseur`, `nomVarianteFR`, `nomVarianteEN`, `poidsVariante`, `descriptionVarianteFR`, `descriptionVarianteEN`, `disponibiliteVariante`, `prixVariante`, `idArticle`, `dateAjout`) VALUES
('VS85/B', 'M0011', 'Scie à chantourner Colombo modèle Varispeed 85/B CE bras longueur utile 85cm.', 'Scroll saw Colombo model Varispeed 85 / B CE arm length useful 85cm.', 190, 'La scie sauteuse VariSpeed est une machine extrêmement professionnelle, versatile, offrant des performances élevées et une très grande précision de coupe. Elle convient très bien pour les travaux de marqueterie et peut être la solution à tous les nombreux problèmes de sciage, droit ou galbé avec des courbes prononcées.\n\nElle permet de travailler aisément sur du bois, contreplaqué, plastique et alliages légers dans le secteur de l''artisanat d''art, modélisme, bricolage et menuiserie pour les meubles. La sécurité, garantie par la conformité aux Directives Européennes (marque CE), associée à une utilisation facile, à une maintenance simple et limitée, et par-dessus tout par le grand SILENCE de la machine, en font une machine qui est appréciée aussi bien par les professionnels que par les amateurs mais aussi par les écoles techniques et professionnelles.\n\nUn aspect important de la sécurité est représenté par le BLOCAGE IMMEDIAT DE LA TIGE SUPERIEURE EN CAS DE RUPTURE DE LA LAME.\n\n\nDIMENSIONS MACHINE: 140 x 61 x 156cm\nDIMENSION AVEC EMBALLAGE: 150 x 70 x 175cm\n\nPOIDS NET: 140kg\nPOIDS BRUT: 180kg\n(EMBALLAGE LEGER CAGE)', 'The VariSpeed jigsaw is an extremely professional, versatile machine with high performance and high cutting accuracy. It is very suitable for marquetry work and can be the solution to all the many problems of sawing, straight or curved with pronounced curves.\r\n\r\nIt makes it easy to work on wood, plywood, plastic and light alloys in the field of crafts, model making, DIY and carpentry for furniture. Safety, guaranteed by compliance with the European Directives (CE mark), combined with easy operation, simple and limited maintenance, and above all by the great SILENCE of the machine, make it a machine that is appreciated as well. by the professionals than by the amateurs but also by the technical and professional schools.\r\n\r\nAn important aspect of safety is represented by the IMMEDIATE BLOCKING OF THE UPPER ROD IN CASE OF BLADE BREAK.\r\n\r\nDIMENSIONS MACHINE: 140 x 61 x 156cm\r\n\r\nDIMENSION WITH PACKING: 150 x 70 x 175cm\r\n\r\nNET WEIGHT: 140kg\r\nRAW WEIGHT: 180kg\r\n(LIGHT PACKAGING CAGE)', 1, 4055.2, 26, '2018-06-01');

--
-- Déclencheurs `Variantes_Articles`
--
DELIMITER $$
CREATE TRIGGER `TRG_VarArticles_On_Insert_Row_Dates` AFTER UPDATE ON `variantes_articles`
 FOR EACH ROW BEGIN
        insert into Variantes_ArticlesArchive(idVarArticlesArchive,refCommercial,refFournisseur,nomVarianteFR,nomVarianteEN,poidsVariante,descriptionVarianteFR,descriptionVarianteEN,prixVariante,idArticle,dateAjout,dateHisto)
        values
        (Null,Old.refCommercial,Old.refFournisseur,Old.nomVarianteFR,Old.nomVarianteEN,Old.poidsVariante,Old.descriptionVarianteFR,Old.descriptionVarianteEN,Old.prixVariante,Old.idArticle,Old.dateAjout,NOW());
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `Variantes_ArticlesArchive`
--

CREATE TABLE `Variantes_ArticlesArchive` (
  `idVarArticlesArchive` int(11) NOT NULL,
  `refCommercial` varchar(25) NOT NULL,
  `refFournisseur` varchar(100) NOT NULL,
  `nomVarianteFR` text NOT NULL,
  `nomVarianteEN` text NOT NULL,
  `poidsVariante` float NOT NULL,
  `descriptionVarianteFR` text,
  `descriptionVarianteEN` text,
  `disponibiliteVariante` int(11) NOT NULL,
  `prixVariante` float NOT NULL,
  `idArticle` int(11) NOT NULL,
  `dateAjout` date NOT NULL,
  `dateHisto` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Variantes_ArticlesArchive`
--

INSERT INTO `Variantes_ArticlesArchive` (`idVarArticlesArchive`, `refCommercial`, `refFournisseur`, `nomVarianteFR`, `nomVarianteEN`, `poidsVariante`, `descriptionVarianteFR`, `descriptionVarianteEN`, `disponibiliteVariante`, `prixVariante`, `idArticle`, `dateAjout`, `dateHisto`) VALUES
(1, 'test', 'test', 'test', 'test', 0, 'Bonjour', 'Bonjour', 0, 12, 9, '2018-12-13', '2018-12-13 12:50:06');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `ventes`
--
CREATE TABLE `ventes` (
`nbVente` bigint(31)
,`refCommercial` varchar(25)
);

-- --------------------------------------------------------

--
-- Structure de la vue `ventes`
--
DROP TABLE IF EXISTS `ventes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ventes` AS (select (count(`ajouter`.`refCommercial`) * `ajouter`.`quantite`) AS `nbVente`,`ajouter`.`refCommercial` AS `refCommercial` from `ajouter` group by `ajouter`.`refCommercial`);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Index pour la table `ajouter`
--
ALTER TABLE `ajouter`
  ADD PRIMARY KEY (`idFacture`,`refCommercial`),
  ADD KEY `ajouter_Variantes_Articles0_FK` (`refCommercial`);

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `FK_Articles_idSousCategorie` (`idSousCategorie`),
  ADD KEY `FK_Articles_idFournisseur` (`idFournisseur`);

--
-- Index pour la table `ArticlesArchive`
--
ALTER TABLE `ArticlesArchive`
  ADD PRIMARY KEY (`idArticleArchive`);

--
-- Index pour la table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `CategoriesArchive`
--
ALTER TABLE `CategoriesArchive`
  ADD PRIMARY KEY (`idCatArchive`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Index pour la table `Factures`
--
ALTER TABLE `Factures`
  ADD PRIMARY KEY (`idFacture`),
  ADD KEY `Factures_Utilisateurs_FK` (`idUtilisateur`),
  ADD KEY `Factures_InformationsFacturation0_FK` (`idInformation`);

--
-- Index pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`idFournisseur`),
  ADD KEY `Fournisseurs_Pays_FK` (`idPays`);

--
-- Index pour la table `FournisseursArchive`
--
ALTER TABLE `FournisseursArchive`
  ADD PRIMARY KEY (`idFournArchive`);

--
-- Index pour la table `Informations`
--
ALTER TABLE `Informations`
  ADD PRIMARY KEY (`idInformation`);

--
-- Index pour la table `InformationsFacturation`
--
ALTER TABLE `InformationsFacturation`
  ADD PRIMARY KEY (`idInformation`);

--
-- Index pour la table `InformationsLivraison`
--
ALTER TABLE `InformationsLivraison`
  ADD PRIMARY KEY (`idInformation`);

--
-- Index pour la table `Medias`
--
ALTER TABLE `Medias`
  ADD PRIMARY KEY (`idMedia`),
  ADD KEY `idNews` (`idNews`),
  ADD KEY `idCategorie` (`idCategorie`),
  ADD KEY `idArticle` (`idSousCategorie`),
  ADD KEY `refCommercial` (`refCommercial`),
  ADD KEY `idSousCategorie` (`idArticle`);

--
-- Index pour la table `MediasArchive`
--
ALTER TABLE `MediasArchive`
  ADD PRIMARY KEY (`idMediaArchive`);

--
-- Index pour la table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`idNews`);

--
-- Index pour la table `NewsArchive`
--
ALTER TABLE `NewsArchive`
  ADD PRIMARY KEY (`idNewsArchive`);

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`idPays`);

--
-- Index pour la table `situer2`
--
ALTER TABLE `situer2`
  ADD PRIMARY KEY (`idInformation`,`idPays`),
  ADD KEY `situer2_Pays0_FK` (`idPays`);

--
-- Index pour la table `Sous_Categories`
--
ALTER TABLE `Sous_Categories`
  ADD PRIMARY KEY (`idSousCategorie`),
  ADD KEY `Sous_Categories_Categories_FK` (`idCategorie`);

--
-- Index pour la table `Sous_CategoriesArchive`
--
ALTER TABLE `Sous_CategoriesArchive`
  ADD PRIMARY KEY (`idSousCatArchive`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Index pour la table `Variantes_Articles`
--
ALTER TABLE `Variantes_Articles`
  ADD PRIMARY KEY (`refCommercial`),
  ADD KEY `FK_Variantes_Articles_idArticle` (`idArticle`);

--
-- Index pour la table `Variantes_ArticlesArchive`
--
ALTER TABLE `Variantes_ArticlesArchive`
  ADD PRIMARY KEY (`idVarArticlesArchive`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `ArticlesArchive`
--
ALTER TABLE `ArticlesArchive`
  MODIFY `idArticleArchive` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `CategoriesArchive`
--
ALTER TABLE `CategoriesArchive`
  MODIFY `idCatArchive` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Factures`
--
ALTER TABLE `Factures`
  MODIFY `idFacture` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  MODIFY `idFournisseur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `FournisseursArchive`
--
ALTER TABLE `FournisseursArchive`
  MODIFY `idFournArchive` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Informations`
--
ALTER TABLE `Informations`
  MODIFY `idInformation` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `Medias`
--
ALTER TABLE `Medias`
  MODIFY `idMedia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `MediasArchive`
--
ALTER TABLE `MediasArchive`
  MODIFY `idMediaArchive` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `News`
--
ALTER TABLE `News`
  MODIFY `idNews` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `NewsArchive`
--
ALTER TABLE `NewsArchive`
  MODIFY `idNewsArchive` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Sous_Categories`
--
ALTER TABLE `Sous_Categories`
  MODIFY `idSousCategorie` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `Sous_CategoriesArchive`
--
ALTER TABLE `Sous_CategoriesArchive`
  MODIFY `idSousCatArchive` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Variantes_ArticlesArchive`
--
ALTER TABLE `Variantes_ArticlesArchive`
  MODIFY `idVarArticlesArchive` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `Admin_Utilisateurs_FK` FOREIGN KEY (`idUtilisateur`) REFERENCES `Utilisateurs` (`idUtilisateur`);

--
-- Contraintes pour la table `ajouter`
--
ALTER TABLE `ajouter`
  ADD CONSTRAINT `ajouter_Factures_FK` FOREIGN KEY (`idFacture`) REFERENCES `Factures` (`idFacture`),
  ADD CONSTRAINT `ajouter_Variantes_Articles0_FK` FOREIGN KEY (`refCommercial`) REFERENCES `Variantes_Articles` (`refCommercial`);

--
-- Contraintes pour la table `Client`
--
ALTER TABLE `Client`
  ADD CONSTRAINT `Client_Utilisateurs_FK` FOREIGN KEY (`idUtilisateur`) REFERENCES `Utilisateurs` (`idUtilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Factures`
--
ALTER TABLE `Factures`
  ADD CONSTRAINT `Factures_InformationsFacturation0_FK` FOREIGN KEY (`idInformation`) REFERENCES `InformationsFacturation` (`idInformation`),
  ADD CONSTRAINT `Factures_Utilisateurs_FK` FOREIGN KEY (`idUtilisateur`) REFERENCES `Utilisateurs` (`idUtilisateur`);

--
-- Contraintes pour la table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD CONSTRAINT `Fournisseurs_Pays_FK` FOREIGN KEY (`idPays`) REFERENCES `Pays` (`idPays`) ON DELETE CASCADE;

--
-- Contraintes pour la table `InformationsFacturation`
--
ALTER TABLE `InformationsFacturation`
  ADD CONSTRAINT `InformationsFacturation_Informations_FK` FOREIGN KEY (`idInformation`) REFERENCES `Informations` (`idInformation`);

--
-- Contraintes pour la table `InformationsLivraison`
--
ALTER TABLE `InformationsLivraison`
  ADD CONSTRAINT `InformationsLivraison_Informations_FK` FOREIGN KEY (`idInformation`) REFERENCES `Informations` (`idInformation`);

--
-- Contraintes pour la table `situer2`
--
ALTER TABLE `situer2`
  ADD CONSTRAINT `situer2_Informations_FK` FOREIGN KEY (`idInformation`) REFERENCES `Informations` (`idInformation`),
  ADD CONSTRAINT `situer2_Pays0_FK` FOREIGN KEY (`idPays`) REFERENCES `Pays` (`idPays`);

--
-- Contraintes pour la table `Sous_Categories`
--
ALTER TABLE `Sous_Categories`
  ADD CONSTRAINT `Sous_Categories_Categories_FK` FOREIGN KEY (`idCategorie`) REFERENCES `Categories` (`idCategorie`) ON DELETE CASCADE;
