import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  //Atributos de la clase
    final String answer;
    final bool forced;
    final String image;
  //El constructor de la clase con los atributos
    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });
    //El factory sirve para crear una nueva instancia
    factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    //Crear una instancia de "Message" desde el modelo
    Message toMessageEntity() =>
      Message(
        text: answer == 'yes' ? 'Sí' : answer == 'no' ? 'No' : 'Quizás',
        imageUrl: image,
        fromWho: FromWho.hers,
        hour: '${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}'
);
}