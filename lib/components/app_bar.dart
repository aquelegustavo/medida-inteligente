import 'package:flutter/material.dart';
import 'package:desafio_mi/config/app_colors.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> _itens = [
      {'icon': Icons.settings, 'label': 'Configurações'},
      {'icon': Icons.info_outline_rounded, 'label': 'Sobre este app'},
      {'icon': Icons.report_problem, 'label': 'Reportar problema'},
      {'icon': Icons.logout, 'label': 'Sair'},
    ];

    return AppBar(
      title: Image.network(
          "https://web-site-medida-inteligente.vercel.app/logo_white.png"),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(24.0, 6.0, 4.0, 6.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/ogw/ADea4I6jlqb0BRPBiqq87OAo5gIFvu4X8j68JhbNkPrRPm0=s83-c-mo'),
          ),
        ),
        PopupMenuButton(
          tooltip: "Mais",
          icon: Icon(Icons.more_vert,
              color: AppColors.white, semanticLabel: "Ícone ver mais"),
          itemBuilder: (context) => _itens
              .map(
                (item) => new PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                              'Ação indisponível no modo demonstração :('),
                        ),
                      ),
                    },
                    child: ListTile(
                      leading: Icon(item['icon'],
                          semanticLabel: "Ícone ${item['label']}"),
                      title: Text(item['label'] ?? ''),
                    ),
                  ),
                  value: item,
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
