import 'package:epic_free/models/game/attributes/attribute.dart';
import 'package:epic_free/models/game/attributes/custom_attributes.dart';
import 'package:epic_free/models/images/key_image.dart';
import 'package:json_annotation/json_annotation.dart';

import '../game/game.dart';

part 'free_games.g.dart';

@JsonSerializable()
class FreeGames {
  final List<Game> current;
  final List<Game> upcoming;

  FreeGames({
    required this.current,
    required this.upcoming,
  });

  factory FreeGames.fromJson(Map<String, dynamic> json) => _$FreeGamesFromJson(json);

  Map<String, dynamic> toJson() => _$FreeGamesToJson(this);
}

final FreeGames dummyFreeGames = FreeGames(
  current: [
    Game(
      title: 'Offworld Trading Company',
      id: '4531b00fcf354680bf68d138b7155fda',
      description: "Mars has been colonized, and Earth's corporate titans fight to dominate this new market. Competition is fierce in this fast-paced economic RTS from Civilization IV Lead Designer, Soren Johnson.",
      status: 'ACTIVE',
      effectiveDate: '2020-03-05T16:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Stardock Entertainment'),
        developerAttribute: Attribute(key: 'developerName', value: 'Mohawk Games'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/epic/offer/EGS_MohawkGames_OffworldTradingCompany_S3-1360x766-d93f4d942f88635933d16cfc7dab4983.jpg',
        ),
      ],
    ),
    Game(
      title: 'Train Sim World® 2',
      id: '240096b07cf94eaba1d3695221127d89',
      description: "The evolution of train simulation! Master iconic locomotives on high-speed services, long freight hauls or precise commuter traffic, and get creative with customisation tools in this advanced sequel. Climb into the cab in Train Sim World 2.",
      status: 'ACTIVE',
      effectiveDate: '2021-07-29T15:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Dovetail Games'),
        developerAttribute: Attribute(key: 'developerName', value: 'Dovetail Games'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/home_2560x1440-0bc89f2c71c91b711b22eb7d634834bd',
        ),
      ],
    ),
    Game(
      title: 'Hell is other demons',
      id: '1786c8d9cd474bef9ce221929411633f',
      description: "Hell is Other Demons is an action-platform shooter, with Roguelite elements. Explore a sprawling, hand-crafted world full of demons, insanely over-the-top boss fights, and a heavy synthwave soundtrack.",
      status: 'ACTIVE',
      effectiveDate: '2021-06-17T15:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Kongregate'),
        developerAttribute: Attribute(key: 'developerName', value: 'Cuddle Monster Games'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_Hellisotherdemons_CuddleMonsterGames_S1_2560x1440-b9528f8932eadbc39d5e03db5d798859',
        ),
      ],
    ),
    Game(
      title: 'The Spectrum Retreat',
      id: '2cb68a86262b4e0a91dbe0625cbbb242',
      description: "Check-in to The Spectrum Retreat for a stay you won’t forget. Explore the pristine and uncanny hotel, The Penrose, while solving its ingenious colour-coded puzzles and discovering the reasons behind their seemingly never-ending stay.",
      status: 'ACTIVE',
      effectiveDate: '2021-07-01T15:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Ripstone Ltd'),
        developerAttribute: Attribute(key: 'developerName', value: 'Dan Smith'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/52b99d72-9223-4524-ab74-240ae808c489_2560x1440-d583c45997a46d39e1a31525ae883b84',
        ),
      ],
    ),
    Game(
      title: 'Void Bastards',
      id: 'c1bb7eb3554b42f0957cc87363e59e1d',
      description: "Void Bastards is a revolutionary new strategy-shooter that will test your wits as well as exercise your aim. Can you lead the misfit prisoners of the Void Ark through the derelict spaceships?",
      status: 'ACTIVE',
      effectiveDate: '2021-08-19T15:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Humble Bundle'),
        developerAttribute: Attribute(key: 'developerName', value: 'Blue Manchu'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_VoidBastards_BlueManchu_S1_2560x1440-6ffb5f547e5434d115cc6de7d13b1bc6',
        ),
      ],
    ),
  ],
  upcoming: [
    Game(
      title: 'Sheltered',
      id: '011ab6d40b80485bb23fbef4362aceb2',
      description: "Sheltered is a deep and emotional survival management game. You take on the role of protecting four family members who, after a global apocalypse, have found their way to a deserted shelter.",
      status: 'ACTIVE',
      effectiveDate: '2021-09-09T15:00:00.000Z',
      customAttributes: CustomAttributes(
        publisherAttribute: Attribute(key: 'publisherName', value: 'Team17'),
        developerAttribute: Attribute(key: 'developerName', value: 'Unicube'),
      ),
      keyImages: [
        KeyImage(
          type: 'DieselStoreFrontWide',
          url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_Sheltered_Unicube_S3_2560x1440-c24e2bf4318dc189a15e7f659c1377b0',
        ),
      ],
    ),
  ],
);