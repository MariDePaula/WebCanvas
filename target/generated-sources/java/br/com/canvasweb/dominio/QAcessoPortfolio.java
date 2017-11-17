package br.com.canvasweb.dominio;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QAcessoPortfolio is a Querydsl query type for AcessoPortfolio
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAcessoPortfolio extends EntityPathBase<AcessoPortfolio> {

    private static final long serialVersionUID = 929016830L;

    public static final QAcessoPortfolio acessoPortfolio = new QAcessoPortfolio("acessoPortfolio");

    public final NumberPath<Integer> idAcessoPortfolio = createNumber("idAcessoPortfolio", Integer.class);

    public final NumberPath<Integer> idPortfolio = createNumber("idPortfolio", Integer.class);

    public final NumberPath<Integer> idUsuario = createNumber("idUsuario", Integer.class);

    public QAcessoPortfolio(String variable) {
        super(AcessoPortfolio.class, forVariable(variable));
    }

    public QAcessoPortfolio(Path<? extends AcessoPortfolio> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAcessoPortfolio(PathMetadata metadata) {
        super(AcessoPortfolio.class, metadata);
    }

}

