part of 'app_show.dart';

class _AppConfirm {
  static Future<void> call({required BuildContext context}) async => showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Konfirmasi'),
          content: const Text('Apakah anda yakin ingin menghapus'),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () => context.pop(false),
            ),
            FilledButton(
              child: const Text('Hapus'),
              onPressed: () => context.pop(true),
            ),
          ],
        ),
      );
}
