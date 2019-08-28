INSERT INTO `CLASSES` (`id_Classe`, `nb_Etudiant`, `nom_Classe`) VALUES
(1, 25, 'MSIA17'),
(2, 34, 'BTP'),
(3, 36, 'MSIA18'),
(4, 15, 'MSICP19'),
(5, 26, 'EXIA');

INSERT INTO `FORMATEURS` (`id_Formateur`, `mail`, `nom`, `tel`) VALUES
(1, 'a@f.d', 'Jean', '852963741'),
(2, 'e@f.a', 'Pierre', '753156'),
(3, 'v@fd.d', 'Papin', '071847633');

INSERT INTO `SALLES` (`id_Salle`, `nb_Salle`, `nom_Salle`, `num_Salle`, `type`) VALUES
(1, 40, 'BRUXELLES', 101, 1),
(2, 65, 'PARIS', 205, 2),
(3, 85, 'LUXEMBOURG', 136, 3),
(4, 25, 'BERNE', 36, 3);

INSERT INTO `FORMATIONS` (`id_Formation`, `date_Debut`, `nb_DemiJournees`, `nom_Formation`, `id_Classe`, `id_Formateur`, `id_Salle`, `is_ApresMidi`) VALUES
(1, '2019-08-28', 6, 'JaveEE', 1, 2, 4, b'0'),
(2, '2019-09-02', 4, 'NodeJS', 2, 2, 2, b'0'),
(3, '2019-09-17', 3, 'Securite', 5, 3, 2, b'1');