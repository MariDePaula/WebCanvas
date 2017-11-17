package br.com.canvasweb.dominio;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QUsuarioSenha is a Querydsl query type for UsuarioSenha
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUsuarioSenha extends EntityPathBase<UsuarioSenha> {

    private static final long serialVersionUID = -970800379L;

    public static final QUsuarioSenha usuarioSenha = new QUsuarioSenha("usuarioSenha");

    public final NumberPath<Integer> IdSenha = createNumber("IdSenha", Integer.class);

    public final NumberPath<Integer> idUsuario = createNumber("idUsuario", Integer.class);

    public final StringPath SenhaUsuario = createString("SenhaUsuario");

    public QUsuarioSenha(String variable) {
        super(UsuarioSenha.class, forVariable(variable));
    }

    public QUsuarioSenha(Path<? extends UsuarioSenha> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUsuarioSenha(PathMetadata metadata) {
        super(UsuarioSenha.class, metadata);
    }

}

