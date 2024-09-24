part of 'app_show.dart';

class _AppBarcodeScan {
  static Future<Barcode?> call(BuildContext context) async {
    return await showDialog<Barcode?>(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Scan Barcode Produk'),
              centerTitle: false,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => context.pop(),
              ),
              actions: [
                TextButton(
                  child: const Text('Tutup'),
                  onPressed: () => context.pop(),
                ),
              ],
            ),
            body: MobileScanner(
              onDetect: (barcodes) async => context.pop(barcodes.barcodes.firstOrNull),
            ),
          ),
        ),
      ),
    );
  }
}
