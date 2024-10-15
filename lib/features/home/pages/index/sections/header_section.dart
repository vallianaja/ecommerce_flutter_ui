part of '../page.dart';

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo, Vallian!',
                style: TextStyle(
                    color: Color(0xffF1F0F2),
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              Text(
                '@valsygch',
                style: TextStyle(color: Color(0xff504F5E), fontSize: 16),
              )
            ],
          ),
          Image.asset(
            'assets/images/profile.png',
            width: 54,
            height: 54,
          )
        ],
      ),
    );
  }
}