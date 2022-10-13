import 'package:flutter_application_1/caracteristicas/verificacion/bloc.dart';
import 'package:flutter_application_1/dominio/registro_usuario.dart';
import 'package:flutter_application_1/dominio/variable_dominio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_application_1/dominio/problema.dart';
import 'package:xml/xml.dart';

abstract class repositorioVerificacion {
  Future <Either<Problema, RegistroUsuario>> obtenerRegistroUsuario(NickFormado nick);
}

List campos = ['item name'];

class repositorioJuegos extends repositorioVerificacion{
  @override
  Future<Either<Problema, RegistroUsuario>> JuegoConfirmado(NickFormado nick) async{
    final resultado = await _obtenerXmlReal(nick.valor);
    return resultado.match((l) => Left(l), (r) {
      XmlDocument documento = XmlDocument.parse(r);
      final registro = JuegoConfirmado(documento);
      return registro.match((l) =>  Left(l), (r) => Right(r));
    });
  }
