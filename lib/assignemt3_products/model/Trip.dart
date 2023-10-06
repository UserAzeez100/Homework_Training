
enum Season{

  Summer,
  Winter,
  Fall,
  Spring
}

enum TripType{
  Exploration,
  Recovery,
  Activities,
  Incrapy
}

  class Trip{
   String id;
   List<String> categories;
   String title;
   String imageUrl;
   List <String> activities;
   List<String> program;
   int duration;
   Season season;
   TripType tripType;
   bool isInSummer =false;
   bool isInWinter;
   bool isForFamilies;


  Trip({

    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.activities,
    required this.program,
    required this.duration,
    required this.season,
    required this.tripType,
    required this.isInSummer,
    required this.isInWinter,
    required this.isForFamilies});
}