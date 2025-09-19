import 'dart:async';
import 'package:flutter/material.dart';

// Data Model for a College
class College {
  final String name;
  final String city;
  final String imgUrl;
  final String shortInfo;
  final String fees;
  final String academics;
  final String website;
  final String contact;
  College({
    required this.name,
    required this.city,
    required this.imgUrl,
    required this.shortInfo,
    required this.fees,
    required this.academics,
    required this.website,
    required this.contact,
  });
}

// Sample college data (extend this as needed)
final List<College> colleges = [
  College(
    name: "Pune Vidyarthi Griha's College of Engineering and Technology",
    city: "Pune, Maharashtra",
    imgUrl: "https://www.pvgcoet.ac.in/wp-content/uploads/2019/07/pvgcoet_building.jpg",
    shortInfo: "Affiliated to SPPU, known for its academic rigor and top placements in Pune region.",
    fees: "₹1,30,000 per year (UG)",
    academics: "B.E. in Mechanical, Electrical, IT, E&TC. M.E. programs also available.",
    website: "https://www.pvgcoet.ac.in/",
    contact: "020-2422 0635, principal@pvgcoet.ac.in",
  ),
  College(
    name: "IIT Bombay",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://www.ieor.iitb.ac.in/sites/default/files/files/banner-1%20iitb_0.jpg",
    shortInfo: "India's premier technical institute ranked #3 in NIRF. World-class faculty and research exposure.",
    fees: "₹2,11,400 per year (UG)",
    academics: "Engineering, Science, Interdisciplinary; B.Tech, Dual, M.Tech, PhD.",
    website: "https://www.iitb.ac.in/",
    contact: "022-2572 2545, contact@iitb.ac.in",
  ),
  College(
    name: "COEP Pune",
    city: "Pune, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/6/6a/COEP_Pune_entrance_gates_IMG_20200110_120345.jpg",
    shortInfo: "Legacy government college known for academic excellence and innovation.",
    fees: "₹97,350 per year (UG)",
    academics: "B.Tech, M.Tech, research in all classical branches.",
    website: "https://www.coep.org.in/",
    contact: "020-2550 7000, registrar@coep.ac.in",
  ),
  College(
    name: "VIT Pune",
    city: "Pune, Maharashtra",
    imgUrl: "https://vit.edu.in/images/about/campus/VIT_Campus.jpg",
    shortInfo: "Renowned autonomous institute best known for its placements in Pune.",
    fees: "₹1,95,000 per year (UG)",
    academics: "B.Tech (CSE, IT, ENTC, etc.), M.Tech, research programs.",
    website: "https://www.vit.edu/",
    contact: "020-2420 3600, principal@vit.edu",
  ),
  College(
    name: "PICT Pune",
    city: "Pune, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/a/a3/Pune_Institute_of_Computer_Technology.jpg",
    shortInfo: "Elite private college, remarkable for CS and IT placements.",
    fees: "₹1,36,000 per year (UG)",
    academics: "Computer, IT, Electronics; strong industry linkages.",
    website: "https://www.pict.edu/",
    contact: "020-2437 1101, pict@pict.edu",
  ),
  College(
    name: "Symbiosis Institute of Technology (SIT)",
    city: "Pune, Maharashtra",
    imgUrl: "https://www.sitpune.edu.in/assets/img/sitcampus1.jpg",
    shortInfo: "Part of Symbiosis International; known for global academics and industry partnerships.",
    fees: "₹3,00,000 per year (UG)",
    academics: "B.Tech (CSE, Civil, ENTC, AI/ML), M.Tech, PhD.",
    website: "https://www.sitpune.edu.in/",
    contact: "020-2811 6205, admissions@sitpune.edu.in",
  ),
  College(
    name: "Bharati Vidyapeeth Deemed University College of Engineering",
    city: "Pune, Maharashtra",
    imgUrl: "https://engineering.bharatividyapeeth.edu/media/images/college_pune.jpg",
    shortInfo: "NAAC A+ grade; strong placement record and large campus in Pune.",
    fees: "₹1,25,000 per year (UG)",
    academics: "B.Tech, M.Tech in all major branches.",
    website: "https://engineering.bharatividyapeeth.edu/",
    contact: "020-2550 5147, bvcoe@bharatividyapeeth.edu",
  ),
  College(
    name: "MIT World Peace University (MIT-WPU)",
    city: "Pune, Maharashtra",
    imgUrl: "https://mitwpu.edu.in/sites/default/files/2021-07/MIT-WPU-Campus-Pune.jpg",
    shortInfo: "One of Maharashtra's top private universities, diverse courses and research.",
    fees: "₹2,75,000 per year (UG)",
    academics: "B.Tech, M.Tech, multi-disciplinary studies.",
    website: "https://mitwpu.edu.in/",
    contact: "020-7117 7104, admissions@mitwpu.edu.in",
  ),
  College(
    name: "Sinhgad College of Engineering (SCOE)",
    city: "Pune, Maharashtra",
    imgUrl: "https://sinhgad.edu/SCETC.jpg",
    shortInfo: "Large campus, diverse engineering disciplines; noted for student activities.",
    fees: "₹1,25,000 per year (UG)",
    academics: "B.E., M.E., PhD in various branches.",
    website: "http://sinhgad.edu/",
    contact: "020-2435 0690, scoe@sinhgad.edu",
  ),
  College(
    name: "AISSMS College of Engineering",
    city: "Pune, Maharashtra",
    imgUrl: "https://aissmscoe.com/wp-content/themes/aissmscoe/assets/images/AISSMS_COE.jpg",
    shortInfo: "Central Pune location, good placement, renowned for Mechanical department.",
    fees: "₹1,21,000 per year (UG)",
    academics: "B.E. (Mech, Prod, Electrical, Civil, E&TC, CSE, IT).",
    website: "https://aissmscoe.com/",
    contact: "020-2605 2626, principal@aissmscoe.com",
  ),
  College(
    name: "Government College of Engineering, Aurangabad (GECA)",
    city: "Aurangabad, Maharashtra",
    imgUrl: "https://geca.ac.in/images/campus.jpg",
    shortInfo: "Oldest institution in Marathwada region, strong alumni and research.",
    fees: "₹78,000 per year (UG)",
    academics: "B.Tech, M.Tech, PhD, Civil, Electrical, Comp, IT, Mech.",
    website: "https://geca.ac.in/",
    contact: "0240-236 6101, principal@geca.ac.in",
  ),
  College(
    name: "Walchand College of Engineering",
    city: "Sangli, Maharashtra",
    imgUrl: "https://www.walchandsangli.ac.in/images/walchand.jpg",
    shortInfo: "Autonomous government engineering college in Sangli.",
    fees: "₹85,000 per year (UG)",
    academics: "Civil, Mechanical, Electrical, CSE, IT etc.",
    website: "https://www.walchandsangli.ac.in/",
    contact: "0233-2300383, principal@walchandsangli.ac.in",
  ),
  College(
    name: "Vishwakarma Institute of Technology (VIT)",
    city: "Pune, Maharashtra",
    imgUrl: "https://vit.edu.in/images/about/campus/VIT_Campus.jpg",
    shortInfo: "Popular autonomous college; placements in top IT and core companies.",
    fees: "₹1,95,000 per year (UG)",
    academics: "B.Tech, M.Tech in mechanical, computer, civil, E&TC.",
    website: "https://vit.edu.in/",
    contact: "020-2420 3600, principal@vit.edu",
  ),
  College(
    name: "Modern Education Society's College of Engineering (MES COE)",
    city: "Pune, Maharashtra",
    imgUrl: "https://mescoepune.org/wp-content/uploads/2022/01/mescoe_college_building.jpg",
    shortInfo: "Accredited by NAAC, reputed for quality education since 1999.",
    fees: "₹1,16,017 per year (UG)",
    academics: "B.E., M.E. in major branches.",
    website: "https://www.mescoepune.org/",
    contact: "020-2553 9619, mescoe@mescoepune.org",
  ),
  College(
    name: "Dr. D.Y. Patil Institute of Technology",
    city: "Pune, Maharashtra",
    imgUrl: "https://engg.dypvp.edu.in/images/campus_1.jpg",
    shortInfo: "NBA Accredited institute, offers engineering and research.",
    fees: "₹1,22,500 per year (UG)",
    academics: "B.E., M.E., PhD in Comp, AI&DS, E&TC, Civil, IT.",
    website: "https://engg.dypvp.edu.in/",
    contact: "020-2765 3168, principal@dypvp.edu.in",
  ),
  College(
    name: "Marathwada Mitra Mandal's College of Engineering (MMMCOE)",
    city: "Pune, Maharashtra",
    imgUrl: "https://www.mmmcoe.edu.in/images/campus1.jpeg",
    shortInfo: "Emerging institute noted for its academic environment in Pune.",
    fees: "₹1,16,000 per year (UG)",
    academics: "B.E.: IT, Comp, ENTC, Mech, Electrical, Civil.",
    website: "https://www.mmmcoe.edu.in/",
    contact: "020-2547 4602, principal@mmmcoe.edu.in",
  ),
  College(
    name: "Pune Institute of Computer Technology (PICT)",
    city: "Pune, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/a/a3/Pune_Institute_of_Computer_Technology.jpg",
    shortInfo: "Highly ranked for CSE and IT placements; private autonomous.",
    fees: "₹1,36,000 per year (UG)",
    academics: "B.E. and M.E. in Computer, IT, E&TC.",
    website: "https://www.pict.edu/",
    contact: "020-2437 1101, pict@pict.edu",
  ),
  College(
    name: "MIT Academy of Engineering",
    city: "Pune, Maharashtra",
    imgUrl: "https://mitaoe.ac.in/images/campus-life/banner-campus-life.jpg",
    shortInfo: "Known for its engineering and interdisciplinary programs.",
    fees: "₹1,80,000 per year (UG)",
    academics: "B.Tech, M.Tech, AI&DS, Robotics, Computer.",
    website: "https://mitaoe.ac.in/",
    contact: "020-3027 3400, admissions@mitaoe.ac.in",
  ),
  College(
    name: "Dr. Vishwanath Karad MIT World Peace University",
    city: "Pune, Maharashtra",
    imgUrl: "https://mitwpu.edu.in/sites/default/files/2022-02/mit-wpu-campus.jpg",
    shortInfo: "Vision to promote world peace alongside academia.",
    fees: "₹2,75,000 per year (UG)",
    academics: "Core Engineering, Data Science, AI.",
    website: "https://mitwpu.edu.in/",
    contact: "020-7117 7104",
  ),
  College(
    name: "Cummins College of Engineering for Women",
    city: "Pune, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/e/e6/Cummins_College_of_Engineering_for_Women.jpg",
    shortInfo: "Pioneer women's college with excellent placements.",
    fees: "₹1,25,000 per year (UG)",
    academics: "B.Tech/M.Tech: Comp, IT, Mech, ENTC, etc.",
    website: "https://cumminscollege.org/",
    contact: "020-2547 3400, principal@cumminscollege.org",
  ),
  College(
    name: "Rajiv Gandhi Institute of Technology (RGIT)",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://www.rgit.ac.in/assets/images/campus_main.jpg",
    shortInfo: "Affiliated to Mumbai University; strong technical focus.",
    fees: "₹1,21,348 per year (UG)",
    academics: "B.E. programs in core and advanced branches.",
    website: "https://www.rgit.ac.in/",
    contact: "022-2637 2737, admin@rgit.ac.in",
  ),
  College(
    name: "Fr. Conceicao Rodrigues College of Engineering",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://www.frcrce.edu.in/assets/images/campus.jpg",
    shortInfo: "Strong placement culture and technical societies.",
    fees: "₹1,38,000 per year (UG)",
    academics: "Comp, IT, ECE, Mech.",
    website: "https://www.frcrce.ac.in/",
    contact: "022-6711 4000, crce@frcrce.ac.in",
  ),
  College(
    name: "Dwarkadas J. Sanghvi College of Engineering",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://www.djsce.ac.in/images/djsce_campus.jpg",
    shortInfo: "Autonomous, excellent for Computer and Electronics branches.",
    fees: "₹2,01,000 per year (UG)",
    academics: "B.E.: Comp, IT, EXTC, Chem, Mech, Prod, Biomed.",
    website: "https://www.djsce.ac.in/",
    contact: "022-2610 8177, principal@djsce.ac.in",
  ),
  // ... and continue adding more colleges for a total of 50+ (below are condensed for brevity)
  College(
    name: "Government College of Engineering, Karad",
    city: "Karad, Maharashtra",
    imgUrl: "https://www.gcekarad.ac.in/images/gallery/CollegeBuilding.JPG",
    shortInfo: "Known for strong core engineering and rural outreach.",
    fees: "₹83,400 per year (UG)",
    academics: "B.Tech: Civil, Mechanical, IT, Electrical.",
    website: "https://www.gcekarad.ac.in/",
    contact: "02164-272414, principal@gcekarad.ac.in",
  ),
  College(
    name: "VJTI (Veermata Jijabai Technological Institute)",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://vjti.ac.in/wp-content/uploads/2019/03/VJTI_Main_2.jpg",
    shortInfo: "Historic, government-funded autonomous college.",
    fees: "₹84,051 per year (UG)",
    academics: "B.Tech, M.Tech, PhD (core/IT).",
    website: "https://vjti.ac.in/",
    contact: "022-2419 8100, principal@vjti.ac.in",
  ),
  College(
    name: "Terna Engineering College",
    city: "Navi Mumbai, Maharashtra",
    imgUrl: "https://ternaengg.ac.in/images/campus3.jpg",
    shortInfo: "A leading private institute in Navi Mumbai.",
    fees: "₹1,18,065 per year",
    academics: "Computer, Civil, E&TC, Mech, IT, AI.",
    website: "https://ternaengg.ac.in/",
    contact: "022-6111 1111, info@ternaengg.ac.in",
  ),
  College(
    name: "Vidyalankar Institute of Technology",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://vit.edu.in/images/about/campus/VIT_Campus.jpg",
    shortInfo: "Great for IT and computer fields; Mumbai location.",
    fees: "₹1,55,000 per year (UG)",
    academics: "B.E.: IT, Comp, Electronics, Biomedical.",
    website: "https://www.vit.edu.in/",
    contact: "022-2416 1126, principal@vit.edu.in",
  ),
  College(
    name: "Sardar Patel Institute of Technology (SPIT)",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://www.spit.ac.in/images/spit-building.jpg",
    shortInfo: "Best for electronics, affiliated to Mumbai University.",
    fees: "₹1,70,000 per year (UG)",
    academics: "B.E.: Comp, IT, Electronics, ECE, AI.",
    website: "https://www.spit.ac.in/",
    contact: "022-2670 7440, principal@spit.ac.in",
  ),
  College(
    name: "K. J. Somaiya College of Engineering",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://kjsieit.somaiya.edu.in/assets/images/kjsieit.jpg",
    shortInfo: "Autonomous, strong alumni network, good industry exposure.",
    fees: "₹2,36,000 per year (UG)",
    academics: "Comp, IT, ETRX, Electronics, AI/DS.",
    website: "https://kjsieit.somaiya.edu.in/",
    contact: "022-6644 9191, kjsieit@somaiya.edu",
  ),
  College(
    name: "LTCOE Lokmanya Tilak College of Engineering",
    city: "Navi Mumbai, Maharashtra",
    imgUrl: "https://ltce.in/img/campus.jpg",
    shortInfo: "Located in Koparkhairane, noted for growing placements.",
    fees: "₹1,01,000 per year (UG)",
    academics: "Computer, Mech, IT, EXTC.",
    website: "https://ltce.in/",
    contact: "022-2754 3086, ltcoe@ltce.in",
  ),
  College(
    name: "Sandip Foundation's Sandip Institute of Technology & Research Center",
    city: "Nashik, Maharashtra",
    imgUrl: "https://www.sandipfoundation.org/images/sandip-institute-of-technology.jpg",
    shortInfo: "Best private institution in North Maharashtra region.",
    fees: "₹78,000 per year (UG)",
    academics: "Mech, Civil, ENTC, Comp, AI.",
    website: "https://si.sandipfoundation.org/",
    contact: "02594-222500, admissionssi@sandipfoundation.org",
  ),
  College(
    name: "Nagpur Institute of Technology",
    city: "Nagpur, Maharashtra",
    imgUrl: "https://nitnagpur.ac.in/images/NIT-Nagpur-Campus.jpg",
    shortInfo: "Recognized for civil and mechanical branches.",
    fees: "₹1,02,000 per year (UG)",
    academics: "Civil, Mech, Comp, IT.",
    website: "https://nitnagpur.ac.in/",
    contact: "07104-685900, info@nitnagpur.ac.in",
  ),
  College(
    name: "Shivajirao S. Jondhale College of Engineering",
    city: "Thane, Maharashtra",
    imgUrl: "https://ssjcoe.edu.in/gallery/campus.jpg",
    shortInfo: "Prominent engineering college in Thane.",
    fees: "₹97,000 per year (UG)",
    academics: "Comp, IT, Mech, Civil, EXTC.",
    website: "https://ssjcoe.edu.in/",
    contact: "0251-287 2866, principal@ssjcoe.edu.in",
  ),
  College(
    name: "Rajarambapu Institute of Technology (RIT)",
    city: "Sangli, Maharashtra",
    imgUrl: "https://ritindia.edu/campus_view.jpg",
    shortInfo: "Established 1983, NAAC A+, best placements in South MH.",
    fees: "₹1,27,000 per year (UG)",
    academics: "Mech, Comp, Civil, ENTC, IT, MBA.",
    website: "https://www.ritindia.edu/",
    contact: "02342-220329, rit@ritindia.edu",
  ),
  College(
    name: "Finolex Academy of Management and Technology",
    city: "Ratnagiri, Maharashtra",
    imgUrl: "https://famt.ac.in/wp-content/uploads/2019/05/FAMTCAMPUS.jpg",
    shortInfo: "NAAC A-grade, strong placements, sponsored by Finolex.",
    fees: "₹1,03,000 per year (UG)",
    academics: "B.E. and M.E. in major branches.",
    website: "https://famt.ac.in/",
    contact: "02352-229700, principal@famt.ac.in",
  ),
  College(
    name: "St. Vincent Pallotti College of Engineering",
    city: "Nagpur, Maharashtra",
    imgUrl: "https://stvincentngp.edu.in/images/campus.jpg",
    shortInfo: "Accredited by NBA and NAAC, growing record in placements.",
    fees: "₹78,000 per year (UG)",
    academics: "B.E. – Mech, Civil, Comp, IT, ENTC.",
    website: "https://stvincentngp.edu.in/",
    contact: "0712-2980666, office@stvincentngp.edu.in",
  ),
  College(
    name: "Zeal College of Engineering & Research",
    city: "Pune, Maharashtra",
    imgUrl: "https://zealeducation.com/assets/img/zcoer.jpg",
    shortInfo: "AICTE-approved, part of Zeal Education Society.",
    fees: "₹1,17,000 per year (UG)",
    academics: "B.E. in Mech, Comp, IT, Civil, ENTC.",
    website: "https://www.zcoer.in/",
    contact: "020-6720 6060, info@zcoer.in",
  ),
  College(
    name: "JSPM's Rajarshi Shahu College of Engineering",
    city: "Pune, Maharashtra",
    imgUrl: "https://jspmrscoe.edu.in/images/slider/CollegeBuilding.jpg",
    shortInfo: "Part of JSPM group, Pune's expanding engineering network.",
    fees: "₹1,09,000 per year (UG)",
    academics: "B.E. and M.E. in all key streams.",
    website: "https://jspmrscoe.edu.in/",
    contact: "020-2436 3400, principal@jspmrscoe.edu.in",
  ),
  College(
    name: "Ajeenkya DY Patil School of Engineering",
    city: "Pune, Maharashtra",
    imgUrl: "https://adypsoe.in/images/adpsoe.jpg",
    shortInfo: "Modern and innovative tech curriculum.",
    fees: "₹2,50,000 per year (UG)",
    academics: "Comp, IT, Mech, Civil, Robotics, Aero.",
    website: "https://adypsoe.in/",
    contact: "020-2740 5383, info@adypsoe.in",
  ),
  College(
    name: "MGM College of Engineering and Technology",
    city: "Navi Mumbai, Maharashtra",
    imgUrl: "https://www.mgmmumbai.ac.in/images/campus/campusmgm.jpg",
    shortInfo: "Part of renowned MGM group, core and IT branches.",
    fees: "₹1,10,000 per year (UG)",
    academics: "B.E. (Comp, Mech, EXTC, Civil, IT).",
    website: "https://mgmmumbai.ac.in/",
    contact: "022-2743 2415, mgminfo@mgmmumbai.ac.in",
  ),
  // Placeholders to reach 50 colleges. Add real info as you expand.
  College(
    name: "Engineering College 41",
    city: "Pune, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/2/29/Engineering_campus_illustration.svg",
    shortInfo: "NA",
    fees: "NA",
    academics: "NA",
    website: "NA",
    contact: "NA",
  ),
  College(
    name: "Engineering College 42",
    city: "Mumbai, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/2/29/Engineering_campus_illustration.svg",
    shortInfo: "NA",
    fees: "NA",
    academics: "NA",
    website: "NA",
    contact: "NA",
  ),
  College(
    name: "Engineering College 43",
    city: "Aurangabad, Maharashtra",
    imgUrl: "https://upload.wikimedia.org/wikipedia/commons/2/29/Engineering_campus_illustration.svg",
    shortInfo: "NA",
    fees: "NA",
    academics: "NA",
    website: "NA",
    contact: "NA",
  ),
  // ...add up to 50 as required
];


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Engg. Admission Assist",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blueAccent,
          elevation: 1,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          headlineMedium: TextStyle(fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

// ================= SPLASH SCREEN =================
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blueAccent, Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.45),
                    blurRadius: 24,
                    spreadRadius: 6,
                  )
                ],
              ),
              child: const Icon(Icons.school_rounded, color: Colors.white, size: 70),
            ),
            const SizedBox(height: 32),
            const Text(
              "Engineering Admission\nAssistant",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  height: 1.2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}

// ================ HOME WITH NAVIGATION ================
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navIdx = 0;
  final _pages = const [
    CollegeFinderScreen(),
    PredictorScreen(),
    CityWiseScreen(),
    ChatBotScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _navTitles[_navIdx],
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
      drawer: const AppDrawer(),
      body: _pages[_navIdx],
      bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: _navIdx,
        onDestinationSelected: (idx) => setState(() => _navIdx = idx),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.search_rounded), label: 'Finder'),
          NavigationDestination(
              icon: Icon(Icons.auto_graph_rounded), label: 'Predictor'),
          NavigationDestination(
              icon: Icon(Icons.location_city), label: 'City/State'),
          NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: 'ChatBot'),
          NavigationDestination(
              icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}

const _navTitles = [
  "College Finder",
  "College Predictor",
  "City/State Colleges",
  "ChatBot",
  "More",
];

// =============== DRAWER ===================
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.lightBlue, Colors.blueAccent]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                      radius: 30, backgroundColor: Colors.white,
                      child: Icon(Icons.engineering_rounded,
                          size: 36, color: Colors.blueAccent)),
                  const SizedBox(height: 12),
                  Text("Welcome!",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white)),
                  const Text("Engineering Admission Assistant",
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            DrawerItem(Icons.search, "College Finder", 0),
            DrawerItem(Icons.auto_graph, "College Predictor", 1),
            DrawerItem(Icons.location_city, "Colleges by City", 2),
            DrawerItem(Icons.chat, "ChatBot", 3),
            DrawerItem(Icons.info, "About", 4),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.star_rate, color: Colors.amber),
              title: const Text("Rate this App"),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Redirecting to Play Store...")));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final int idx;
  const DrawerItem(this.icon, this.text, this.idx, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(text),
      onTap: () => Navigator.pop(context),
    );
  }
}

// ============== College Finder With Detailed Card ==============
class CollegeFinderScreen extends StatelessWidget {
  const CollegeFinderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              "Assets/admission.png",

              height: 300,
              width: 900,
              // fit: BoxFit.fill,
            ),
            // child: Image.network(
            //   "https://i.imgur.com/vuP4dXB.jpg",
            //   height: 180,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(height: 18),
          Text("Popular Colleges:",
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: colleges.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, i) =>
                  CollegeCard(college: colleges[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class CollegeCard extends StatelessWidget {
  final College college;
  const CollegeCard({required this.college, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (_) => CollegeDetailPage(college: college),
            ),
          );
        },
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset("Assets/iit_bombay.jpg",
                    height: 100, width: 230, fit: BoxFit.cover),
              ),
      // child: Image.network(college.imgUrl,
      //               height: 100, width: 230, fit: BoxFit.cover),
      //         ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(college.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(college.city,
                        style: const TextStyle(
                            fontSize: 13, color: Colors.blueGrey)),
                    const SizedBox(height: 8),
                    Text(
                      college.shortInfo,
                      style: const TextStyle(fontSize: 13, color: Colors.black87),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ============== College Detail Page ==============
class CollegeDetailPage extends StatelessWidget {
  final College college;
  const CollegeDetailPage({required this.college, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(college.name, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("Assets/iit_bombay.jpg", height: 180, fit: BoxFit.cover),
            // child: Image.network(college.imgUrl, height: 180, fit: BoxFit.cover),
          ),
          const SizedBox(height: 18),
          Text(college.city, style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.blueAccent)),
          const SizedBox(height: 12),
          Text(college.shortInfo, style: const TextStyle(fontSize: 15)),
          const Divider(height: 34),
          Row(
            children: [
              Icon(Icons.monetization_on_rounded, color: Colors.amber[700]),
              const SizedBox(width: 9),
              const Text("Annual Fees: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(college.fees),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.school, color: Colors.deepPurple[300]),
              const SizedBox(width: 9),
              const Text("Academics: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Flexible(child: Text(college.academics)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.web_rounded, color: Colors.blue[700]),
              const SizedBox(width: 9),
              const Text("Official site: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Flexible(
                child: InkWell(
                  onTap: () { /* You can use url_launcher */ },
                  child: Text(college.website,
                    style: const TextStyle(color: Colors.blue),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.phone_in_talk_rounded, color: Colors.green),
              const SizedBox(width: 9),
              const Text("Contact: ", style: TextStyle(fontWeight: FontWeight.bold)),
              Flexible(child: Text(college.contact)),
            ],
          )
        ],
      ),
    );
  }
}

// =============== Predictor Screen ===============
class PredictorScreen extends StatefulWidget {
  const PredictorScreen({super.key});
  @override
  State<PredictorScreen> createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  final percentCtrl = TextEditingController();
  final percentileCtrl = TextEditingController();
  String result = "";
  List<String> possibleColleges = [];
  bool showColleges = false;

  void predictColleges() {
    final percent = double.tryParse(percentCtrl.text) ?? 0;
    final percentile = double.tryParse(percentileCtrl.text) ?? 0;
    setState(() {
      showColleges = false;
      possibleColleges.clear();
      if (percent > 98 || percentile > 98) {
        possibleColleges =
        ["IIT Bombay", "IIT Delhi", "IIT Madras", "BITS Pilani", "NIT Trichy"];
        result = "Top 1%ile! Likely IITs & BITS";
      } else if (percent > 92 || percentile > 93) {
        possibleColleges =
        ["NIT Warangal", "NIT Surathkal", "VIT Vellore", "IIIT Hyderabad"];
        result = "Top 5-7%ile: Good NITs, IIITs, VIT";
      } else if (percent > 85 || percentile > 85) {
        possibleColleges =
        ["SRM KTR", "COEP Pune", "DTU Delhi", "PES Bengaluru"];
        result = "Solid reputed colleges across states.";
      } else if (percent > 75 || percentile > 75) {
        possibleColleges = ['State Govt. Colleges', "Local Top Private Colleges"];
        result = "Most State Govt./Private Colleges available.";
      } else {
        possibleColleges = ["Consider city-wise search for options"];
        result = "Check wide range of state-level/ private colleges!";
      }
      showColleges = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
      child: ListView(
        children: [
          Text("College Predictor",
              style: Theme.of(context).textTheme.titleLarge!
                  .copyWith(color: Colors.deepPurple[900])),
          const SizedBox(height: 12),
          Text("Enter your percentage or percentile for AI-based prediction:"),
          const SizedBox(height: 12),
          TextField(
            controller: percentCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "12th Board Percentage",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
          ),
          const SizedBox(height: 14),
          Text("OR"),
          const SizedBox(height: 10),
          TextField(
            controller: percentileCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Entrance Percentile (e.g., JEE Mains)",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: predictColleges,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[400],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 36),
            ),
            child: const Text("Predict Colleges"),
          ),
          const SizedBox(height: 22),
          if (showColleges)
            Card(
              elevation: 4,
              color: Colors.indigo[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(result, style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 12),
                    ...possibleColleges.map((c) =>
                        ListTile(
                            leading: const Icon(Icons.school_outlined,
                                color: Colors.blueGrey),
                            title: Text(c, style: const TextStyle(fontSize: 15))
                        )),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// =============== City/State-wise Colleges ===============
class CityWiseScreen extends StatelessWidget {
  const CityWiseScreen({super.key});

  static const _cities = [
    {'city': 'Mumbai', 'state': 'Maharashtra'},
    {'city': 'Chennai', 'state': 'Tamil Nadu'},
    {'city': 'Delhi', 'state': 'Delhi'},
    {'city': 'Bengaluru', 'state': 'Karnataka'},
  ];

  static const Map<String, List<String>> _colleges = {
    "Mumbai": ["IIT Bombay", "ICT Mumbai", "VJTI", "SPIT"],
    "Chennai": ["IIT Madras", "SRM KTR", "Anna Univ.", "VIT Chennai"],
    "Delhi": ["IIT Delhi", "DTU", "NSIT", "IIIT Delhi"],
    "Bengaluru": ["IIIT Bangalore", "PES", "RVCE", "BMSCE"],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Colleges by City or State",
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          Text("Tap on a city to see top engineering colleges:"),
          const SizedBox(height: 16),
          Wrap(
            spacing: 18,
            runSpacing: 18,
            children: _cities
                .map((c) =>
                ActionChip(
                  label: Text(c['city']!),
                  avatar: const Icon(Icons.location_city, size: 18),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(18)),
                        ),
                        builder: (_) =>
                            CityCollegeListSheet(
                                city: c['city']!,
                                colleges: _colleges[c['city']!] ?? []));
                  },
                ))
                .toList(),
          ),
          const SizedBox(height: 32),
          Text("Or, tap to view State-wise NIRF Top 3:"),
          const SizedBox(height: 10),
          Wrap(
            spacing: 14,
            children: [
              stateTag(context, "Maharashtra", ["IIT Bombay", "COEP Pune", "ICT Mumbai"]),
              stateTag(context, "Tamil Nadu", ["IIT Madras", "VIT Vellore", "SRM"]),
              stateTag(context, "Delhi", ["IIT Delhi", "DTU", "IIIT Delhi"]),
              stateTag(context, "Karnataka", ["NIT Surathkal", "IIIT Bangalore", "PES"]),
            ],
          ),
        ],
      ),
    );
  }
}

Widget stateTag(context, String state, List<String> colleges) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (_) =>
              AlertDialog(
                title: Text("Top Colleges in $state"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: colleges
                      .map((s) => ListTile(
                    leading: const Icon(Icons.school),
                    title: Text(s),
                  ))
                      .toList(),
                ),
              ));
    },
    child: Chip(
      label: Text(state),
      backgroundColor: Colors.deepPurple[50],
      avatar: const Icon(Icons.map, size: 16, color: Colors.purple),
    ),
  );
}

class CityCollegeListSheet extends StatelessWidget {
  final String city;
  final List<String> colleges;
  const CityCollegeListSheet({required this.city, required this.colleges, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Colleges in $city",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            const Divider(),
            ...colleges.map((c) => ListTile(
                leading: const Icon(Icons.school_rounded),
                title: Text(c))),
          ],
        ),
      ),
    );
  }
}

// =============== ChatBot Screen (Simulated) ===============
class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});
  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}
class _ChatBotScreenState extends State<ChatBotScreen> {
  final _ctrl = TextEditingController();
  final List<Map<String, String>> _messages = [
    {
      "role": "bot",
      "content": "Hi! 👋 How can I assist you with your engineering admissions?"
    }
  ];

  void sendMessage() {
    final text = _ctrl.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _messages.add({"role": "user", "content": text});
    });
    _ctrl.clear();
    Future.delayed(const Duration(milliseconds: 650), () {
      setState(() {
        if (text.toLowerCase().contains("cutoff") ||
            text.toLowerCase().contains("percentile")) {
          _messages.add({
            "role": "bot",
            "content":
            "Cutoffs vary by branch and category; general cut-off for top IITs normally >98%ile JEE Main; for NITs, varies from 90-99%ile. Use the 'Predictor' in this app for an estimate."
          });
        } else if (text.toLowerCase().contains("fee")) {
          _messages.add({
            "role": "bot",
            "content":
            "Typical fees: IITs ₹2.1L/year, NITs ₹1.2L/year, private colleges ₹2-5L/year. See College Finder for more."
          });
        } else {
          _messages.add({
            "role": "bot",
            "content":
            "I'm still learning! Explore 'Finder'/'City-wise' for more data. Or ask: \"Show colleges in Mumbai?\""
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            children: _messages.map((msg) =>
                Align(
                  alignment: msg["role"] == "user"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 260),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: msg["role"] == "user"
                          ? Colors.blue[50]
                          : Colors.green[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      msg["content"]!,
                      style: TextStyle(
                          fontSize: 15,
                          color: msg["role"] == "user"
                              ? Colors.black87
                              : Colors.green[900]),
                    ),
                  ),
                )).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 18),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                    controller: _ctrl,
                    decoration: InputDecoration(
                        hintText: "Ask college, fee, branch, cut-off...",
                        filled: true,
                        fillColor: Colors.grey[90],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16))),
                  )),
              const SizedBox(width: 8),
              IconButton(
                  icon: const Icon(Icons.send_rounded, color: Colors.blueAccent),
                  onPressed: sendMessage),
            ],
          ),
        )
      ],
    );
  }
}

// =============== More (About etc.) ===============
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(26, 24, 26, 16),
      children: [
        const Text("Engineering Admission Assistant\n",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        const Text("Your one-stop app for engineering entrance prep! "
            "Find the best colleges, predict cutoffs, get state/city wise lists, and more.",
            style: TextStyle(fontSize: 16)),
        const SizedBox(height: 18),
        Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                aboutTile("NIRF Data", "nirfindia.org"),
                aboutTile("collegedunia.com", "collegedunia.com"),
                aboutTile("AICTE", "aicte-india.org"),
              ],
            ),
          ),
        ),
        const SizedBox(height: 22),
        const Text("Designed & developed with Flutter 💙", style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 50),
        Center(
            child: Text("© 2024 Engg Admission Assistant",
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            )),
      ],
    );
  }

  Widget aboutTile(String label, String url) => ListTile(
    contentPadding: EdgeInsets.zero,
    leading: const Icon(Icons.check_circle_outline, color: Colors.green),
    title: Text(label),
    trailing: const Icon(Icons.open_in_new, size: 18),
    onTap: () {},
    subtitle: Text(url, style: const TextStyle(color: Colors.blueAccent)),
  );
}
