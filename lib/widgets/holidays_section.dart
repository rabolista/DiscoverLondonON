import 'package:flutter/material.dart';
import '../data/holidays_data.dart';
import '../theme/colors.dart';
import '../widgets/tile.dart';

class HolidaysSection extends StatelessWidget {
  const HolidaysSection({super.key});

  @override
  Widget build(BuildContext context) {
    final year = DateTime.now().year;
    final holidays = HolidaysData.forYear(year);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'Ontario Public Holidays $year',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (final holiday in holidays)
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 16),
                  child: SizedBox(
                    width: 140,
                    child: Tile(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            holiday.formattedDate,
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.primary),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            holiday.name,
                            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: holiday.note == 'Ontario'
                                  ? Colors.blueGrey
                                  : holiday.note == 'Optional'
                                      ? Colors.grey
                                      : AppColors.primaryDark,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              holiday.note,
                              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
