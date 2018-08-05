import 'package:flutter/material.dart';

enum AREPatternType {
  artefact,
  meeting,
  method,
  role
}

class AREPattern {

  AREPattern ({
    this.patternType,
    this.patternName,
    this.image,
    this.patternDetails,
    this.linkedPatterns
});

  // Stored properties
  final AREPatternType patternType;
  final String patternName;
  final AssetImage image;
  final String patternDetails;
  final List<AREPattern> linkedPatterns;

  static List<AREPattern> getPatterns(){
    return [
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Impact Map",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Product Backlog",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Story Map",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Definition of Ready and Definition of Done",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Prototyp",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Kanban Board",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.artefact,
          patternName: "Minimum Viable Product (MVP)",
          image: AssetImage("assets/images/icon_file.png")
      ),
      AREPattern(
          patternType: AREPatternType.meeting,
          patternName: "Refinement Meeting",
          image: AssetImage("assets/images/icon_bell.png")
      ),
      AREPattern(
          patternType: AREPatternType.meeting,
          patternName: "Daily Standup Meeting",
          image: AssetImage("assets/images/icon_bell.png")
      ),
      AREPattern(
          patternType: AREPatternType.meeting,
          patternName: "Review Meeting",
          image: AssetImage("assets/images/icon_bell.png")
      ),
      AREPattern(
          patternType: AREPatternType.method,
          patternName: "Evaluation und Testing",
          image: AssetImage("assets/images/icon_rocket.png")
      ),
      AREPattern(
          patternType: AREPatternType.role,
          patternName: "Agile Coach / Scrum Master",
          image: AssetImage("assets/images/icon_id.png")
      ),
      AREPattern(
          patternType: AREPatternType.role,
          patternName: "Product Owner",
          image: AssetImage("assets/images/icon_id.png")
      ),
    ];
  }
}