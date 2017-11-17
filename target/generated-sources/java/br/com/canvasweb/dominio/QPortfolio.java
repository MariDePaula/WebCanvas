package br.com.canvasweb.dominio;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QPortfolio is a Querydsl query type for Portfolio
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QPortfolio extends EntityPathBase<Portfolio> {

    private static final long serialVersionUID = -644036918L;

    public static final QPortfolio portfolio = new QPortfolio("portfolio");

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Integer> IdPortfolio = createNumber("IdPortfolio", Integer.class);

    public final StringPath periodo = createString("periodo");

    public final StringPath situacao = createString("situacao");

    public QPortfolio(String variable) {
        super(Portfolio.class, forVariable(variable));
    }

    public QPortfolio(Path<? extends Portfolio> path) {
        super(path.getType(), path.getMetadata());
    }

    public QPortfolio(PathMetadata metadata) {
        super(Portfolio.class, metadata);
    }

}

