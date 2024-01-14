import 'package:flutter/material.dart';

class LogDataScreen extends StatelessWidget {
  const LogDataScreen({super.key});

  get searchController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Riwayat Data",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Pistol',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 82,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFEEB55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Diproses',
                                  style: TextStyle(
                                    color: Color(0xFF7F7419),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                      width: 304,
                      child: Text(
                        'G2 ELITE',
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stok',
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tanggal Masuk',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Kondisi  ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'ID    ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 1),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '47',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '25/11/2023',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '53147',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Senapan',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 82,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFEEB55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Diproses',
                                  style: TextStyle(
                                    color: Color(0xFF7F7419),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                      width: 304,
                      child: Text(
                        'PM2-V1',
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stok',
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tanggal Masuk',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Kondisi  ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'ID    ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 1),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '26',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '25/11/2023',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '43147',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Amunisi',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 82,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF78ED7C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Diterima',
                                  style: TextStyle(
                                    color: Color(0xFF1F4E20),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                      width: 304,
                      child: Text(
                        'Kaliber 9 MU1-TJ',
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stok',
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tanggal Masuk',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Kondisi  ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'ID    ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 1),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '12400',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '25/11/2023',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '33147',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Kendaraan',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 82,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF78ED7C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Diterima',
                                  style: TextStyle(
                                    color: Color(0xFF1F4E20),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                      width: 304,
                      child: Text(
                        'TANK LEOPARD 2',
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stok',
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tanggal Masuk',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Kondisi  ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'ID    ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 1),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '47',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '25/11/2023',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '64213',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F3F3),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFD2D2D2)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Alat Optik',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 82,
                            height: 24,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFF5656),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Ditolak',
                                  style: TextStyle(
                                    color: Color(0xFFAA2929),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                      width: 304,
                      child: Text(
                        'Red Dot Sight',
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stok',
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Tanggal Masuk',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Kondisi  ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'ID    ',
                            style: TextStyle(
                              color: Color(0xFF424242),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 1),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '1001',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '25/11/2023',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '27171',
                            style: TextStyle(
                              color: Color(0xFFBEBEBE),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
