package br.com.canvasweb.dominio;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QUsuario is a Querydsl query type for Usuario
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUsuario extends EntityPathBase<Usuario> {

    private static final long serialVersionUID = -814011088L;

    public static final QUsuario usuario = new QUsuario("usuario");

    public final StringPath email = createString("email");

    public final NumberPath<Integer> idUsuario = createNumber("idUsuario", Integer.class);

    public final StringPath nome = createString("nome");

    public final StringPath senha = createString("senha");

    public final NumberPath<Integer> telefone = createNumber("telefone", Integer.class);

    public final StringPath tipo = createString("tipo");

    public QUsuario(String variable) {
        super(Usuario.class, forVariable(variable));
    }

    public QUsuario(Path<? extends Usuario> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUsuario(PathMetadata metadata) {
        super(Usuario.class, metadata);
    }

}

