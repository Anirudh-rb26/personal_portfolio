import 'package:anirudhs_portfolio/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/project_model.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding / 2),
        const Responsive(
          mobile: ProjectsGrid(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          desktop: ProjectsGrid(),
          mobileLarge: ProjectsGrid(crossAxisCount: 2),
          tablet: ProjectsGrid(childAspectRatio: 1.1),
        ),
        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: my_projects.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: my_projects[index],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Spacer(),
          Text(
            project.description!,
            style: const TextStyle(height: 1.5),
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More >>>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}