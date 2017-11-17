package br.com.canvasweb.dominio;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QProjetos is a Querydsl query type for Projetos
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QProjetos extends EntityPathBase<Projetos> {

    private static final long serialVersionUID = -640000530L;

    public static final QProjetos projetos = new QProjetos("projetos");

    public final StringPath beneficios = createString("beneficios");

    public final StringPath custos = createString("custos");

    public final StringPath descricao = createString("descricao");

    public final StringPath equipe = createString("equipe");

    public final StringPath grupoEntregas = createString("grupoEntregas");

    public final NumberPath<Integer> IdProjeto = createNumber("IdProjeto", Integer.class);

    public final StringPath justificativa = createString("justificativa");

    public final StringPath linhaTempo = createString("linhaTempo");

    public final StringPath objSmart = createString("objSmart");

    public final StringPath portfolio = createString("portfolio");

    public final StringPath premissas = createString("premissas");

    public final StringPath produto = createString("produto");

    public final StringPath requisitos = createString("requisitos");

    public final StringPath restricoes = createString("restricoes");

    public final StringPath riscos = createString("riscos");

    public final StringPath stakeholders = createString("stakeholders");

    public QProjetos(String variable) {
        super(Projetos.class, forVariable(variable));
    }

    public QProjetos(Path<? extends Projetos> path) {
        super(path.getType(), path.getMetadata());
    }

    public QProjetos(PathMetadata metadata) {
        super(Projetos.class, metadata);
    }

}

