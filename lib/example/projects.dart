import "package:hello_world/models/project.dart";

List<Project> projects = [
  Project(
      name: "PLIB",
      technologies: [
        "Redux",
        "React",
        "MongoDB",
        "Express",
        "NodeJS",
        "JavaScript",
        "Google Cloud",
        "tailwindcss",
      ],
      year: 2022,
      description:
          "Plib es un proyecto en colaboración con la ONU, cuyo objetivo es ayudar a productores locales a contactar con aliados financieros y comerciales",
      image: "assets/img/plib.png"),
  Project(
      name: "Kuxatur",
      technologies: [
        "React",
        "JavaScript",
        "tailwindcss",
      ],
      year: 2022,
      description:
          "Es un proyecto financiado por el Global Environment Facility (GEF) e implementado por el Programa de Naciones Unidas para el Desarrollo (PNUD) junto con la Secretaría de Turismo (SECTUR), en asociación con organizaciones de la sociedad civil: Amigos de Sian Ka´an (ASK), Conservación del Territorio Insular Mexicano (ISLA), y el Fondo Mundial para la Naturaleza (WWF), para asegurar la integración de criterios de conservación de la biodiversidad para el sector turístico en México con énfasis en los ecosistemas costeros ricos en biodiversidad.",
      image: "assets/img/kuxatur.png"),
  Project(
      name: "Fixter",
      year: 2020,
      description:
          "Es un empresa enfocada en la capacitación de nuevos programadores mediante cursos presenciales y online",
      image: "assets/img/fixter.png",
      technologies: ["React", "JavaScript", "Remix", "MongoDB", "Algolia"]),
  Project(
      name: "Natoure",
      technologies: ["NextJS", "JavaScript", "tailwindcss", "MongoDB", "React"],
      year: 2021,
      description:
          "Proyecto enfocado en la difusión de proyectos de ecoturismo con un enfoque en el turismo resposable y comprometido con la conservación del medio ambiente",
      image: "assets/img/natoure.png"),
];
