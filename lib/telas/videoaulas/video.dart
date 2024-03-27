import 'package:youtube_parser/youtube_parser.dart';

class Video{
	String? topico;
	String? id;
	String? titulo;
	String? descricao;
	String? imagem;

	Video({this.topico,this.id, this.titulo, this.descricao, this.imagem});
	
	factory Video.fromJson(Map<String,dynamic> json){
		
		return Video(
			topico: json["topico"]["title"],
			id: getIdFromUrl(json["id"]),
			titulo: json["titulo"],
			descricao: json["descricao"],
			imagem: json["imagem"],
		);
	}
}