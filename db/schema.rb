# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161006173416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Bloquetes", id: false, force: :cascade do |t|
    t.integer  "Código da Venda",                                                 default: 0
    t.datetime "Vencimento"
    t.decimal  "Valor da Parcela",                       precision: 19, scale: 4, default: "0.0"
    t.string   "Bloquete",                   limit: 50
    t.boolean  "Pago",                                                            default: false
    t.string   "Situação",                   limit: 250
    t.string   "Banco",                      limit: 50
    t.datetime "DataPag"
    t.string   "categoria",                  limit: 250
    t.string   "Local",                      limit: 50
    t.decimal  "Valor Pago",                             precision: 19, scale: 4, default: "0.0"
    t.string   "Baixado por",                limit: 150
    t.datetime "DtBaixa"
    t.datetime "Horas"
    t.boolean  "Visto",                                                           default: false
    t.string   "NºCheque",                   limit: 50
    t.string   "Leitura Anterior",           limit: 50
    t.string   "Leitura Atual",              limit: 50
    t.integer  "Quantidade Cópias",                                               default: 0
    t.integer  "Quantidade Cópias1",                                              default: 0
    t.integer  "Quantidade Cópias2",                                              default: 0
    t.string   "Período Referência",         limit: 50
    t.text     "Obs3"
    t.float    "Quant1",                                                          default: 0.0
    t.string   "Unid1",                      limit: 50
    t.text     "Discriminação1"
    t.decimal  "PrUnit1",                                precision: 19, scale: 4, default: "0.0"
    t.float    "Quant2",                                                          default: 0.0
    t.string   "Unid2",                      limit: 50
    t.text     "Discriminação2"
    t.decimal  "PrUnit2",                                precision: 19, scale: 4, default: "0.0"
    t.string   "NºNota",                     limit: 50
    t.datetime "DataNota"
    t.text     "ObsNotaServiço"
    t.datetime "DataHoraVisto"
    t.string   "TextoVisto",                 limit: 250
    t.float    "%ISS",                                                            default: 0.0
    t.text     "ObservacaoBaixa"
    t.boolean  "ComissaoVistar",                                                  default: false
    t.float    "ValorCor1",                                                       default: 0.0
    t.float    "ValorCor2",                                                       default: 0.0
    t.float    "ValorCor3",                                                       default: 0.0
    t.decimal  "Valor da Parcela2",                      precision: 19, scale: 4, default: "0.0"
    t.datetime "DataDev"
    t.string   "Pagto",                      limit: 50
    t.integer  "Parcelas",                                                        default: 0
    t.integer  "Prazo",                                                           default: 0
    t.string   "CACHE_ID",                   limit: 50
    t.string   "IntervaloContrato",          limit: 250
    t.string   "Informacoes_Complementares", limit: 255
    t.float    "Quant3",                                                          default: 0.0
    t.float    "Quant4",                                                          default: 0.0
    t.string   "Unid3",                      limit: 50
    t.string   "Unid4",                      limit: 50
    t.text     "Discriminação3"
    t.text     "Discriminação4"
    t.float    "PrUnit3",                                                         default: 0.0
    t.float    "PrUnit4",                                                         default: 0.0
    t.text     "Discriminação5"
    t.float    "PrUnit5",                                                         default: 0.0
    t.string   "Unid5",                      limit: 50
    t.float    "Quant5",                                                          default: 0.0
    t.integer  "Contador"
  end

  create_table "log_bairro", primary_key: "bai_nu_sequencial", id: :integer, force: :cascade do |t|
    t.string  "bai_no_abrev",      limit: 255
    t.string  "ufe_sg",            limit: 255
    t.string  "bai_no",            limit: 255
    t.string  "bai_no_sem_acento", limit: 255
    t.integer "loc_nu_sequencial"
  end

  create_table "log_cep", primary_key: ["log_nu_cep", "log_in_tabela"], force: :cascade do |t|
    t.integer "log_nu_cep",              null: false
    t.integer "log_in_tabela",           null: false
    t.string  "cep",           limit: 8, null: false
  end

  create_table "log_job", id: false, force: :cascade do |t|
    t.text     "job"
    t.datetime "inicio"
    t.datetime "fim"
    t.text     "erro"
  end

  create_table "log_localidade", primary_key: "loc_nu_sequencial", id: :integer, force: :cascade do |t|
    t.string  "cep",                    limit: 255
    t.string  "ufe_sg",                 limit: 255
    t.string  "loc_no",                 limit: 255
    t.string  "loc_no_sem_acento",      limit: 255
    t.string  "loc_nosub",              limit: 255
    t.integer "loc_in_situacao"
    t.string  "loc_in_tipo_localidade", limit: 255
    t.integer "loc_nu_sequencial_sub"
  end

  create_table "log_logradouro", primary_key: "log_nu_sequencial", id: :integer, force: :cascade do |t|
    t.string  "cep",                   limit: 255
    t.string  "log_complemento",       limit: 255
    t.string  "ufe_sg",                limit: 255
    t.string  "log_no",                limit: 255
    t.string  "log_nome",              limit: 255
    t.string  "log_no_sem_acento",     limit: 255
    t.string  "log_status_tipo_log",   limit: 255
    t.string  "log_tipo_logradouro",   limit: 255
    t.integer "bai_nu_sequencial_fim"
    t.integer "loc_nu_sequencial"
    t.integer "bai_nu_sequencial_ini"
  end

  create_table "maqlarem_cadastrodemercadorias2", id: false, force: :cascade do |t|
    t.text "codigodamercadoria"
    t.text "codfabricante"
    t.text "mercadoria"
    t.text "fabricante"
    t.text "fabricante2"
    t.text "precodecusto"
    t.text "precodevenda"
    t.text "fornecedor"
    t.text "imposto"
    t.text "unidadesemestoque"
    t.text "medida"
    t.text "precodecusto2"
    t.text "tamanho"
    t.text "larg"
    t.text "espessura"
    t.text "icms"
    t.text "frete"
    t.text "ipi"
    t.text "indice"
    t.text "estoqueminimo"
    t.text "precocompra"
    t.text "prateleira"
    t.text "estoquereal"
    t.text "marca"
    t.text "assit"
    t.text "cor"
    t.text "entradas"
    t.text "saidas"
    t.text "entmov"
    t.text "codoriginal"
    t.text "desativado"
    t.text "contemserial"
    t.text "mes1qt"
    t.text "mes2qt"
    t.text "mes3qt"
    t.text "mesatqt"
    t.text "ref1"
    t.text "ref2"
    t.text "ref3"
    t.text "refat"
    t.text "qtdesolicitada"
  end

  create_table "maqlarem_cadastrodevendas", id: false, force: :cascade do |t|
    t.text "codigodavenda"
    t.text "datadavenda"
    t.text "nomedocliente"
    t.text "codcliente"
    t.text "nodaduplicata"
    t.text "formadepagamento"
    t.text "vencimento"
    t.text "valordaparcela"
    t.text "bloquete"
    t.text "comprador"
    t.text "endereco"
    t.text "cgc"
    t.text "banco"
    t.text "agencia"
    t.text "nodaconta"
    t.text "valoradepositar"
    t.text "datadodeposito"
    t.text "tamanho"
    t.text "largura"
    t.text "espessura"
    t.text "pago"
    t.text "nota"
    t.text "origemnota"
    t.text "obs"
    t.text "natureza"
    t.text "total"
    t.text "vendedor"
    t.text "transportador"
    t.text "frete"
    t.text "opcao"
    t.text "vlrfrete"
    t.text "outrasdespesas"
    t.text "icms"
    t.text "placa"
    t.text "dtemissao"
    t.text "mensagem"
    t.text "valorpedido"
    t.text "c"
    t.text "obsdupl"
    t.text "tipodecontratocopcaoousopcao"
    t.text "prazo"
    t.text "franquiamensal"
    t.text "valormensal"
    t.text "reajuste"
    t.text "quantidadedemodeloequipto"
    t.text "matriculas"
    t.text "datainiciocontrato"
    t.text "x1ovencimento"
    t.text "finaldocontrato"
    t.text "valorcopiaexcedente"
    t.text "renovacaodocontrato"
    t.text "suprimentosinclusosnao"
    t.text "obslocacao"
    t.text "inativo"
    t.text "dialeitura"
    t.text "chavecontrato"
    t.text "valoravista"
    t.text "valorcomissao"
    t.text "percentualcomissao"
    t.text "percentualcomissaovm"
    t.text "tefcv"
    t.text "lojaorigem"
    t.text "ser"
    t.text "sub_ser"
    t.text "cod_cta"
    t.text "serieecf"
    t.text "registro"
    t.text "setor"
    t.text "vendatrocada"
    t.text "pedidobaixado"
    t.text "numerodav"
    t.text "cancelamento_usuario"
    t.text "cancelamento_datahora"
    t.text "finalizarvenda"
    t.text "cr_cheque"
    t.text "lancamento_datahora"
    t.text "lancamento_usuario"
    t.text "lacrar"
    t.text "descontar2"
    t.text "descontar"
    t.text "cr_duplicata"
    t.text "cr_cartao"
    t.text "horas"
    t.text "tefccf"
    t.text "cr_dinheiro"
    t.text "cr_tipocartao"
    t.text "teleentrega"
    t.text "cr_troca"
    t.text "turno"
    t.text "usuariocaixa"
    t.text "tefnsu"
    t.text "tefhora"
    t.text "chavefrenteloja"
    t.text "cr_parcelas"
    t.text "valorpago"
    t.text "tefdata"
    t.text "tefdoc"
    t.text "tefrede"
    t.text "tefvalor"
    t.text "numerocomanda"
    t.text "chavevendatroca"
    t.text "usuariocaixacod"
    t.text "mesa"
    t.text "consignacao"
    t.text "aliascartao"
    t.text "atualizado"
    t.text "cst_pis"
    t.text "cstpis"
    t.text "indicadornatfrete"
    t.text "natbasecredito"
    t.text "paf_posto"
    t.text "tipocred"
    t.text "tp_assinante"
    t.text "cancelado"
    t.text "cfop"
  end

  create_table "maqlarem_categorias", id: false, force: :cascade do |t|
    t.text "registro"
    t.text "categoria"
    t.text "naorecebivel"
    t.text "apagar"
    t.text "tipo"
    t.text "loja"
  end

  create_table "maqlarem_categorias_subcategorias", id: false, force: :cascade do |t|
    t.text "codigocategoria"
    t.text "nomes"
    t.text "registro"
  end

  create_table "maqlarem_clientes", id: false, force: :cascade do |t|
    t.text "codigodocliente"
    t.text "nomedocliente"
    t.text "endereco"
    t.text "bairro"
    t.text "cidade"
    t.text "uf"
    t.text "foneresid"
    t.text "fonecom"
    t.text "fone3"
    t.text "datanasc"
    t.text "observacoes"
    t.text "cep"
    t.text "cgc"
    t.text "inscricaoestadual"
    t.text "contato"
    t.text "tipodecliente"
    t.text "produto"
    t.text "datadenascimento2"
    t.text "vendedor"
    t.text "selecionar"
    t.text "apoiointerno"
    t.text "obs2"
    t.text "tecnico2"
    t.text "equipamento"
    t.text "dtcadastro"
    t.text "tabelaprecodevenda"
    t.text "formadepagto"
    t.text "situacaocredito"
    t.text "motivocredito"
    t.text "selecionarcarta"
    t.text "obsrelatorio"
    t.text "email"
    t.text "contrato1"
    t.text "contrato2"
    t.text "contrato3"
    t.text "desativarleituras"
    t.text "limitecredito"
    t.text "lojaorigem"
    t.text "lancadopor"
    t.text "lancadodatahora"
    t.text "nfeinicio"
    t.text "ccidade"
    t.text "cpais"
    t.text "num"
    t.text "nfefim"
    t.text "razaosocial"
    t.text "e_mail"
    t.text "area"
    t.text "inscricaomunicipal"
    t.text "lancamento_usuario"
    t.text "lancamento_datahora"
    t.text "ind_nat_ret"
    t.text "ind_nat_rec"
  end

  create_table "maqlarem_contasapagar", id: false, force: :cascade do |t|
    t.text "registro"
    t.text "historico"
    t.text "valor"
    t.text "vencimento"
    t.text "datadepagamento"
    t.text "pago"
    t.text "categoria"
    t.text "bloquete"
    t.text "datasn"
    t.text "lojaorigem"
    t.text "codigodacompra"
    t.text "valorpago"
    t.text "subcategoria"
    t.text "obslancamento"
    t.text "dtemissao"
    t.text "tipodocumento"
    t.text "numerodoc"
    t.text "valornota"
    t.text "primeirovencimento"
    t.text "parcelas"
    t.text "diasintervalo"
    t.text "lancamento_usuario"
    t.text "lancamento_datahora"
    t.text "tipodespesas"
    t.text "dtmanutencao"
    t.text "registroconhecimento"
  end

  create_table "maqlarem_contasapagarvencimentos", id: false, force: :cascade do |t|
    t.text "registro"
    t.text "vencimento"
    t.text "valor2"
    t.text "parcela"
    t.text "datadepagamento"
    t.text "valorpago"
    t.text "formapagto"
    t.text "nocheque"
    t.text "conta"
    t.text "obs2"
    t.text "ordem"
    t.text "lacrar"
    t.text "pago"
    t.text "baixa_usuario"
    t.text "baixa_datahora"
    t.text "vistogerente"
    t.text "confirmado"
    t.text "docchegou"
    t.text "localapagar"
    t.text "impresso"
    t.text "dt_programar"
    t.text "duplicatapendentecp"
    t.text "chave_pagamentocompras"
  end

  create_table "maqlarem_contrato", id: false, force: :cascade do |t|
    t.text "registro"
    t.text "codigodocliente"
    t.text "pedido"
    t.text "vendedor"
    t.text "observacoesgerais"
    t.text "impresso"
    t.text "prazo"
    t.text "franquiamensal"
    t.text "franquiamensal2"
    t.text "franquiamensal3"
    t.text "franquiamensal4"
    t.text "valorcopia"
    t.text "valorcopia2"
    t.text "valorcopia3"
    t.text "valorcopia4"
    t.text "valormensal"
    t.text "localinstalacao"
    t.text "diadevencimento"
    t.text "datainiciocontrato"
    t.text "dataterminocontrato"
    t.text "reajustemeses"
    t.text "tipoatendimento"
    t.text "quantidademodeloequipto"
    t.text "reajusteindice"
    t.text "inativo"
    t.text "maodeobraate"
    t.text "suprimentosate"
    t.text "pecasate"
    t.text "responsavelcontrato"
    t.text "diadaleitura"
    t.text "grampo"
    t.text "datalimite"
    t.text "datacontrato"
    t.text "comissao"
    t.text "gravado"
    t.text "sla"
  end

  create_table "maqlarem_defeitosservicos", id: false, force: :cascade do |t|
    t.text "registro"
    t.text "descricaos"
    t.text "tipo"
  end

  create_table "maqlarem_fornecedores", id: false, force: :cascade do |t|
    t.text "codigodofornecedor"
    t.text "fornecedor"
    t.text "endereco"
    t.text "bairro"
    t.text "cidade"
    t.text "uf"
    t.text "fone1"
    t.text "fone2"
    t.text "cep"
    t.text "produtosfornecidos"
    t.text "observacoes"
    t.text "contato"
    t.text "cgc"
    t.text "inscest"
    t.text "mult1"
    t.text "mult2"
    t.text "mult3"
    t.text "mult1pecas"
    t.text "mult2pecas"
    t.text "mult3pecas"
    t.text "nfeinicio"
    t.text "ccidade"
    t.text "cpais"
    t.text "nfefim"
    t.text "cgccpf"
    t.text "inscestadual"
    t.text "e_mail"
    t.text "representante"
    t.text "lancamento_usuario"
    t.text "lancamento_datahora"
    t.text "leilao_usuario"
    t.text "leilao_senha"
    t.text "tipopessoa"
    t.text "fantasia"
    t.text "codboleto"
    t.text "aliascartao"
    t.text "atualizado"
    t.text "cst_pis"
    t.text "cstpis"
    t.text "indicadornatfrete"
    t.text "natbasecredito"
    t.text "paf_posto"
    t.text "tipocred"
    t.text "tp_assinante"
  end

  create_table "maqlarem_indicador_comissao", id: false, force: :cascade do |t|
    t.text "codigodavenda"
    t.text "tipo"
    t.text "vendedor"
    t.text "c"
  end

  create_table "maqlarem_subclientes", id: false, force: :cascade do |t|
    t.text "sequencia"
    t.text "codigodocliente"
    t.text "registro"
    t.text "numero"
    t.text "maquinamodelo"
    t.text "contador"
    t.text "local"
    t.text "endereco"
    t.text "cidade"
    t.text "dadoscontrato"
    t.text "dtlimite"
    t.text "fone"
    t.text "dtinst"
    t.text "pendencia"
    t.text "tipoatend"
    t.text "mao_de_obra"
    t.text "pecas"
    t.text "suprimentos"
    t.text "obs2"
    t.text "txdesloc"
    t.text "pts"
    t.text "cep"
    t.text "area"
    t.text "cidadeantiga"
    t.text "status"
    t.text "diadaleitura"
    t.text "contrato1"
    t.text "contrato2"
    t.text "contrato3"
    t.text "contrato"
    t.text "hardware"
    t.text "requisicaoaberta"
    t.text "sla"
    t.text "loja"
  end

  create_table "maqlarem_vendas_historicolocacao", id: false, force: :cascade do |t|
    t.text "sequencia"
    t.text "codigodavenda"
    t.text "tipodecontratocopcaoousopcao"
    t.text "prazo"
    t.text "franquiamensal"
    t.text "valormensal"
    t.text "reajuste"
    t.text "quantidadedemodeloequipto"
    t.text "matriculas"
    t.text "datainiciocontrato"
    t.text "x1ovencimento"
    t.text "finaldocontrato"
    t.text "valorcopiaexcedente"
    t.text "renovacaodocontrato"
    t.text "suprimentosinclusosnao"
    t.text "obslocacao"
    t.text "inativo"
    t.text "dialeitura"
  end

  create_table "maqlarem_vendedores", id: false, force: :cascade do |t|
    t.text "codigodovendedor"
    t.text "nome"
    t.text "datadeadmissao"
    t.text "comissao"
    t.text "senha"
    t.text "funcao"
    t.text "baixarpagamento"
    t.text "endereco"
    t.text "bairro"
    t.text "cidade"
    t.text "uf"
    t.text "foneresid"
    t.text "datanasc"
    t.text "observacoes"
    t.text "cep"
    t.text "cgc"
    t.text "inscricaoestadual"
    t.text "pontodereferencia"
    t.text "desativado"
    t.text "acesso"
    t.text "entrada_planejamento"
    t.text "entrada_vendas"
    t.text "entrada_marketing"
    t.text "entrada_faturamentoapoio"
    t.text "entrada_assistencia"
    t.text "entrada_cobranca"
    t.text "entrada_faturamento"
    t.text "entrada_estoque"
    t.text "entrada_gestao"
    t.text "planejamento_modulo1"
    t.text "planejamento_modulo2"
    t.text "planejamento_modulo3"
    t.text "planejamento_modulo4"
    t.text "planejamento_relatorio1"
    t.text "planejamento_relatorio2"
    t.text "planejamento_relatorio3"
    t.text "planejamento_relatorio4"
    t.text "planejamento_relatorio5"
    t.text "planejamento_relatorio6"
    t.text "planejamento_relatorio7"
    t.text "planejamento_relatorio8"
    t.text "planejamento_relatorio9"
    t.text "planejamento_relatorio10"
    t.text "planejamento_rotina"
    t.text "vendas_modulo1"
    t.text "vendas_modulo2"
    t.text "vendas_modulo3"
    t.text "vendas_modulo4"
    t.text "vendas_modulo5"
    t.text "vendas_modulo6"
    t.text "vendas_modulo7"
    t.text "vendas_modulo8"
    t.text "vendas_cobranca"
    t.text "vendas_faturamento1"
    t.text "vendas_faturamento2"
    t.text "vendas_faturamento3"
    t.text "vendas_servico1"
    t.text "vendas_servico2"
    t.text "vendas_servico3"
    t.text "vendas_rotina1"
    t.text "vendas_rotina2"
    t.text "vendas_rotina3"
    t.text "vendas_rotina4"
    t.text "marketing_modulo1"
    t.text "marketing_modulo2"
    t.text "marketing_modulo3"
    t.text "marketing_modulo4"
    t.text "marketing_modulo5"
    t.text "marketing_relatorioscliente1"
    t.text "marketing_relatorioscliente2"
    t.text "marketing_relatorioscliente3"
    t.text "marketing_relatorioscliente4"
    t.text "marketing_relatorioscliente5"
    t.text "marketing_relatorioscliente6"
    t.text "marketing_relatorioscliente7"
    t.text "marketing_relatorioscliente8"
    t.text "marketing_relatoriosservico1"
    t.text "marketing_relatoriosservico2"
    t.text "marketing_relatoriosservico3"
    t.text "marketing_relatoriosservico4"
    t.text "marketing_relatoriosservico5"
    t.text "marketing_relatoriosservico6"
    t.text "marketing_relatoriosservico7"
    t.text "marketing_relatoriosservico8"
    t.text "marketing_rotina1"
    t.text "marketing_rotina2"
    t.text "marketing_rotina3"
    t.text "marketing_rotina4"
    t.text "marketing_rotina5"
    t.text "marketing_rotina6"
    t.text "marketing_rotina7"
    t.text "marketing_rotina8"
    t.text "marketing_rotina9"
    t.text "faturamentoapoio_modulo1"
    t.text "faturamentoapoio_modulo2"
    t.text "faturamentoapoio_modulo3"
    t.text "faturamentoapoio_modulo4"
    t.text "faturamentoapoio_modulo5"
    t.text "faturamentoapoio_modulo6"
    t.text "assistencia_modulo1"
    t.text "assistencia_modulo2"
    t.text "assistencia_modulo3"
    t.text "assistencia_modulo4"
    t.text "assistencia_requisicao1"
    t.text "assistencia_requisicao2"
    t.text "assistencia_requisicao3"
    t.text "assistencia_tecnico1"
    t.text "assistencia_tecnico2"
    t.text "assistencia_tecnico3"
    t.text "assistencia_ordemservico1"
    t.text "assistencia_ordemservico2"
    t.text "assistencia_ordemservico3"
    t.text "assistencia_ordemservico4"
    t.text "assistencia_relatorio1"
    t.text "assistencia_relatorio2"
    t.text "assistencia_relatorio3"
    t.text "assistencia_rotina1"
    t.text "assistencia_rotina2"
    t.text "assistencia_rotina3"
    t.text "assistencia_rotina4"
    t.text "assistencia_rotina5"
    t.text "assistencia_rotina6"
    t.text "assistencia_rotina7"
    t.text "assistencia_rotina8"
    t.text "assistencia_rotina9"
    t.text "assistencia_rotina10"
    t.text "cobranca_modulo1"
    t.text "cobranca_modulo2"
    t.text "cobranca_modulo3"
    t.text "cobranca_relatorio1"
    t.text "cobranca_relatorio2"
    t.text "cobranca_relatorio3"
    t.text "cobranca_relatorio4"
    t.text "cobranca_relatorio5"
    t.text "cobranca_relatorio6"
    t.text "cobranca_relatorio7"
    t.text "cobranca_relatorio8"
    t.text "cobranca_relatorio9"
    t.text "cobranca_relatorio10"
    t.text "faturamento_cobranca1"
    t.text "faturamento_cobranca2"
    t.text "faturamento_cobranca3"
    t.text "faturamento_cobranca4"
    t.text "faturamento_cobranca5"
    t.text "faturamento_cobranca6"
    t.text "faturamento_cobranca7"
    t.text "faturamento_cobranca8"
    t.text "faturamento_cobranca9"
    t.text "faturamento_cobranca10"
    t.text "faturamento_cobranca11"
    t.text "faturamento_apagarpagos1"
    t.text "faturamento_apagarpagos2"
    t.text "faturamento_apagarpagos3"
    t.text "faturamento_apagarpagos4"
    t.text "faturamento_apagarpagos5"
    t.text "faturamento_apagarpagos6"
    t.text "faturamento_apagarpagos7"
    t.text "faturamento_consulta1"
    t.text "faturamento_consulta2"
    t.text "faturamento_consulta3"
    t.text "faturamento_consulta4"
    t.text "faturamento_consulta5"
    t.text "faturamento_consulta6"
    t.text "faturamento_modulo1"
    t.text "faturamento_modulo2"
    t.text "faturamento_modulo3"
    t.text "faturamento_modulo4"
    t.text "faturamento_modulo5"
    t.text "faturamento_modulo6"
    t.text "faturamento_estoque1"
    t.text "faturamento_estoque2"
    t.text "faturamento_estoque3"
    t.text "faturamento_estoque4"
    t.text "faturamento_estoque5"
    t.text "faturamento_estoque6"
    t.text "faturamento_rotina1"
    t.text "faturamento_rotina2"
    t.text "faturamento_rotina3"
    t.text "faturamento_rotina4"
    t.text "faturamento_rotina5"
    t.text "faturamento_rotina6"
    t.text "faturamento_rotina7"
    t.text "faturamento_rotina8"
    t.text "faturamento_rotina9"
    t.text "estoque_modulos1"
    t.text "estoque_modulos2"
    t.text "estoque_modulos3"
    t.text "estoque_modulos4"
    t.text "gestao_modulos1"
    t.text "gestao_modulos2"
    t.text "gestao_modulos3"
    t.text "gestao_modulos4"
    t.text "gestao_modulos5"
    t.text "gestao_modulos6"
    t.text "gestao_modulos7"
    t.text "cadastro_fornecedor"
    t.text "cadastro_marcas"
    t.text "cadastro_grupos"
    t.text "cadastro_subgrupos"
    t.text "cadastro_transportadoras"
    t.text "cadastro_cidades"
    t.text "cadastro_area"
    t.text "cadastro_naturezas"
    t.text "cadastro_categorias"
    t.text "cadastro_localdepagamento"
    t.text "cadastro_tecnicos"
    t.text "cadastro_tipodecliente"
    t.text "cadastro_produtos"
    t.text "cadastro_produtosorcamento"
    t.text "cadastro_dolar"
    t.text "cadastro_tipoatendimento"
    t.text "cadastro_modelosmaquina"
    t.text "cadastro_defeitosservicosos"
    t.text "cadastro_multiplicadorminimo"
    t.text "cadastro_tabelaorcmarelli"
    t.text "cadastro_tabelapedidomarelli"
    t.text "clientesincluir"
    t.text "clientesalterar"
    t.text "clientesconsultar"
    t.text "clientesexcluir"
    t.text "orcamentoincluir"
    t.text "orcamentoalterar"
    t.text "orcamentoconsultar"
    t.text "orcamentoexcluir"
    t.text "reimprimirvenda"
    t.text "vendasincluir"
    t.text "vendasalterar"
    t.text "vendasconsultar"
    t.text "vendasexcluir"
    t.text "mercadoriasincluir"
    t.text "mercadoriasalterar"
    t.text "mercadoriasconsultar"
    t.text "mercadoriasexcluir"
    t.text "pedidosincluir"
    t.text "pedidosalterar"
    t.text "pedidosconsultar"
    t.text "pedidosexcluir"
    t.text "pedidosassincluir"
    t.text "pedidosassalterar"
    t.text "pedidosassconsultar"
    t.text "pedidosassexcluir"
    t.text "pedidosassliberarpreco"
    t.text "atribuirlimitecredito"
    t.text "liberarlimitecredito"
    t.text "cadastrarseriais"
    t.text "individual"
    t.text "historicoequipamento"
    t.text "cl_digital"
    t.text "determinarnivel"
    t.text "fatuamentotransf"
    t.text "estoqueexibir"
    t.text "help"
    t.text "credito"
    t.text "creditovistar"
    t.text "lojaorigem"
  end

  create_table "r_analisedecompra", id: false, force: :cascade do |t|
    t.integer "idproduto"
    t.decimal "qtdpedidosemaberto", precision: 12, scale: 2
    t.decimal "qtdestoque",         precision: 12, scale: 2
    t.decimal "giroultimos30dias",  precision: 12, scale: 2
    t.decimal "mes1",               precision: 12, scale: 2
    t.decimal "mes2",               precision: 12, scale: 2
    t.decimal "mes3",               precision: 12, scale: 2
    t.decimal "mes4",               precision: 12, scale: 2
    t.decimal "mes5",               precision: 12, scale: 2
    t.decimal "mes6",               precision: 12, scale: 2
    t.decimal "mes7",               precision: 12, scale: 2
    t.decimal "mes8",               precision: 12, scale: 2
    t.decimal "mes9",               precision: 12, scale: 2
    t.decimal "mes10",              precision: 12, scale: 2
    t.decimal "mes11",              precision: 12, scale: 2
    t.decimal "mes12",              precision: 12, scale: 2
  end

  create_table "r_analiseestoque", id: false, force: :cascade do |t|
    t.integer "idproduto"
    t.decimal "qtdinicial",        precision: 12, scale: 2
    t.decimal "qtdfinal",          precision: 12, scale: 2
    t.decimal "qtdrecebida",       precision: 12, scale: 2
    t.decimal "qtdvendas",         precision: 12, scale: 2
    t.decimal "qtdtrocas",         precision: 12, scale: 2
    t.decimal "valorcustomedio",   precision: 12, scale: 2
    t.decimal "valorvendamedio",   precision: 12, scale: 2
    t.decimal "qtdoutrasentradas", precision: 12, scale: 2
    t.decimal "qtdoutrassaidas",   precision: 12, scale: 2
  end

  create_table "r_comportamentovendasporproduto", id: false, force: :cascade do |t|
    t.integer "idproduto",                                      null: false
    t.date    "dataprimeiraentrada"
    t.date    "dataultimaentrada"
    t.date    "dataultimavenda"
    t.decimal "precocusto",            precision: 12, scale: 2
    t.decimal "precovenda",            precision: 12, scale: 2
    t.decimal "quantidadeatual",       precision: 12, scale: 2
    t.decimal "quantidadevendida",     precision: 12, scale: 2
    t.decimal "quantidadediasestoque", precision: 12, scale: 2
  end

  create_table "r_curvaabccliente", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idcliente"
    t.integer "idsetor",                       null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcclienteagrupadovendedor", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idcliente"
    t.integer "idsetor",                       null: false
    t.integer "idvendedor",                    null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcmarca", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idmarca",                       null: false
    t.integer "idsetor",                       null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcmarcaagrupadovendedor", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idvendedor",                    null: false
    t.integer "idmarca",                       null: false
    t.integer "idsetor",                       null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcproduto", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idproduto",                     null: false
    t.integer "idsetor",                       null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcprodutoagrupadovendedor", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idproduto",                     null: false
    t.integer "idsetor",                       null: false
    t.integer "idvendedor",                    null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcreferenciaproduto", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idreferenciaproduto",           null: false
    t.integer "idsetor",                       null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_curvaabcreferenciaprodutoagrupadovendedor", id: false, force: :cascade do |t|
    t.integer "idestabelecimento",             null: false
    t.integer "idreferenciaproduto",           null: false
    t.integer "idsetor",                       null: false
    t.integer "idvendedor",                    null: false
    t.decimal "qtdvalor",                      null: false
    t.decimal "percentual"
    t.decimal "percentualacumulado"
    t.string  "classificacao",       limit: 1
  end

  create_table "r_derivacaoestoquefiscalinicial", id: false, force: :cascade do |t|
    t.integer "idreferenciaproduto"
    t.integer "sequencia"
    t.date    "data"
    t.decimal "qtdentrada",          precision: 12, scale: 2
    t.decimal "qtdsaida",            precision: 12, scale: 2
    t.decimal "saldo",               precision: 12, scale: 2
    t.decimal "qtdinicial",          precision: 12, scale: 2
    t.decimal "qtdfinal",            precision: 12, scale: 2
    t.decimal "diferenca",           precision: 12, scale: 2
  end

  create_table "r_estoquefiscal", id: false, force: :cascade do |t|
    t.string "ncm",        limit: 8
    t.float  "qtdentrada"
    t.float  "qtdsaida"
    t.float  "qtdestoque"
  end

  create_table "r_estoquefiscalporproduto", id: false, force: :cascade do |t|
    t.bigint "idproduto"
    t.float  "qtdentrada"
    t.float  "qtdsaida"
  end

  create_table "r_extratofinanceiro", id: false, force: :cascade do |t|
    t.string  "tipotitulo"
    t.string  "pagaroureceber"
    t.integer "id"
    t.string  "loja"
    t.float   "valor"
    t.string  "descricao"
    t.integer "idloja"
    t.date    "data"
  end

  create_table "r_girosinteticopornotafiscal", id: false, force: :cascade do |t|
    t.integer "idnotafiscalentrada", null: false
    t.integer "idestabelecimento"
    t.integer "idfornecedor"
    t.float   "qtdprodutosnota"
    t.float   "estoque07"
    t.float   "estoque14"
    t.float   "estoque30"
    t.float   "estoque60"
    t.float   "estoque90"
    t.float   "estoquefinal"
    t.date    "dataentrada"
    t.date    "dataultimavenda"
  end

  create_table "r_girosinteticopornotafiscaldetalhado", id: false, force: :cascade do |t|
    t.integer "idnotafiscalentrada", null: false
    t.integer "idestabelecimento"
    t.integer "idfornecedor"
    t.integer "idproduto"
    t.float   "qtdprodutosnota"
    t.float   "estoque07"
    t.float   "estoque14"
    t.float   "estoque30"
    t.float   "estoque60"
    t.float   "estoque90"
    t.float   "estoquefinal"
    t.date    "dataentrada"
    t.date    "dataultimavenda"
  end

  create_table "r_girosinteticoporrecebimento", id: false, force: :cascade do |t|
    t.integer "idrecebimento",          null: false
    t.integer "idestabelecimento"
    t.integer "idfornecedor"
    t.float   "qtdprodutosrecebimento"
    t.float   "estoque07"
    t.float   "estoque14"
    t.float   "estoque30"
    t.float   "estoque60"
    t.float   "estoque90"
    t.float   "estoquefinal"
    t.date    "dataentrada"
    t.date    "dataultimavenda"
  end

  create_table "r_girosinteticoporrecebimentodetalhado", id: false, force: :cascade do |t|
    t.integer "idrecebimento",          null: false
    t.integer "idestabelecimento"
    t.integer "idfornecedor"
    t.integer "idproduto"
    t.float   "qtdprodutosrecebimento"
    t.float   "estoque07"
    t.float   "estoque14"
    t.float   "estoque30"
    t.float   "estoque60"
    t.float   "estoque90"
    t.float   "estoquefinal"
    t.date    "dataentrada"
    t.date    "dataultimavenda"
  end

  create_table "r_grandestotaisfisico", primary_key: "idgrandestotaisfisico", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "idestabelecimento"
    t.float   "kardexdodia"
    t.float   "kardexdiaanterior"
    t.float   "estoquedodia"
    t.float   "romaneiodeentradareal"
    t.float   "romaneiodeentradakardex"
    t.float   "ajustedeentradareal"
    t.float   "ajustedeentradakardex"
    t.float   "movimentacaodeentradareal"
    t.float   "movimentacaodeentradakardex"
    t.float   "trocaentradareal"
    t.float   "trocaentradakardex"
    t.float   "vendascanceladasentradareal"
    t.float   "vendascanceladasentradakardex"
    t.float   "recebimentodemercadoriaentradareal"
    t.float   "recebimentodemercadoriaentradakardex"
    t.float   "conversaodeagregadoemagranelentradareal"
    t.float   "conversaodeagregadoemagranelentradakardex"
    t.float   "criacaoagregadodeagranelentradareal"
    t.float   "criacaoagregadodeagranelentradakardex"
    t.float   "cancelamentoromanieosaidareal"
    t.float   "cancelamentoromanieosaidakardex"
    t.float   "vendassaidareal"
    t.float   "vendassaidakardex"
    t.float   "movimentacaosaidareal"
    t.float   "movimentacaosaidakardex"
    t.float   "ajustesaidareal"
    t.float   "ajustesaidakardex"
    t.float   "devolucaomercadoriasaidareal"
    t.float   "devolucaomercadoriasaidakardex"
    t.float   "cancelamentorecebimentomercadoriasaidareal"
    t.float   "cancelamentorecebimentomercadoriasaidakardex"
    t.float   "cancelamentotrocasaidareal"
    t.float   "cancelamentotrocasaidakardex"
    t.float   "conversaodeagregadoemagranelsaidareal"
    t.float   "conversaodeagregadoemagranelsaidakardex"
    t.float   "criacaoagregadodeagranelsaidareal"
    t.float   "criacaoagregadodeagranelsaidakardex"
    t.float   "saidamostruarioreal"
    t.float   "saidamostruariokardex"
    t.float   "entradamostruarioreal"
    t.float   "entradamostruariokardex"
  end

  create_table "r_metadiaria", id: false, force: :cascade do |t|
    t.integer "loja"
    t.string  "data"
    t.float   "metadodia"
    t.string  "vendedor"
    t.float   "metaminima"
    t.float   "metaalvo"
    t.float   "vendas"
    t.float   "pctvendas"
    t.float   "pctatingido"
    t.float   "alinhar"
    t.float   "diferenca"
  end

  create_table "r_previsaofinanceirodiario", id: false, force: :cascade do |t|
    t.integer "loja"
    t.date    "data"
    t.float   "cheque"
    t.float   "carne"
    t.float   "duprec"
    t.float   "cartao"
    t.float   "vendafutura"
    t.float   "despesa"
    t.float   "duppagar"
    t.float   "pedido"
  end

  create_table "r_prontuariovendedor", id: false, force: :cascade do |t|
    t.integer "idcliente"
    t.date    "dataultimacompra"
    t.decimal "valorsemana1",     precision: 12, scale: 2
    t.decimal "valorsemana2",     precision: 12, scale: 2
    t.decimal "valorsemana3",     precision: 12, scale: 2
    t.decimal "valorsemana4",     precision: 12, scale: 2
    t.decimal "valorsemana5",     precision: 12, scale: 2
    t.decimal "valoranoanterior", precision: 12, scale: 2
  end

  create_table "r_prontuariovendedordadoscomplementares", id: false, force: :cascade do |t|
    t.decimal "percentualvendedor",           precision: 5,  scale: 2
    t.integer "quantidadediasuteismes"
    t.integer "quantidadediasuteisrestantes"
    t.decimal "metaminima",                   precision: 12, scale: 2
    t.decimal "metaalvo",                     precision: 12, scale: 2
    t.decimal "totalvendido",                 precision: 12, scale: 2
  end

  create_table "r_relatoriogiroproduto", id: false, force: :cascade do |t|
    t.integer "idproduto"
    t.integer "idreferenciaproduto"
    t.date    "dataultimorecebimento"
    t.decimal "quantidadeultimorecebimento", precision: 12, scale: 2
    t.float   "quantidadevenda"
    t.float   "precomediovenda"
    t.decimal "quantidadepedidocompra",      precision: 12, scale: 2
    t.decimal "quantidadepedidovenda",       precision: 12, scale: 2
  end

  create_table "r_relatorioresultado", primary_key: "idrelatorioresultado", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.date    "data"
    t.decimal "valorvendas",              precision: 11, scale: 2
    t.decimal "valorcustovendas",         precision: 11, scale: 2
    t.decimal "valordespesas",            precision: 11, scale: 2
    t.decimal "valorvendabruta",          precision: 11, scale: 2
    t.decimal "valortroca",               precision: 11, scale: 2
    t.decimal "custocontabillimpovendas", precision: 11, scale: 2
    t.decimal "custocompralimpovendas",   precision: 11, scale: 2
    t.index ["data"], name: "idx_relatorioresultado_data", using: :btree
    t.index ["idestabelecimento"], name: "idx_relatorioresultado_idestabelecimento", using: :btree
  end

  create_table "r_relatorioresultado_condicaopagamento", id: false, force: :cascade do |t|
    t.integer "idrelatorioresultado"
    t.integer "idcondicaopagamento"
    t.decimal "valor",                precision: 20, scale: 2
    t.index ["idrelatorioresultado"], name: "idx_relatorioresultado_condicaopagamento_idrelatorioresultado", using: :btree
  end

  create_table "r_relatorioresultado_despesas", id: false, force: :cascade do |t|
    t.integer "idrelatorioresultado"
    t.integer "idgrupodespesa"
    t.integer "idsubgrupodespesa"
    t.decimal "valordespesamanual",   precision: 20, scale: 2
    t.decimal "valordespesacentral",  precision: 20, scale: 2
    t.index ["idgrupodespesa"], name: "idx_relatorioresultado_despesas_idgrupodespesa", using: :btree
    t.index ["idrelatorioresultado"], name: "idx_relatorioresultado_despesas_idrelatorioresultado", using: :btree
    t.index ["idsubgrupodespesa"], name: "idx_relatorioresultado_despesas_idsubgrupodespesa", using: :btree
  end

  create_table "r_relatorioresultado_formapagamento", id: false, force: :cascade do |t|
    t.integer "idrelatorioresultado"
    t.integer "idformapagamento"
    t.integer "idoperadoracartao"
    t.decimal "valor",                precision: 20, scale: 2
    t.index ["idrelatorioresultado"], name: "idx_relatorioresultado_formapagamento_idrelatorioresultado", using: :btree
  end

  create_table "r_totalizadorbalanco", id: false, force: :cascade do |t|
    t.integer "idbalanco"
    t.integer "idproduto"
    t.integer "idprodutoagregado"
    t.decimal "quantidadeestoque", precision: 10, scale: 2
    t.decimal "quantidadebalanco", precision: 10, scale: 2
  end

  create_table "r_totalizadorbalancoautonomo", id: false, force: :cascade do |t|
    t.integer "idbalancoautonomo"
    t.integer "idproduto"
    t.decimal "quantidadeestoque", precision: 10, scale: 2
    t.decimal "quantidadebalanco", precision: 10, scale: 2
  end

  create_table "r_vendasporcliente", id: false, force: :cascade do |t|
    t.integer "idvendasporcliente"
    t.integer "idtempo"
    t.integer "idfuncionario"
    t.integer "idcliente"
    t.decimal "valorvendabruto",    precision: 10, scale: 2
    t.decimal "valortroca",         precision: 10, scale: 2
    t.decimal "valorvendaliquida",  precision: 10, scale: 2
    t.date    "dataultimacompra"
  end

  create_table "t_adiantamento", primary_key: "idadiantamento", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.date    "datacadastro"
    t.date    "datavencimento"
    t.string  "tipo",              limit: 255
    t.float   "valor",                         null: false
    t.integer "idusuariocadastro"
    t.integer "iddespesa"
    t.integer "idfuncionario"
  end

  create_table "t_adiantamentodecimoterceiro", primary_key: "idadiantamentodecimoterceiro", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.integer "anoreferente",                  null: false
    t.date    "datacadastro"
    t.date    "datavencimento"
    t.string  "tipo",              limit: 255
    t.float   "valor",                         null: false
    t.integer "idusuariocadastro"
    t.integer "iddespesa"
    t.integer "idfuncionario"
  end

  create_table "t_adiantamentodecimoterceirohistorico", primary_key: "idadiantamentodecimoterceirohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                       limit: 255
    t.integer  "idusuario"
    t.integer  "idadiantamentodecimoterceiro"
  end

  create_table "t_adiantamentohistorico", primary_key: "idadiantamentohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",         limit: 255
    t.integer  "idusuario"
    t.integer  "idadiantamento"
  end

  create_table "t_adicionaldecimoterceirofuncionariohistorico", primary_key: "idadicionaldecimoterceirofuncionariohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                 limit: 255
    t.integer  "idadicionalfuncionario"
    t.integer  "idusuario"
  end

  create_table "t_adicionaldesconto", primary_key: "idadicionaldesconto", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,   null: false
    t.string  "descricao", limit: 255
    t.integer "tipo",                  null: false
  end

  create_table "t_adicionaldescontodecimoterceiro", primary_key: "idadicionaldescontodecimoterceiro", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,   null: false
    t.string  "descricao", limit: 255
    t.integer "tipo",                  null: false
  end

  create_table "t_adicionalfuncionario", primary_key: "idadicionalfuncionario", id: :integer, force: :cascade do |t|
    t.string  "status",              limit: 255
    t.integer "ano"
    t.date    "datacadastro"
    t.integer "mes"
    t.integer "parcela"
    t.integer "quantidadeparcelas"
    t.string  "tipo",                limit: 255
    t.float   "valor",                           null: false
    t.integer "idadicionaldesconto"
    t.integer "idfuncionario"
    t.integer "idusuariocadastro"
  end

  create_table "t_adicionalfuncionariodecimoterceiro", primary_key: "idadicionalfuncionariodecimoterceiro", id: :integer, force: :cascade do |t|
    t.string  "status",                            limit: 255
    t.date    "datacadastro"
    t.float   "valor",                                         null: false
    t.integer "idfuncionario"
    t.integer "idadicionaldescontodecimoterceiro"
    t.integer "idusuariocadastro"
  end

  create_table "t_adicionalfuncionariohistorico", primary_key: "idadicionalfuncionariohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                 limit: 255
    t.integer  "idadicionalfuncionario"
    t.integer  "idusuario"
  end

  create_table "t_afastamento", primary_key: "idafastamento", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 255
    t.datetime "dataaprovacaodiretoria"
    t.datetime "dataaprovacaorh"
    t.date     "datacadastro"
    t.date     "datarecisao"
    t.date     "fimafastamento"
    t.date     "inicioafastamento"
    t.string   "observacao",                   limit: 255
    t.string   "tipoafastamento",              limit: 255
    t.integer  "idfuncionario"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "iddadosafastamentodefinitivo"
    t.integer  "idusuarioaprovacaodiretoria"
    t.integer  "idusuarioaprovacaorh"
  end

  create_table "t_afastamentohistorico", primary_key: "idafastamentohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",        limit: 255
    t.integer  "idusuario"
    t.integer  "idafastamento"
  end

  create_table "t_agendamentoentregamontagem", primary_key: "idagendamentoentregamontagem", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "cidade",                limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.text     "endereco"
    t.string   "estado",                limit: 255
    t.text     "observacao"
    t.integer  "tipo",                              null: false
    t.integer  "idusuariocancelamento"
    t.integer  "idorcamento"
    t.integer  "idusuarioconfirmacao"
  end

  create_table "t_agendarelatorioresultado", primary_key: "idagendarelatorioresultado", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.integer  "ano",                               null: false
    t.integer  "mes",                               null: false
    t.datetime "momentoalteracao"
    t.datetime "momentocadastro"
    t.datetime "momentocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioalteracao"
  end

  create_table "t_ajusteconta", primary_key: "idajusteconta", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.string   "comprovante",           limit: 255
    t.datetime "data"
    t.datetime "dataajuste"
    t.string   "descricao",             limit: 255
    t.string   "observacao",            limit: 255
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idusuario"
    t.integer  "idconta"
    t.integer  "idtipoajusteconta"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_ajusteestoque", primary_key: "idajusteestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "data"
    t.datetime "dataautorizacao"
    t.datetime "datacancelamento"
    t.string   "observacao",            limit: 255
    t.integer  "idusuario"
    t.integer  "idtipoajuste"
    t.integer  "idsetor"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuarioautorizacao"
  end

  create_table "t_ajusteestoquefiscal", primary_key: "idajusteestoquefiscal", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "data"
    t.datetime "dataautorizacao"
    t.datetime "datacancelamento"
    t.datetime "datalancamentofiscal"
    t.string   "observacao",            limit: 255
    t.integer  "tipomovimentofiscal"
    t.integer  "idtipoajustefiscal"
    t.integer  "idusuario"
    t.integer  "idusuarioautorizacao"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_alinea", primary_key: "idalinea", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 1,   null: false
    t.string  "descricao",        limit: 255
    t.integer "numero",                       null: false
    t.string  "podereapresentar", limit: 1,   null: false
  end

  create_table "t_aliquotaicms", primary_key: "idaliquotaicms", id: :integer, force: :cascade do |t|
    t.decimal "aliquota",              precision: 19, scale: 2
    t.string  "ufdestino", limit: 255
    t.string  "uforigem",  limit: 255
  end

  create_table "t_aplicacaomaquina", primary_key: "idaplicacaomaquina", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "descricao",             limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_arquivocte", primary_key: "idarquivocte", id: :integer, force: :cascade do |t|
    t.text    "arquivo"
    t.integer "idcte"
  end

  create_table "t_arquivodpecnfe", primary_key: "idarquivodpecnfe", id: :integer, force: :cascade do |t|
    t.text    "arquivo"
    t.integer "idnotafiscaleletronica"
  end

  create_table "t_arquivonfe", primary_key: "idarquivonfe", id: :integer, force: :cascade do |t|
    t.text    "arquivo"
    t.integer "idnotafiscalentrada"
    t.integer "idnotafiscaleletronica"
    t.index ["idnotafiscaleletronica"], name: "idx_arquivonfe_idnotafiscaleletronica", using: :btree
  end

  create_table "t_arquivonfecontingencia", primary_key: "idarquivonfecontingencia", id: :integer, force: :cascade do |t|
    t.text    "arquivo"
    t.integer "idnotafiscalentrada"
    t.integer "idnotafiscaleletronica"
  end

  create_table "t_arquivosolicitacaonfe", primary_key: "idarquivosolicitacaonfe", id: :integer, force: :cascade do |t|
    t.text    "arquivo"
    t.integer "idnotafiscaleletronica"
  end

  create_table "t_arraylotecheque", primary_key: "idarraylotecheque", id: :integer, force: :cascade do |t|
    t.integer "status"
    t.integer "idcheque"
    t.integer "idlotecheque"
  end

  create_table "t_arrayrenegociacaoduplicata", primary_key: "idarrayrenegociacaoduplicata", id: :integer, force: :cascade do |t|
    t.string  "tipo",                    limit: 255
    t.integer "idduplicatapagar"
    t.integer "idrenegociacaoduplicata"
  end

  create_table "t_assistenciaproduto", primary_key: "idassistenciaproduto", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1, null: false
    t.datetime "dataenvio"
    t.datetime "dataprevisaoretorno"
    t.text     "observacao"
    t.integer  "idfornecedor"
    t.integer  "idestabelecimento"
  end

  create_table "t_assistenciaprodutoitem", primary_key: "idassistenciaprodutoitem", id: :integer, force: :cascade do |t|
    t.float   "quantidade",           null: false
    t.bigint  "idproduto"
    t.integer "idassistenciaproduto"
  end

  create_table "t_associacaoxmlproduto", primary_key: "idassociacaoxmlproduto", id: :integer, force: :cascade do |t|
    t.integer "idnotafiscalentrada"
    t.bigint  "idproduto"
  end

  create_table "t_atividade", primary_key: "idatividade", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_atividadenivel", primary_key: "idatividadenivel", id: :integer, force: :cascade do |t|
    t.string  "descricao",     limit: 255
    t.decimal "multiplicador",             precision: 19, scale: 7
    t.integer "status"
    t.integer "idatividade"
  end

  create_table "t_atividadenivelhistorico", primary_key: "idatividadenivelhistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.integer  "status"
    t.integer  "idusuario"
    t.integer  "idatividadenivel"
  end

  create_table "t_atributogrupo", primary_key: "idatributogrupo", id: :integer, force: :cascade do |t|
    t.string  "valor",            limit: 255
    t.string  "valorexibido",     limit: 255
    t.integer "idpermissaogrupo"
    t.integer "idgrupo"
    t.index ["idpermissaogrupo"], name: "idx_atributogrupo_idpermissaogrupo", using: :btree
  end

  create_table "t_auditoriacaixa", primary_key: "idauditoriacaixa", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.date    "data"
    t.string  "obspasso1",         limit: 255
    t.string  "obspasso2",         limit: 255
    t.string  "obspasso3",         limit: 255
    t.string  "statuspasso1",      limit: 255
    t.string  "statuspasso2",      limit: 255
    t.string  "statuspasso3",      limit: 255
    t.integer "idestabelecimento"
  end

  create_table "t_autorizada", primary_key: "idautorizada", id: :integer, force: :cascade do |t|
    t.string  "status",     limit: 255
    t.string  "apelido",    limit: 255
    t.string  "cpfcnpj",    limit: 255
    t.string  "email",      limit: 255
    t.string  "nome",       limit: 255
    t.text    "observacao"
    t.string  "rgie",       limit: 255
    t.string  "tipo",       limit: 255
    t.integer "idendereco"
  end

  create_table "t_baixaservico", primary_key: "idbaixaservico", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1, null: false
    t.bigint  "idproduto"
    t.integer "idusuario"
  end

  create_table "t_balanco", primary_key: "idbalanco", id: :integer, force: :cascade do |t|
    t.string   "status",                      limit: 255
    t.datetime "dataautorizacao"
    t.datetime "datafinal"
    t.datetime "datainicio"
    t.string   "observacao",                  limit: 255
    t.string   "zerouprodutosnaoencontrados", limit: 255
    t.integer  "idsetor"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuarioautorizacao"
    t.integer  "idestabelecimento"
  end

  create_table "t_balancoautonomo", primary_key: "idbalancoautonomo", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 255
    t.datetime "data"
    t.datetime "dataautorizacao"
    t.datetime "datafinalizacao"
    t.string   "materiaprima",           limit: 255
    t.string   "materialconsumointerno", limit: 255
    t.string   "observacao",             limit: 255
    t.string   "produtoproducaopropria", limit: 255
    t.string   "produtorevenda",         limit: 255
    t.string   "produtosemiacabado",     limit: 255
    t.string   "servico",                limit: 255
    t.integer  "idsetor"
    t.integer  "idusuariofinalizacao"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioautorizacao"
    t.integer  "idusuario"
  end

  create_table "t_balancoautonomoestoque", primary_key: "idbalancoautonomoestoque", id: :bigint, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.string  "codigobarra",       limit: 255
    t.string  "nomeproduto",       limit: 255
    t.decimal "precovenda",                    precision: 10, scale: 2, default: "0.0", null: false
    t.float   "quantidade"
    t.string  "statusagregado",    limit: 255
    t.decimal "valorcusto",                    precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idbalancoautonomo"
    t.bigint  "idproduto"
    t.integer "idprodutoagregado"
    t.index ["idbalancoautonomo"], name: "idx_balancoautonomoestoque_idbalancoautonomo", using: :btree
    t.index ["idproduto"], name: "idx_balancoautonomoestoque_idproduto", using: :btree
    t.index ["idprodutoagregado"], name: "idx_balancoautonomoestoque_idprodutoagregado", using: :btree
  end

  create_table "t_balancoautonomoitem", primary_key: "idbalancoautonomoitem", id: :integer, force: :cascade do |t|
    t.integer  "codbalancoautonomoitemmaquina",             null: false
    t.string   "codigobarrainserido",           limit: 255
    t.datetime "datacadastro"
    t.string   "macorigem",                     limit: 255
    t.float    "quantidadebalanco"
    t.bigint   "idproduto"
    t.integer  "idusuario"
    t.integer  "idbalancoautonomo"
    t.integer  "idprodutoagregado"
    t.index ["idbalancoautonomo"], name: "idx_balancoautonomoitem_idbalancoautonomo", using: :btree
    t.index ["idproduto"], name: "idx_balancoautonomoitem_idproduto", using: :btree
    t.index ["idprodutoagregado"], name: "idx_balancoautonomoitem_idprodutoagregado", using: :btree
  end

  create_table "t_balancoautonomoitemnaoencontrado", primary_key: "idbalancoautonomoitemnaoencontrado", id: :integer, force: :cascade do |t|
    t.datetime "datacadastro"
    t.float    "precovenda"
    t.float    "quantidadeestoque"
    t.string   "status",            limit: 1
    t.float    "valorcusto"
    t.integer  "idbalancoautonomo"
    t.integer  "idusuario"
    t.bigint   "idproduto"
    t.index ["idbalancoautonomo"], name: "idx_balancoautonomoitemnaoencontrado_idbalancoautonomo", using: :btree
    t.index ["idproduto"], name: "idx_balancoautonomoitemnaoencontrado_idproduto", using: :btree
  end

  create_table "t_balancoautonomomarca", primary_key: "idbalancoautonomomarca", id: :integer, force: :cascade do |t|
    t.integer "idmarca"
    t.integer "idbalancoautonomo"
  end

  create_table "t_balancoitem", primary_key: "idbalancoitem", id: :integer, force: :cascade do |t|
    t.datetime "datacadastro"
    t.float    "quantidadebalanco"
    t.float    "quantidadeestoque"
    t.integer  "idprodutoagregado"
    t.bigint   "idproduto"
    t.integer  "idbalanco"
    t.integer  "idusuario"
  end

  create_table "t_balancoitemnaoencontrado", primary_key: "idbalancoitemnaoencontrado", id: :integer, force: :cascade do |t|
    t.datetime "datacadastro"
    t.float    "precovenda"
    t.float    "quantidadebalanco"
    t.float    "quantidadeestoque"
    t.string   "status",            limit: 1
    t.float    "valorcusto"
    t.integer  "idusuario"
    t.integer  "idprodutoagregado"
    t.bigint   "idproduto"
    t.integer  "idbalanco"
  end

  create_table "t_bancoerp", primary_key: "idbancoerp", id: :integer, force: :cascade do |t|
    t.string  "status",                  limit: 1,   null: false
    t.string  "descricao",               limit: 255
    t.string  "codigobanco",             limit: 255
    t.integer "indiceinicionumeroconta",             null: false
    t.integer "qtddigitosnumeroconta",               null: false
  end

  create_table "t_bloqueiocliente", primary_key: "idbloqueiocliente", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "databloqueio"
    t.datetime "datadesbloqueio"
    t.string   "observacao",            limit: 255
    t.integer  "idusuariobloqueio"
    t.integer  "idcliente"
    t.integer  "idtipobloqueiocliente"
    t.integer  "idusuariodesbloqueio"
  end

  create_table "t_caixa", primary_key: "idcaixa", id: :bigint, force: :cascade do |t|
    t.date     "data"
    t.float    "diferenca"
    t.datetime "horarioabertura"
    t.datetime "horariofechamento"
    t.float    "quebradecaixa"
    t.string   "status",              limit: 1, null: false
    t.integer  "idestabelecimento"
    t.integer  "idpontovenda"
    t.integer  "idfundocaixa"
    t.integer  "idusuario"
    t.integer  "idusuariofechamento"
    t.index ["idestabelecimento"], name: "idx_caixa_idestabelecimento", using: :btree
    t.index ["idpontovenda"], name: "idx_caixa_idpontovenda", using: :btree
    t.index ["status"], name: "idx_caixa_status", using: :btree
  end

  create_table "t_cancelamentonfe", primary_key: "idcancelamentonfe", id: :integer, force: :cascade do |t|
    t.datetime "datacancelamento"
    t.string   "id",                     limit: 255
    t.string   "numeroprotocolo",        limit: 255
    t.integer  "idnotafiscaleletronica"
    t.integer  "idusuario"
  end

  create_table "t_cargoinfluenciador", primary_key: "idcargoinfluenciador", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_carne", primary_key: "idcarne", id: :integer, force: :cascade do |t|
    t.string   "status",                      limit: 1,   null: false
    t.string   "codigobarra",                 limit: 255
    t.string   "conferencia",                 limit: 1,   null: false
    t.datetime "dataemissao"
    t.datetime "datapagamento"
    t.datetime "datapagamentoprincipal"
    t.datetime "datatroca"
    t.datetime "datavencimento"
    t.datetime "datavencimentoprorrogada"
    t.float    "descontojuros",                           null: false
    t.float    "descontojurosantespagamento"
    t.float    "descontovalortitulo",                     null: false
    t.float    "jurosapagar",                             null: false
    t.float    "jurosantespagamento"
    t.float    "jurospagamento",                          null: false
    t.float    "multaapagar",                             null: false
    t.float    "multapagamento",                          null: false
    t.string   "numeroboleto",                limit: 255
    t.integer  "numeroparcela"
    t.text     "observacao"
    t.integer  "quantidadedeparcelas"
    t.float    "totalapagar",                             null: false
    t.integer  "totaldiasatraso",                         null: false
    t.float    "valor",                                   null: false
    t.float    "valorpagamento",                          null: false
    t.integer  "idorcamentocomplementar"
    t.integer  "idportador"
    t.integer  "idvendedor"
    t.integer  "idorcamento"
    t.integer  "idusuariocancelamento"
    t.integer  "idcliente"
    t.integer  "idportadorcobranca"
    t.integer  "idusuario"
    t.integer  "idestabelecimento"
    t.integer  "idconta"
    t.index ["codigobarra"], name: "idx_carne_codigobarra", using: :btree
    t.index ["idcliente"], name: "idx_carne_idcliente", using: :btree
    t.index ["idestabelecimento"], name: "idx_carne_idestabelecimento", using: :btree
    t.index ["idorcamento"], name: "idx_carne_idorcamento", using: :btree
    t.index ["status"], name: "idx_carne_status", using: :btree
  end

  create_table "t_carnepagamentotitulo", primary_key: "idcarnepagamentotitulo", id: :integer, force: :cascade do |t|
    t.integer "idpagamentotitulo"
    t.integer "idcarne"
  end

  create_table "t_carnepago", primary_key: "idcarnepago", id: :integer, force: :cascade do |t|
    t.integer "idcarne"
    t.integer "idpagamentocarne"
  end

  create_table "t_cartadecorrecaoeletronica", primary_key: "idcartadecorrecaoeletronica", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "data"
    t.datetime "dataprotocolo"
    t.text     "descricao"
    t.string   "numeroprotocolo",        limit: 255
    t.integer  "numerosequencial",                   null: false
    t.integer  "idusuario"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idestabelecimento"
  end

  create_table "t_cartaocredito", primary_key: "idcartaocredito", id: :integer, force: :cascade do |t|
    t.string  "numero",            limit: 255
    t.string  "validade",          limit: 255
    t.integer "idoperadoracartao"
  end

  create_table "t_cartorio", primary_key: "idcartorio", id: :integer, force: :cascade do |t|
    t.string  "status",     limit: 255
    t.string  "apelido",    limit: 255
    t.string  "cpfcnpj",    limit: 255
    t.string  "email",      limit: 255
    t.string  "nome",       limit: 255
    t.text    "observacao"
    t.string  "rgie",       limit: 255
    t.string  "tipo",       limit: 255
    t.integer "idendereco"
  end

  create_table "t_chamado", primary_key: "idchamado", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,                                            null: false
    t.datetime "data"
    t.datetime "dataencerramentoatendimento"
    t.datetime "datainicioatendimento"
    t.string   "documentosolicitante",         limit: 255
    t.decimal  "multiplicadorregiao",                      precision: 19, scale: 2
    t.text     "observacaochamado"
    t.text     "observacaodiagnostico"
    t.text     "pendencias"
    t.boolean  "pontuacaobloqueada",                                                default: false
    t.decimal  "pontuacaomodelo",                          precision: 19, scale: 2
    t.string   "protocolo",                    limit: 255
    t.integer  "situacaochamado"
    t.string   "solicitante",                  limit: 255
    t.integer  "tipoabertura"
    t.integer  "tipoimpressao"
    t.integer  "idtecnicoresponsavel"
    t.integer  "iddiagnostico"
    t.integer  "idchamadooriginal"
    t.integer  "idcontratoplanoinstalacao"
    t.integer  "idchamadodefeito"
    t.integer  "idchamadotipo"
    t.integer  "idusuario"
    t.integer  "idestabelecimentoatendimento"
  end

  create_table "t_chamadocontadorservico", primary_key: "idchamadocontadorservico", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 1,                          null: false
    t.decimal "contador",                   precision: 19, scale: 7
    t.decimal "contadoranterior",           precision: 19, scale: 7
    t.bigint  "idproduto"
    t.integer "idchamado"
  end

  create_table "t_chamadodefeito", primary_key: "idchamadodefeito", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_chamadoitemconsumo", primary_key: "idchamadoitemconsumo", id: :integer, force: :cascade do |t|
    t.decimal "consumo",            precision: 19, scale: 7
    t.text    "observacao"
    t.decimal "precocustounitario", precision: 19, scale: 7
    t.decimal "precovendaunitario", precision: 19, scale: 7
    t.decimal "quantidade",         precision: 19, scale: 7
    t.integer "idchamado"
    t.bigint  "idproduto"
  end

  create_table "t_chamadoitemconsumoservico", primary_key: "idchamadoitemconsumoservico", id: :integer, force: :cascade do |t|
    t.bigint  "idservico"
    t.integer "idchamadoitemconsumo"
  end

  create_table "t_chamadoprotocolo", id: false, force: :cascade do |t|
    t.integer "idchamadoprotocolo",  null: false
    t.integer "codigocliente",       null: false
    t.integer "codigoidentificador", null: false
    t.date    "data"
    t.integer "contador",            null: false
  end

  create_table "t_chamadoservico", primary_key: "idchamadoservico", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_chamadotipo", primary_key: "idchamadotipo", id: :integer, force: :cascade do |t|
    t.string  "status",                    limit: 1,   null: false
    t.string  "descricao",                 limit: 255
    t.boolean "aparecernohistorico",                   null: false
    t.integer "perfil",                                null: false
    t.string  "sigla",                     limit: 255
    t.boolean "planoinstalacaoentrgue"
    t.boolean "planoinstalacaoinstalado"
    t.string  "planoinstalacaonovostatus", limit: 255
    t.boolean "planoinstalacaoentregue"
    t.string  "planoinstalacaostatus",     limit: 255
  end

  create_table "t_chamadotipogrupoproduto", primary_key: "idchamadotipogrupoproduto", id: :integer, force: :cascade do |t|
    t.integer "idchamadotipo"
    t.integer "idgrupoproduto"
  end

  create_table "t_cheque", primary_key: "idcheque", id: :integer, force: :cascade do |t|
    t.string   "status",                      limit: 255
    t.boolean  "chequedeterceiro",                                                                 null: false
    t.string   "codigodebarra",               limit: 255
    t.string   "conferencia",                 limit: 1,                                            null: false
    t.datetime "datadevolucao"
    t.date     "dataorigemdivida"
    t.date     "datapagamento"
    t.date     "datapagamentoprincipal"
    t.decimal  "descontojuros",                           precision: 10, scale: 2, default: "0.0", null: false
    t.float    "descontojurosantespagamento"
    t.float    "descontovalortitulo"
    t.datetime "emissao"
    t.string   "estanolote",                  limit: 255
    t.string   "isorigemexterna",             limit: 255
    t.float    "jurosapagar"
    t.float    "jurosantespagamento"
    t.float    "jurospagamento"
    t.float    "multaapagar"
    t.float    "multapagamento"
    t.string   "numeroagencia",               limit: 255
    t.string   "numerobanco",                 limit: 255
    t.string   "numerocheque",                limit: 255
    t.string   "numeroconta",                 limit: 255
    t.integer  "numeroparcela"
    t.text     "observacao"
    t.string   "pagavelcomcheque",            limit: 255
    t.string   "serie",                       limit: 255
    t.string   "tipo",                        limit: 255
    t.string   "tipocliente",                 limit: 255
    t.float    "totalapagar"
    t.integer  "totaldiasatraso"
    t.string   "usadoparapagarcarne",         limit: 255
    t.float    "valor"
    t.float    "valorpagamento"
    t.datetime "vencimento"
    t.datetime "vencimentoprorrogado"
    t.integer  "idtransportadora"
    t.integer  "idportador"
    t.integer  "idorcamento"
    t.integer  "idrecebimentonaofiscal"
    t.integer  "idcliente"
    t.integer  "idusuariocancelamento"
    t.integer  "idfornecedor"
    t.integer  "idusuariopagamento"
    t.integer  "idportadorcobranca"
    t.integer  "idvendedor"
    t.integer  "idconta"
    t.integer  "idorigemexterna"
    t.integer  "idestabelecimento"
    t.integer  "idalinea"
    t.index ["chequedeterceiro"], name: "idx_cheque_chequedeterceiro", using: :btree
    t.index ["idcliente"], name: "idx_cheque_idcliente", using: :btree
    t.index ["idestabelecimento"], name: "idx_cheque_idestabelecimento", using: :btree
    t.index ["idorcamento"], name: "idx_cheque_idorcamento", using: :btree
    t.index ["numeroagencia"], name: "idx_cheque_numeroagencia", using: :btree
    t.index ["numerobanco"], name: "idx_cheque_numerobanco", using: :btree
    t.index ["numerocheque"], name: "idx_cheque_numerocheque", using: :btree
    t.index ["numeroconta"], name: "idx_cheque_numeroconta", using: :btree
    t.index ["status"], name: "idx_cheque_status", using: :btree
    t.index ["vencimentoprorrogado"], name: "idx_cheque_vencimentoprorrogado", using: :btree
  end

  create_table "t_chequepagamentocarne", primary_key: "idchequepagamentocarne", id: :integer, force: :cascade do |t|
    t.integer "idpagamentocarne"
    t.integer "idcheque"
  end

  create_table "t_chequepagamentotitulo", primary_key: "idchequepagamentotitulo", id: :integer, force: :cascade do |t|
    t.integer "idpagamentotitulo"
    t.integer "idcheque"
  end

  create_table "t_cliente", primary_key: "idcliente", id: :integer, force: :cascade do |t|
    t.string  "status",             limit: 255
    t.string  "apelido",            limit: 255
    t.string  "cpfcnpj",            limit: 255
    t.string  "email",              limit: 255
    t.string  "nome",               limit: 255
    t.text    "observacao"
    t.string  "rgie",               limit: 255
    t.string  "tipo",               limit: 255
    t.string  "classificacao",      limit: 255
    t.string  "contribuinteicms",   limit: 255
    t.float   "creditocliente"
    t.integer "crt",                            null: false
    t.date    "datanascimento"
    t.string  "enderecoextenso",    limit: 255, null: false
    t.float   "limitedecredito",                null: false
    t.string  "operacao",           limit: 255
    t.boolean "participacrm",                   null: false
    t.string  "perfilcliente",      limit: 255
    t.text    "pontodereferencia"
    t.integer "tipopagamento",                  null: false
    t.integer "idendereco"
    t.integer "idestabelecimento"
    t.integer "idclienteassociado"
    t.integer "idfuncionario"
    t.integer "idsegmentocliente"
    t.index ["cpfcnpj"], name: "idx_cliente_cpfcnpj", using: :btree
    t.index ["idendereco"], name: "idx_cliente_idendereco", using: :btree
    t.index ["nome"], name: "idx_cliente_nome", using: :btree
    t.index ["status"], name: "idx_cliente_status", using: :btree
  end

  create_table "t_clienteperfildeatuacaocliente", id: false, force: :cascade do |t|
    t.integer "idcliente",                null: false
    t.integer "idperfildeatuacaocliente", null: false
  end

  create_table "t_clienteusuario", primary_key: "idclienteusuario", id: :integer, force: :cascade do |t|
    t.string  "status",              limit: 255
    t.integer "idcondicaopagamento"
    t.integer "idcliente"
    t.integer "idusuario"
  end

  create_table "t_comissaofuncionario", primary_key: "idcomissaofuncionario", id: :integer, force: :cascade do |t|
    t.string   "status",                  limit: 255
    t.float    "comissaoabaixometa",                  null: false
    t.float    "comissaoacimameta",                   null: false
    t.float    "comissaoentremeta",                   null: false
    t.float    "comissaomaximavenda",                 null: false
    t.float    "comissaominimavenda",                 null: false
    t.float    "comissaoorcamentopadrao"
    t.float    "comissaovendaminima",                 null: false
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.float    "fatordivisor",                        null: false
    t.float    "fatormultiplicador",                  null: false
    t.float    "gratificacao",                        null: false
    t.float    "salariocomercio",                     null: false
    t.integer  "tipocomissao",                        null: false
    t.float    "valormaximofaixa",                    null: false
    t.float    "valorminimofaixa",                    null: false
    t.float    "valorvendaminima",                    null: false
    t.integer  "idfuncionario"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_comissaofuncionariocondicaopagamento", primary_key: "idcomissaofuncionariocondicaopagamento", id: :integer, force: :cascade do |t|
    t.float   "percentualcomissao",    null: false
    t.integer "idcondicaopagamento"
    t.integer "idcomissaofuncionario"
  end

  create_table "t_comissaofuncionarioformapagamento", primary_key: "idcomissaofuncionarioformapagamento", id: :integer, force: :cascade do |t|
    t.float   "descontopercentualcomissao", null: false
    t.float   "percentualcomissao",         null: false
    t.integer "tipoformapagamento",         null: false
    t.integer "idcomissaofuncionario"
  end

  create_table "t_comissaofuncionarioporvalorvendido", primary_key: "idcomissaofuncionarioporvalorvendido", id: :integer, force: :cascade do |t|
    t.decimal "percentualcomissao",    precision: 10, scale: 2, default: "0.0"
    t.decimal "valorfixo",             precision: 10, scale: 2, default: "0.0"
    t.decimal "valormaximo",           precision: 10, scale: 2, default: "0.0"
    t.decimal "valorminimo",           precision: 10, scale: 2, default: "0.0"
    t.integer "idcomissaofuncionario"
  end

  create_table "t_compensacaocartao", primary_key: "idcompensacaocartao", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.date     "data"
    t.datetime "dataalteracao"
    t.date     "dataautorizacao"
    t.datetime "datacancelamento"
    t.string   "tipotransacao",         limit: 255
    t.integer  "idconta"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioalteracao"
    t.integer  "idestabelecimento"
    t.integer  "idoperadoracartao"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuarioautorizacao"
    t.integer  "idredecartao"
  end

  create_table "t_compensacaocartaoitem", primary_key: "idcompensacaocartaoitem", id: :integer, force: :cascade do |t|
    t.integer "idcompensacaocartao"
    t.integer "idlancamentolote"
  end

  create_table "t_compensacaocartaopagamentodespesa", primary_key: "idcompensacaocartaopagamentodespesa", id: :integer, force: :cascade do |t|
    t.integer "idcompensacaocartao"
    t.integer "idpagamentodespesa"
  end

  create_table "t_compensacaocheque", primary_key: "idcompensacaocheque", id: :integer, force: :cascade do |t|
    t.string   "status",          limit: 255
    t.datetime "data"
    t.string   "observacao",      limit: 255
    t.integer  "quantidadeitens",             null: false
    t.string   "tipo",            limit: 255
    t.string   "tipolancamento",  limit: 255
    t.float    "valor",                       null: false
    t.integer  "idusuario"
    t.integer  "idconta"
    t.index ["data"], name: "idx_compensacaocheque_data", using: :btree
    t.index ["status"], name: "idx_compensacaocheque_status", using: :btree
  end

  create_table "t_compensacaochequecontacomplemento", primary_key: "idcompensacaochequecontacomplemento", id: :integer, force: :cascade do |t|
    t.decimal "valor",               precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idcompensacaocheque"
    t.integer "idconta"
  end

  create_table "t_compensacaochequeitem", primary_key: "idcompensacaochequeitem", id: :integer, force: :cascade do |t|
    t.integer "idcheque"
    t.integer "idcompensacaocheque"
    t.index ["idcheque"], name: "idx_compensacaochequeitem_idcheque", using: :btree
    t.index ["idcompensacaocheque"], name: "idx_compensacaochequeitem_idcompensacaocheque", using: :btree
  end

  create_table "t_composicaoespelhomfd", primary_key: "idcomposicaoespelhomfd", id: :integer, force: :cascade do |t|
    t.integer "ano",         null: false
    t.text    "arquivo"
    t.integer "mes",         null: false
    t.integer "parte",       null: false
    t.integer "totalpartes", null: false
    t.integer "idpafecf"
  end

  create_table "t_composicaoespelhomfdavulso", primary_key: "idcomposicaoespelhomfdavulso", id: :integer, force: :cascade do |t|
    t.text     "arquivo"
    t.datetime "datafinal"
    t.datetime "datainicial"
    t.integer  "parte",       null: false
    t.integer  "totalpartes", null: false
    t.integer  "idpafecf"
  end

  create_table "t_composicaoproduto", primary_key: "idcomposicaoproduto", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_composicaoprodutofaseprocessodefabricacao", primary_key: "idcomposicaoprodutofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.decimal "quantidade",                                precision: 10, scale: 2
    t.integer "idprodutofaseprocessodefabricacao"
    t.bigint  "idproduto"
    t.integer "idprodutofaseprocessodefabricacaoanterior"
  end

  create_table "t_compraprodutolistaevento", primary_key: "idcompraprodutolistaevento", id: :integer, force: :cascade do |t|
    t.string  "pessoa",        limit: 255
    t.float   "preco",                                                              null: false
    t.string  "promocao",      limit: 255
    t.decimal "quantidade",                precision: 10, scale: 2, default: "0.0", null: false
    t.bigint  "idproduto"
    t.integer "idlistaevento"
  end

  create_table "t_conciliacaobancaria", primary_key: "idconciliacaobancaria", id: :integer, force: :cascade do |t|
    t.string   "status",        limit: 1,   null: false
    t.string   "descricao",     limit: 255
    t.string   "agencia",       limit: 255
    t.binary   "arquivo"
    t.string   "balancofinal",  limit: 255
    t.string   "contabancaria", limit: 255
    t.datetime "data"
    t.datetime "dataarquivo"
    t.string   "id",            limit: 255
    t.string   "operacao",      limit: 255
    t.float    "valor"
  end

  create_table "t_conciliacaolancamentocontaconciliado", primary_key: "idconciliacaolancamentocontaconciliado", id: :integer, force: :cascade do |t|
    t.integer "idlancamentoconta"
    t.integer "idconciliacaolancamentocontaofx"
  end

  create_table "t_conciliacaolancamentocontaofx", primary_key: "idconciliacaolancamentocontaofx", id: :integer, force: :cascade do |t|
    t.datetime "datacadastro"
    t.integer  "idusuariocadastro"
  end

  create_table "t_conciliacaoofxtransacaoconciliada", primary_key: "idconciliacaoofxtransacaoconciliada", id: :integer, force: :cascade do |t|
    t.integer "idofxtransacao"
    t.integer "idconciliacaolancamentocontaofx"
  end

  create_table "t_condicaodelavagem", primary_key: "idcondicaodelavagem", id: :integer, force: :cascade do |t|
    t.string  "status",       limit: 1,   null: false
    t.string  "descricao",    limit: 255
    t.integer "alvejar",                  null: false
    t.integer "ferro",                    null: false
    t.integer "lavagem",                  null: false
    t.integer "lavagemaseco",             null: false
    t.integer "secagem",                  null: false
  end

  create_table "t_condicaopagamento", primary_key: "idcondicaopagamento", id: :integer, force: :cascade do |t|
    t.string  "status",                    limit: 1,               null: false
    t.string  "descricao",                 limit: 255
    t.float   "acrescimoimediato",                                 null: false
    t.float   "adicionalfinanceiro"
    t.integer "aplicacao",                             default: 0
    t.float   "descontoimediato",                                  null: false
    t.string  "diasparcelas",              limit: 255
    t.integer "numerodiasentreparcelas"
    t.integer "numeroparcelas"
    t.float   "porcentagemmaximadesconto",                         null: false
    t.integer "prazomedio"
    t.string  "tementrada",                limit: 255
    t.integer "tipo",                                              null: false
    t.integer "tipopagamento",                                     null: false
  end

  create_table "t_condicaopagamentoplanovendafutura", primary_key: "idcondicaopagamentoplanovendafutura", id: :integer, force: :cascade do |t|
    t.float   "vendascondicaopagamento", null: false
    t.integer "idplanovendafutura"
    t.integer "idcondicaopagamento"
    t.integer "idestabelecimento"
  end

  create_table "t_conferenciacaixa", primary_key: "idconferenciacaixa", id: :integer, force: :cascade do |t|
    t.string   "status",        limit: 1,   null: false
    t.datetime "dataaprovacao"
    t.string   "observacao",    limit: 255
    t.integer  "tipo",                      null: false
    t.integer  "idusuario"
    t.bigint   "idcaixa"
  end

  create_table "t_configuracaonfe", primary_key: "idconfiguracaonfe", id: :integer, force: :cascade do |t|
    t.string  "certificado",       limit: 255
    t.string  "senha",             limit: 255
    t.integer "idservidornfe"
    t.integer "idestabelecimento"
  end

  create_table "t_consertoproduto", primary_key: "idconsertoproduto", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1, null: false
    t.datetime "dataenvio"
    t.datetime "dataprevisaoretorno"
    t.text     "observacao"
    t.integer  "idestabelecimento"
    t.integer  "idautorizada"
  end

  create_table "t_consertoprodutoitem", primary_key: "idconsertoprodutoitem", id: :integer, force: :cascade do |t|
    t.float   "quantidade",        null: false
    t.bigint  "idproduto"
    t.integer "idconsertoproduto"
  end

  create_table "t_conta", primary_key: "idconta", id: :integer, force: :cascade do |t|
    t.string  "status",                   limit: 1,   null: false
    t.string  "descricao",                limit: 255
    t.string  "agencia",                  limit: 255
    t.string  "ativodaempresa",           limit: 255
    t.string  "contacorrente",            limit: 255
    t.float   "percentualcorrecaomensal"
    t.string  "recebesangria",            limit: 255
    t.float   "saldo"
    t.float   "saldoconciliado"
    t.integer "idestabelecimento"
    t.integer "idfornecedor"
    t.integer "idtipoconta"
  end

  create_table "t_contabanco", primary_key: "idcontabanco", id: :integer, force: :cascade do |t|
    t.string  "agencia",       limit: 255
    t.string  "contacorrente", limit: 255
    t.integer "idbanco"
  end

  create_table "t_contacorrentecliente", primary_key: "idcontacorrentecliente", id: :integer, force: :cascade do |t|
    t.string   "status",         limit: 1,   null: false
    t.integer  "codigooperacao",             null: false
    t.datetime "data"
    t.string   "observacao",     limit: 255
    t.integer  "tipolancamento",             null: false
    t.integer  "tipooperacao",               null: false
    t.float    "valor",                      null: false
    t.integer  "idusuario"
    t.integer  "idcliente"
    t.index ["idcliente"], name: "idx_contacorrentecliente_idcliente", using: :btree
    t.index ["status"], name: "idx_contacorrentecliente_status", using: :btree
    t.index ["tipolancamento"], name: "idx_contacorrentecliente_tipolancamento", using: :btree
    t.index ["tipooperacao"], name: "idx_contacorrentecliente_tipooperacao", using: :btree
  end

  create_table "t_contador", primary_key: "idcontador", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 255
    t.string  "apelido",        limit: 255
    t.string  "cpfcnpj",        limit: 255
    t.string  "email",          limit: 255
    t.string  "nome",           limit: 255
    t.text    "observacao"
    t.string  "rgie",           limit: 255
    t.string  "tipo",           limit: 255
    t.string  "cnpjescritorio", limit: 255
    t.string  "crc",            limit: 255
    t.string  "nomeescritorio", limit: 255
    t.integer "idendereco"
  end

  create_table "t_contadorestabelecimento", primary_key: "idcontadorestabelecimento", id: :integer, force: :cascade do |t|
    t.string  "descricao",         limit: 255
    t.integer "tipocontato",                   null: false
    t.integer "idestabelecimento"
    t.integer "idcontador"
  end

  create_table "t_contatoautorizada", primary_key: "idcontatoautorizada", id: :integer, force: :cascade do |t|
    t.string  "descricao",    limit: 255
    t.integer "tipocontato",              null: false
    t.integer "idautorizada"
  end

  create_table "t_contatocartorio", primary_key: "idcontatocartorio", id: :integer, force: :cascade do |t|
    t.string  "descricao",   limit: 255
    t.integer "tipocontato",             null: false
    t.integer "idcartorio"
  end

  create_table "t_contatocliente", primary_key: "idcontatocliente", id: :integer, force: :cascade do |t|
    t.string  "descricao",   limit: 255
    t.integer "tipocontato",             null: false
    t.integer "idcliente"
    t.index ["idcliente"], name: "idx_contatocliente_idcliente", using: :btree
    t.index ["tipocontato"], name: "idx_contatocliente_tipocontato", using: :btree
  end

  create_table "t_contatocontador", primary_key: "idcontatocontador", id: :integer, force: :cascade do |t|
    t.string  "descricao",   limit: 255
    t.integer "tipocontato",             null: false
    t.integer "idcontador"
  end

  create_table "t_contatocorretorvendas", primary_key: "idcontatocorretorvendas", id: :integer, force: :cascade do |t|
    t.string  "descricao",        limit: 255
    t.integer "tipocontato",                  null: false
    t.integer "idcorretorvendas"
  end

  create_table "t_contatoestabelecimento", primary_key: "idcontatoestabelecimento", id: :integer, force: :cascade do |t|
    t.string  "descricao",         limit: 255
    t.integer "tipocontato",                   null: false
    t.integer "idestabelecimento"
  end

  create_table "t_contatofornecedor", primary_key: "idcontatofornecedor", id: :integer, force: :cascade do |t|
    t.string  "descricao",    limit: 255
    t.integer "tipocontato",              null: false
    t.integer "idfornecedor"
  end

  create_table "t_contatofuncionario", primary_key: "idcontatofuncionario", id: :integer, force: :cascade do |t|
    t.string  "descricao",     limit: 255
    t.integer "tipocontato",               null: false
    t.integer "idfuncionario"
  end

  create_table "t_contatoinfluenciador", primary_key: "idcontatoinfluenciador", id: :integer, force: :cascade do |t|
    t.string  "descricao",       limit: 255
    t.integer "tipocontato",                 null: false
    t.integer "idinfluenciador"
  end

  create_table "t_contatotransportadora", primary_key: "idcontatotransportadora", id: :integer, force: :cascade do |t|
    t.string  "descricao",        limit: 255
    t.integer "tipocontato",                  null: false
    t.integer "idtransportadora"
  end

  create_table "t_contrato", primary_key: "idcontrato", id: :integer, force: :cascade do |t|
    t.decimal  "comissao",               precision: 19, scale: 7
    t.bigint   "contratoid",                                      null: false
    t.datetime "datacadastro"
    t.datetime "datainiciovigencia"
    t.datetime "dataprimeiraparcela"
    t.datetime "dataterminovigencia"
    t.integer  "dialeitura",                                      null: false
    t.integer  "duracaocontrato",                                 null: false
    t.integer  "status"
    t.decimal  "valorpagamento",         precision: 19, scale: 7
    t.integer  "idconsultorresponsavel"
    t.integer  "idestabelecimento"
    t.integer  "idprecontrato"
    t.integer  "idusuariocadastro"
    t.integer  "idcliente"
    t.integer  "idcontratooriginal"
  end

  create_table "t_contratoaditivo", primary_key: "idcontratoaditivo", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 255
    t.datetime "data"
    t.date     "dataassinatura"
    t.datetime "dataterminovigenciaanterior"
    t.string   "descricaoindice",              limit: 255
    t.integer  "extensaocontrato",                                                  null: false
    t.bigint   "numeroaditivo"
    t.text     "observacao"
    t.decimal  "percentualindice",                         precision: 19, scale: 7
    t.integer  "tipo",                                                              null: false
    t.integer  "tipoajustepercentualindice"
    t.decimal  "valorpagamento",                           precision: 19, scale: 7
    t.decimal  "valorpagamentoanterior",                   precision: 19, scale: 7
    t.integer  "idcontrato"
    t.integer  "idusuario"
    t.integer  "idduplicataarecebercategoria"
  end

  create_table "t_contratoaditivoitemcustomizado", primary_key: "idcontratoaditivoitemcustomizado", id: :integer, force: :cascade do |t|
    t.decimal "quantidadefranquia",          precision: 19, scale: 7
    t.decimal "quantidadefranquianegociada", precision: 19, scale: 7
    t.decimal "valorfranquia",               precision: 19, scale: 7
    t.decimal "valorfranquiaexcedida",       precision: 19, scale: 7
    t.integer "idcontratoaditivo"
    t.bigint  "idproduto"
  end

  create_table "t_contratoarquivo", primary_key: "idcontratoarquivo", id: :bigint, force: :cascade do |t|
    t.binary  "arquivo"
    t.string  "nomearquivo",       limit: 255
    t.integer "idcontrato"
    t.integer "idcontratoaditivo"
  end

  create_table "t_contratocustomizacao", primary_key: "idcontratocustomizacao", id: :bigint, force: :cascade do |t|
    t.string   "status",              limit: 255
    t.boolean  "customizacaoinicial",             null: false
    t.datetime "datacadastro"
    t.integer  "idcontratoaditivo"
    t.integer  "idcontrato"
    t.integer  "idusuariocadastro"
  end

  create_table "t_contratocustomizacaoitem", primary_key: "idcontratocustomizacaoitem", id: :integer, force: :cascade do |t|
    t.decimal "quantidadefranquia",          precision: 19, scale: 7
    t.decimal "quantidadefranquianegociada", precision: 19, scale: 7
    t.decimal "valorfranquia",               precision: 19, scale: 7
    t.decimal "valorfranquiaexcedida",       precision: 19, scale: 7
    t.bigint  "idcontratocustomizacao"
    t.bigint  "idproduto"
  end

  create_table "t_contratofinanceira", primary_key: "idcontratofinanceira", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.string   "conferencia",            limit: 255
    t.datetime "datacancelamento"
    t.datetime "dataemissao"
    t.string   "numerocontrato",         limit: 255
    t.float    "valorbruto"
    t.float    "valorliquido"
    t.integer  "idcliente"
    t.integer  "idusuario"
    t.integer  "idrecebimentonaofiscal"
    t.integer  "idvenda"
    t.integer  "idpagamentotitulo"
    t.integer  "idestabelecimento"
    t.integer  "idplanofinanceira"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_contratofuncionarioparticipante", primary_key: "idcontratofuncionarioparticipante", id: :bigint, force: :cascade do |t|
    t.decimal "comissao",      precision: 19, scale: 2
    t.integer "idfuncionario"
    t.integer "idcontrato"
  end

  create_table "t_contratoinformacaofaturamento", primary_key: "idcontratoinformacaofaturamento", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "informacao", limit: 255
    t.integer  "posicao",                null: false
    t.integer  "status"
    t.integer  "idusuario"
    t.integer  "idcontrato"
  end

  create_table "t_contratolocatarioresponsavel", primary_key: "idcontratolocatarioresponsavel", id: :integer, force: :cascade do |t|
    t.string   "cpf",                          limit: 255
    t.datetime "datanascimento"
    t.string   "nome",                         limit: 255
    t.string   "rg",                           limit: 255
    t.integer  "idprecontrato"
    t.integer  "idlocatarioresponsavelfuncao"
  end

  create_table "t_contratolocatarioresponsavelcontato", primary_key: "idcontratolocatarioresponsavelcontato", id: :integer, force: :cascade do |t|
    t.string  "descricao",                      limit: 255
    t.integer "tipocontato",                                null: false
    t.integer "idcontratolocatarioresponsavel"
  end

  create_table "t_contratopadraodocumento", primary_key: "idcontratopadraodocumento", id: :integer, force: :cascade do |t|
    t.string   "admtributaria",                         limit: 255
    t.datetime "data"
    t.string   "destinatariobairro",                    limit: 255
    t.string   "destinatariocep",                       limit: 255
    t.string   "destinatariocidade",                    limit: 255
    t.string   "destinatariocpfcnpj",                   limit: 255
    t.string   "destinatarioendereco",                  limit: 255
    t.string   "destinatariofone",                      limit: 255
    t.string   "destinatarionome",                      limit: 255
    t.string   "destinatariorgie",                      limit: 255
    t.string   "destinatariouf",                        limit: 255
    t.string   "informacaoadicionalantesdototalizador", limit: 255
    t.string   "informacaoadicionalcabecalho",          limit: 255
    t.string   "informacaoadicionalrodape",             limit: 255
    t.string   "informacoescomplementares",             limit: 255
    t.string   "informativo",                           limit: 255
    t.string   "observacao",                            limit: 255
    t.integer  "status"
    t.integer  "idusuario"
    t.integer  "idcontrato"
  end

  create_table "t_contratopadraodocumentoitem", primary_key: "idcontratopadraodocumentoitem", id: :integer, force: :cascade do |t|
    t.string  "descricao",                 limit: 255
    t.decimal "percentualnodocumento",                 precision: 19, scale: 7
    t.decimal "quantidade",                            precision: 19, scale: 7
    t.string  "unidade",                   limit: 255
    t.integer "idcontratopadraodocumento"
  end

  create_table "t_contratoplanoinstalacao", primary_key: "idcontratoplanoinstalacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "email",                    limit: 255
    t.boolean  "entregue",                             default: false, null: false
    t.boolean  "instalado",                            default: false, null: false
    t.string   "setor",                    limit: 255
    t.integer  "sla"
    t.integer  "status"
    t.string   "telefone",                 limit: 255
    t.integer  "idcontrato"
    t.bigint   "idcontratocustomizacao"
    t.integer  "idcontratotipolocacao"
    t.bigint   "idproduto"
    t.integer  "idcontratotipoinstalacao"
    t.integer  "idendereco"
    t.bigint   "idprodutoentregue"
    t.integer  "idestoquenumeroserie"
    t.integer  "idusuario"
    t.string   "responsavelsetor",         limit: 255
    t.integer  "idcontratotipoleitura"
  end

  create_table "t_contratoplanoinstalacaoacessorio", primary_key: "idcontratoplanoinstalacaoacessorio", id: :integer, force: :cascade do |t|
    t.bigint  "idproduto"
    t.integer "idcontratoplanoinstalacao"
    t.integer "idestoquenumeroserie"
  end

  create_table "t_contratoplanoinstalacaoenderecohistorico", primary_key: "idcontratoplanoinstalacaoenderecohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "observacao",                limit: 255
    t.integer  "status"
    t.binary   "usuario"
    t.integer  "idcontratoplanoinstalacao"
  end

  create_table "t_contratoregiao", primary_key: "idcontratoregiao", id: :integer, force: :cascade do |t|
    t.integer "slanegociado"
    t.integer "slaoriginal"
    t.integer "idcontrato"
    t.integer "idregiao"
  end

  create_table "t_contratotipoinstalacao", primary_key: "idcontratotipoinstalacao", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_contratotipoleitura", primary_key: "idcontratotipoleitura", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_contratotipolocacao", primary_key: "idcontratotipolocacao", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_cor", primary_key: "idcor", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_corgrade", primary_key: "idcorgrade", id: :integer, force: :cascade do |t|
    t.integer "idcor"
    t.integer "idgrade"
  end

  create_table "t_corretorvendas", primary_key: "idcorretorvendas", id: :integer, force: :cascade do |t|
    t.string  "status",             limit: 255
    t.string  "apelido",            limit: 255
    t.string  "cpfcnpj",            limit: 255
    t.string  "email",              limit: 255
    t.string  "nome",               limit: 255
    t.text    "observacao"
    t.string  "rgie",               limit: 255
    t.string  "tipo",               limit: 255
    t.float   "percentualcomissao",             null: false
    t.integer "idendereco"
  end

  create_table "t_corretorvendascliente", primary_key: "idcorretorvendascliente", id: :integer, force: :cascade do |t|
    t.integer "idcorretorvendas"
    t.integer "idcliente"
  end

  create_table "t_crm", primary_key: "idcrm", id: :integer, force: :cascade do |t|
    t.string   "status",           limit: 1,                            null: false
    t.datetime "datacadastro"
    t.datetime "datafechamento"
    t.datetime "datatroca"
    t.datetime "datavencimento"
    t.datetime "datavisita"
    t.decimal  "limitecliente",                precision: 19, scale: 2
    t.string   "nomecliente",      limit: 255
    t.string   "telefonescliente", limit: 255
    t.integer  "tipo",                                                  null: false
    t.integer  "idvendedor"
    t.integer  "idcliente"
    t.index ["idcliente"], name: "idx_crm_idcliente", using: :btree
    t.index ["idvendedor"], name: "idx_crm_idvendedor", using: :btree
  end

  create_table "t_crmautomatico", primary_key: "idcrmautomatico", id: :integer, force: :cascade do |t|
    t.boolean "aniversario",                  null: false
    t.boolean "cobranca",                     null: false
    t.boolean "comprandias",                  null: false
    t.boolean "naocomprandias",               null: false
    t.integer "quantidadecomprandias",        null: false
    t.integer "quantidadenaocomprandias",     null: false
    t.integer "quantidadetrocapertodevencer", null: false
    t.boolean "trocapertodevencer",           null: false
  end

  create_table "t_cte", primary_key: "idcte", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,                            null: false
    t.decimal  "aliquotaicms",                           precision: 19, scale: 2
    t.string   "cfop",                       limit: 255
    t.string   "chcte",                      limit: 255
    t.string   "cst",                        limit: 255
    t.datetime "dataemissao"
    t.datetime "datarecebimento"
    t.string   "numero",                     limit: 255
    t.string   "serie",                      limit: 255
    t.string   "tipo",                       limit: 255
    t.decimal  "valorbasecalculoicms",                   precision: 19, scale: 2
    t.decimal  "valoricms",                              precision: 19, scale: 2
    t.decimal  "valornaotribuatado",                     precision: 19, scale: 2
    t.decimal  "valorreducaobasecalculo",                precision: 19, scale: 2
    t.decimal  "valortotal",                             precision: 19, scale: 2
    t.decimal  "valortotalprestacaoservico",             precision: 19, scale: 2
    t.integer  "idestabelecimento"
  end

  create_table "t_ctedestinatario", primary_key: "idctedestinatario", id: :integer, force: :cascade do |t|
    t.string  "status",     limit: 255
    t.string  "apelido",    limit: 255
    t.string  "cpfcnpj",    limit: 255
    t.string  "email",      limit: 255
    t.string  "nome",       limit: 255
    t.text    "observacao"
    t.string  "rgie",       limit: 255
    t.string  "tipo",       limit: 255
    t.integer "idendereco"
    t.integer "idcte"
  end

  create_table "t_cteduplicata", primary_key: "idcteduplicata", id: :integer, force: :cascade do |t|
    t.datetime "datavencimento"
    t.string   "numero",         limit: 255
    t.decimal  "valor",                      precision: 19, scale: 10
    t.integer  "idcte"
  end

  create_table "t_cteemitente", primary_key: "idcteemitente", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 255
    t.string  "apelido",          limit: 255
    t.string  "cpfcnpj",          limit: 255
    t.string  "email",            limit: 255
    t.string  "nome",             limit: 255
    t.text    "observacao"
    t.string  "rgie",             limit: 255
    t.string  "tipo",             limit: 255
    t.integer "idcte"
    t.integer "idendereco"
    t.integer "idtransportadora"
  end

  create_table "t_ctenotafiscalentrada", primary_key: "idctenotafiscalentrada", id: :integer, force: :cascade do |t|
    t.integer "idnotafiscalentrada"
    t.integer "idcte"
  end

  create_table "t_dadosafastamentodefinitivo", primary_key: "iddadosafastamentodefinitivo", id: :integer, force: :cascade do |t|
    t.float   "dtsalario",                             null: false
    t.float   "dtsalarioindenizado",                   null: false
    t.float   "adiantamento",                          null: false
    t.float   "adicionalinsalubridade",                null: false
    t.float   "adicionalnoturno",                      null: false
    t.float   "avisoprevio",                           null: false
    t.float   "comissoes",                             null: false
    t.string  "descricaoadicional1",       limit: 255
    t.string  "descricaoadicional2",       limit: 255
    t.string  "descricaoadicional3",       limit: 255
    t.string  "descricaoadicional4",       limit: 255
    t.string  "descricaodeducional1",      limit: 255
    t.string  "descricaodeducional2",      limit: 255
    t.string  "descricaodeducional3",      limit: 255
    t.string  "descricaodeducional4",      limit: 255
    t.float   "feriasproporcionais",                   null: false
    t.float   "feriasvencidas",                        null: false
    t.float   "gratificacoes",                         null: false
    t.float   "horasextras",                           null: false
    t.float   "irrf",                                  null: false
    t.float   "liquidoareceber",                       null: false
    t.float   "multaporatrasodepagamento",             null: false
    t.string  "obsdecimoterceiro",         limit: 255
    t.string  "obsferiasproporcionais",    limit: 255
    t.string  "obsferiasvencidas",         limit: 255
    t.string  "obssaldodesalario",         limit: 255
    t.float   "previdencia",                           null: false
    t.float   "previdencia13",                         null: false
    t.float   "salariobase",                           null: false
    t.float   "salariofamilia",                        null: false
    t.float   "saldodesalario",                        null: false
    t.float   "totalbruto",                            null: false
    t.float   "totaldasdeducoes",                      null: false
    t.float   "umtercosemferias",                      null: false
    t.float   "valefuncionario",                       null: false
    t.float   "valoradicional1",                       null: false
    t.float   "valoradicional2",                       null: false
    t.float   "valoradicional3",                       null: false
    t.float   "valoradicional4",                       null: false
    t.float   "valordeducional1",                      null: false
    t.float   "valordeducional2",                      null: false
    t.float   "valordeducional3",                      null: false
    t.float   "valordeducional4",                      null: false
    t.integer "iddespesa"
  end

  create_table "t_depositobancario", primary_key: "iddepositobancario", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 255
    t.boolean  "aceitacliente",                 null: false
    t.datetime "datadeposito"
    t.datetime "horaautorizacao"
    t.datetime "horacadastro"
    t.string   "observacao",        limit: 255
    t.float    "valor",                         null: false
    t.boolean  "visto",                         null: false
    t.integer  "idconta"
    t.integer  "idlancamentoconta"
  end

  create_table "t_depositobancariocliente", primary_key: "iddepositobancariocliente", id: :integer, force: :cascade do |t|
    t.string   "comprovante",        limit: 255
    t.datetime "dataidentificacao"
    t.decimal  "valor",                          precision: 19, scale: 2
    t.integer  "iddepositobancario"
    t.integer  "idcliente"
  end

  create_table "t_descontotitulosembanco", primary_key: "iddescontotitulosembanco", id: :integer, force: :cascade do |t|
    t.string   "status",                         limit: 1,   null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "porcentagemtaxabancaria",                    null: false
    t.string   "tipo",                           limit: 255
    t.float    "valortaxabancaria",                          null: false
    t.float    "valortotal",                                 null: false
    t.integer  "idconta"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimentopagamentotaxa"
    t.integer  "idusuario"
  end

  create_table "t_descontotitulosembancoitem", primary_key: "iddescontotitulosembancoitem", id: :integer, force: :cascade do |t|
    t.string  "status",                   limit: 1,   null: false
    t.integer "codigotitulo",                         null: false
    t.string  "tipotitulo",               limit: 255
    t.integer "iddescontotitulosembanco"
  end

  create_table "t_desmontagemkitproduto", primary_key: "iddesmontagemkitproduto", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 255
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idreferenciaprodutokit"
    t.integer  "idnfeentrada"
    t.integer  "idnfesaida"
    t.integer  "idusuarioalteracao"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_despacho", primary_key: "iddespacho", id: :integer, force: :cascade do |t|
    t.datetime "dataautorizacao"
    t.integer  "idusuario"
    t.integer  "idorcamento"
    t.index ["idorcamento"], name: "idx_despacho_idorcamento", using: :btree
  end

  create_table "t_despachoorcamentoproduto", primary_key: "iddespachoorcamentoproduto", id: :integer, force: :cascade do |t|
    t.string  "codigobarraconferencia", limit: 255
    t.float   "quantidade",                         null: false
    t.integer "idorcamentoproduto"
    t.integer "iddespacho"
    t.index ["iddespacho"], name: "idx_despachoorcamentoproduto_iddespacho", using: :btree
  end

  create_table "t_despesa", primary_key: "iddespesa", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,    null: false
    t.string   "descricao",                  limit: 255
    t.integer  "anocompetencia"
    t.string   "codigobarra",                limit: 255
    t.string   "conferencia",                limit: 255
    t.datetime "dataemissao"
    t.datetime "datapagamento"
    t.datetime "datavencimento"
    t.string   "despesafiscal",              limit: 255
    t.string   "documento",                  limit: 255
    t.string   "iscanceladocaixaaberto",     limit: 255
    t.integer  "mescompetencia"
    t.string   "observacao",                 limit: 2000
    t.string   "observacaoconferencia",      limit: 255
    t.string   "originadaadiantamento",      limit: 255
    t.string   "originadafolhapagamento",    limit: 255
    t.string   "parcela",                    limit: 255
    t.string   "participaderateio",          limit: 255
    t.boolean  "previsao",                                null: false
    t.string   "tiporateio",                 limit: 255
    t.float    "valor"
    t.integer  "idfornecedorservico"
    t.integer  "idusuario"
    t.integer  "idsubgrupodespesa"
    t.bigint   "idcaixapagamento"
    t.integer  "idpagamentotitulo"
    t.integer  "idestabelecimentopagamento"
    t.integer  "idpagamentotituloitem"
    t.index ["idestabelecimentopagamento"], name: "idx_despesa_idestabelecimentopagamento", using: :btree
    t.index ["participaderateio"], name: "idx_despesa_participaderateio", using: :btree
    t.index ["status"], name: "idx_despesa_status", using: :btree
  end

  create_table "t_despesapagamento", primary_key: "iddespesapagamento", id: :integer, force: :cascade do |t|
    t.integer "iddespesa"
    t.integer "idpagamentodespesa"
  end

  create_table "t_devolucaoestoque", primary_key: "iddevolucaoestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "complemento",           limit: 255
    t.datetime "datacadastro"
    t.datetime "datarecebimento"
    t.integer  "idfaseordemfabricacao"
    t.integer  "idusuariorecebimento"
    t.integer  "idusuariocadastro"
  end

  create_table "t_devolucaoestoqueitem", primary_key: "iddevolucaoestoqueitem", id: :integer, force: :cascade do |t|
    t.float   "quantidadeenviada",  null: false
    t.float   "quantidaderecebida", null: false
    t.bigint  "idproduto"
    t.integer "iddevolucaoestoque"
  end

  create_table "t_devolucaomercadoriafornecedor", primary_key: "iddevolucaomercadoriafornecedor", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,                                            null: false
    t.datetime "dataautorizacao"
    t.datetime "datacadastro"
    t.datetime "dataemissaonota"
    t.string   "observacao",             limit: 255
    t.decimal  "valortotaldevolucao",                precision: 19, scale: 7, default: "0.0"
    t.integer  "idconta"
    t.integer  "idrecebimento"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idestabelecimento"
    t.integer  "idnotafiscalentrada"
    t.integer  "idfornecedor"
  end

  create_table "t_devolucaomercadoriafornecedorhistorico", primary_key: "iddevolucaomercadoriafornecedorhistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                          limit: 255
    t.integer  "iddevolucaomercadoriafornecedor"
    t.integer  "idusuario"
  end

  create_table "t_devolucaomercadoriafornecedoritem", primary_key: "iddevolucaomercadoriafornecedoritem", id: :integer, force: :cascade do |t|
    t.decimal "quantidade",                              precision: 19, scale: 7, default: "0.0"
    t.integer "iddevolucaomercadoriafornecedor"
    t.integer "iddevolucaomercadoriafornecedoritemnota"
    t.bigint  "idproduto"
  end

  create_table "t_devolucaomercadoriafornecedoritemnota", primary_key: "iddevolucaomercadoriafornecedoritemnota", id: :integer, force: :cascade do |t|
    t.decimal "quantidade",                      precision: 19, scale: 7, default: "0.0"
    t.integer "idprodutonota"
    t.integer "iddevolucaomercadoriafornecedor"
  end

  create_table "t_diagnostico", primary_key: "iddiagnostico", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_diaplanovendafutura", primary_key: "iddiaplanovendafutura", id: :integer, force: :cascade do |t|
    t.integer "dia",                      null: false
    t.float   "faturamentodia",           null: false
    t.integer "idsemanaplanovendafutura"
    t.integer "idestabelecimento"
  end

  create_table "t_divergenciamovimentacaoestoque", primary_key: "iddivergenciamovimentacaoestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "dataautorizacao"
    t.string   "observacaodivergencia", limit: 255
    t.integer  "idusuario"
    t.integer  "idmovimentacao"
  end

  create_table "t_divergenciaorcamento", primary_key: "iddivergenciaorcamento", id: :integer, force: :cascade do |t|
    t.integer "motivo",               null: false
    t.integer "idusuarioautorizacao"
    t.integer "idcliente"
    t.integer "idorcamento"
  end

  create_table "t_duplicataareceber", primary_key: "idduplicataareceber", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,   null: false
    t.string   "codigobarra",                  limit: 255
    t.integer  "codigocarnesubstituido"
    t.string   "conferencia",                  limit: 1,   null: false
    t.datetime "dataemissao"
    t.datetime "datapagamento"
    t.datetime "datapagamentoprincipal"
    t.datetime "datavencimento"
    t.datetime "datavencimentoprorrogada"
    t.float    "descontojuros",                            null: false
    t.float    "descontojurosantespagamento"
    t.float    "descontovalortitulo",                      null: false
    t.float    "jurosapagar",                              null: false
    t.float    "jurosantespagamento"
    t.float    "jurospagamento",                           null: false
    t.float    "multaapagar",                              null: false
    t.float    "multapagamento",                           null: false
    t.string   "numeroboleto",                 limit: 255
    t.integer  "numeroparcela"
    t.text     "observacao"
    t.integer  "quantidadedeparcelas"
    t.float    "totalapagar",                              null: false
    t.integer  "totaldiasatraso",                          null: false
    t.float    "valor",                                    null: false
    t.float    "valorpagamento",                           null: false
    t.integer  "idorcamento"
    t.integer  "idduplicataarecebercategoria"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idportador"
    t.integer  "idconta"
    t.integer  "idestabelecimento"
    t.integer  "idcliente"
    t.integer  "idvendedor"
    t.integer  "idportadorcobranca"
    t.integer  "idusuario"
    t.integer  "idusuariocancelamento"
    t.index ["codigobarra"], name: "idx_duplicataareceber_codigobarra", using: :btree
    t.index ["idcliente"], name: "idx_duplicataareceber_idcliente", using: :btree
    t.index ["idestabelecimento"], name: "idx_duplicataareceber_idestabelecimento", using: :btree
    t.index ["idorcamento"], name: "idx_duplicataareceber_idorcamento", using: :btree
    t.index ["status"], name: "idx_duplicataareceber_status", using: :btree
  end

  create_table "t_duplicataarecebercategoria", primary_key: "idduplicataarecebercategoria", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,   null: false
    t.string  "descricao", limit: 255
    t.boolean "contabil",              null: false
  end

  create_table "t_duplicatadolote", primary_key: "idduplicatadolote", id: :integer, force: :cascade do |t|
    t.integer "idduplicatapagar"
    t.integer "idloteduplicatapagar"
  end

  create_table "t_duplicatadopagamento", primary_key: "idduplicatadopagamento", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idpagamentoduplicata"
    t.integer "idduplicatapagar"
  end

  create_table "t_duplicatafaseprocessodefabricacao", primary_key: "idduplicatafaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.integer "idfaseprocessodefabricacao"
    t.integer "idduplicata"
  end

  create_table "t_duplicatafrete", primary_key: "idduplicatafrete", id: :integer, force: :cascade do |t|
    t.integer "idfretecompartilhado"
    t.integer "idduplicatapagar"
  end

  create_table "t_duplicatanfe", primary_key: "idduplicatanfe", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "duplicata",              limit: 255
    t.float    "valor",                              null: false
    t.integer  "idduplicataareceber"
    t.integer  "idnotafiscaleletronica"
  end

  create_table "t_duplicatapagar", primary_key: "idduplicatapagar", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 255
    t.string   "adicionadolote",               limit: 255
    t.string   "codigobarra",                  limit: 255
    t.date     "dataemissao"
    t.date     "datapagamento"
    t.datetime "datarecebimentoboleto"
    t.date     "datavencimento"
    t.string   "descontopontualidadeexibivel", limit: 255
    t.string   "hasboleto",                    limit: 255
    t.string   "numeroauxiliar",               limit: 255
    t.string   "numeroboleto",                 limit: 255
    t.integer  "numerototalparcelas"
    t.string   "observacao",                   limit: 2000
    t.integer  "parcela"
    t.string   "recebimentorealizadocomnf",    limit: 255
    t.string   "tipo",                         limit: 255
    t.string   "tipoboleto",                   limit: 255
    t.string   "tipopagamento",                limit: 255
    t.float    "valor"
    t.float    "valorpagamento"
    t.float    "valortotalacrespont"
    t.float    "valortotalacrescimo"
    t.float    "valortotaldescpont"
    t.float    "valortotaldesconto"
    t.integer  "idusuariopagamento"
    t.integer  "idfornecedor"
    t.integer  "idestabelecimento"
    t.integer  "idnotafiscalentrada"
    t.integer  "idtransportadora"
    t.index ["numeroauxiliar"], name: "idx_duplicatapagar_numeroauxiliar", using: :btree
    t.index ["status"], name: "idx_duplicatapagar_status", using: :btree
    t.index ["tipopagamento"], name: "idx_duplicatapagar_tipopagamento", using: :btree
  end

  create_table "t_duplicatapagarhistorico", primary_key: "idduplicatapagarhistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",           limit: 255
    t.integer  "idusuario"
    t.integer  "idduplicatapagar"
  end

  create_table "t_duplicataprevisao", primary_key: "idduplicataprevisao", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 1, null: false
    t.date    "datacadastro"
    t.date    "datavencimento"
    t.integer "numeroparcelas"
    t.integer "parcela"
    t.float   "valor"
    t.integer "idpedido"
  end

  create_table "t_edi", primary_key: "idedi", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1,   null: false
    t.string   "arquivo",             limit: 255
    t.integer  "cadastro",                        null: false
    t.text     "conteudoarquivo"
    t.datetime "data"
    t.string   "nomearquivo",         limit: 255
    t.text     "observacao"
    t.integer  "tipo",                            null: false
    t.integer  "idcondicaopagamento"
    t.integer  "idcomprador"
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
  end

  create_table "t_endereco", primary_key: "idendereco", id: :integer, force: :cascade do |t|
    t.text    "bairro"
    t.string  "cep",             limit: 255
    t.integer "codigomunicipio",             null: false
    t.integer "codigopais",                  null: false
    t.integer "codigouf",                    null: false
    t.text    "complemento"
    t.text    "localidade"
    t.text    "logradouro"
    t.string  "numero",          limit: 255
    t.string  "pais",            limit: 255
    t.string  "uf",              limit: 255
  end

  create_table "t_enviofci", primary_key: "idenviofci", id: :integer, force: :cascade do |t|
    t.text     "arquivo"
    t.datetime "datarecepcao"
    t.datetime "dataupload"
    t.datetime "datavalidacao"
    t.string   "hashcode",             limit: 255
    t.string   "indicadorvalidacao",   limit: 255
    t.string   "protocolorecebimento", limit: 255
    t.integer  "idestabelecimento"
  end

  create_table "t_enviopagamentofornecedor", primary_key: "idenviopagamentofornecedor", id: :integer, force: :cascade do |t|
    t.string  "agencia",                      limit: 255
    t.string  "cc",                           limit: 255
    t.string  "emailenviado",                 limit: 255
    t.string  "numeroidentificadorpagamento", limit: 255
    t.string  "observacao",                   limit: 255
    t.integer "idbanco"
    t.integer "idfornecedor"
    t.integer "idpagamentoduplicata"
    t.integer "idtransportadora"
  end

  create_table "t_enviopagamentofornecedorduplicata", primary_key: "idenviopagamentofornecedorduplicata", id: :bigint, force: :cascade do |t|
    t.integer "idenviopagamentofornecedor"
    t.integer "idduplicata"
  end

  create_table "t_espelhomfd", primary_key: "idespelhomfd", id: :integer, force: :cascade do |t|
    t.integer "ano",      null: false
    t.text    "arquivo"
    t.integer "mes",      null: false
    t.integer "idpafecf"
  end

  create_table "t_espelhomfdavulso", primary_key: "idespelhomfdavulso", id: :integer, force: :cascade do |t|
    t.text     "arquivo"
    t.datetime "datafinal"
    t.datetime "datainicial"
    t.integer  "idpafecf"
  end

  create_table "t_estabelecimento", primary_key: "idestabelecimento", id: :integer, force: :cascade do |t|
    t.string  "status",                     limit: 1,   null: false
    t.string  "cnpj",                       limit: 255
    t.integer "codigoempresafortes"
    t.string  "codigofilial",               limit: 255
    t.integer "codigofilialfortes"
    t.integer "codigolf",                               null: false
    t.string  "cpfresponsavel",             limit: 255
    t.integer "crt",                                    null: false
    t.string  "csc",                        limit: 255
    t.string  "idcsc",                      limit: 255
    t.string  "inscricaoestadual",          limit: 255
    t.string  "inscricaomunicipal",         limit: 255
    t.string  "logomarca",                  limit: 255
    t.string  "nomefantasia",               limit: 255
    t.string  "nomeresponsavel",            limit: 255
    t.string  "observacao",                 limit: 255
    t.boolean "participaderateiocentral",               null: false
    t.string  "razaosocial",                limit: 255
    t.string  "sigla",                      limit: 255
    t.string  "tipo",                       limit: 255
    t.integer "idendereco"
    t.integer "idunidadenegocio"
    t.integer "idestabelecimentovinculado"
  end

  create_table "t_estabelecimentocondicao", primary_key: "idestabelecimentocondicao", id: :integer, force: :cascade do |t|
    t.string  "status",              limit: 1, null: false
    t.integer "idcondicaopagamento",           null: false
    t.integer "idestabelecimento",             null: false
  end

  create_table "t_estabelecimentocontafinanceira", primary_key: "idestabelecimentocontafinanceira", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.integer "idfinanceira"
    t.integer "idconta"
  end

  create_table "t_estabelecimentocontaoperadora", primary_key: "idestabelecimentocontaoperadora", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.integer "idredecartao"
    t.integer "idconta"
    t.integer "idoperadoracartao"
  end

  create_table "t_estabelecimentodefeito", primary_key: "idestabelecimentodefeito", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,   null: false
    t.string  "descricao",         limit: 255
    t.integer "idestabelecimento"
  end

  create_table "t_estabelecimentonotificacao", primary_key: "idestabelecimentonotificacao", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.integer "idestabelecimento"
    t.integer "idnotificacao"
  end

  create_table "t_estabelecimentoparametro", primary_key: "idestabelecimentoparametro", id: :integer, force: :cascade do |t|
    t.float   "valorfloat"
    t.text    "valorstring"
    t.integer "idestabelecimento"
    t.integer "idparametroestabelecimento"
  end

  create_table "t_estabelecimentopromocao", primary_key: "idestabelecimentopromocao", id: :integer, force: :cascade do |t|
    t.integer "idpromocao"
    t.integer "idestabelecimento"
  end

  create_table "t_estabelecimentorateio", primary_key: "idestabelecimentorateio", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.integer "idestabelecimento"
    t.integer "idsubgrupodespesa"
  end

  create_table "t_estabelecimentoreferenciaprodutofci", primary_key: "idestabelecimentoreferenciaprodutofci", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.integer "idfci"
    t.integer "idreferenciaproduto"
  end

  create_table "t_estabelecimentoremarcacao", primary_key: "idestabelecimentoremarcacao", id: :integer, force: :cascade do |t|
    t.integer "idremarcacaopreco"
    t.integer "idestabelecimento"
  end

  create_table "t_estabelecimentosetor", primary_key: "idestabelecimentosetor", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.integer "idsetor"
    t.integer "idfuncionario"
  end

  create_table "t_estoque", primary_key: "idestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                            limit: 255
    t.string   "chavenfeultimanotadeentrada",       limit: 44
    t.string   "cnpjfornecedorultimanotadeentrada", limit: 255
    t.bigint   "codigoantigo"
    t.string   "codigobarra",                       limit: 255
    t.decimal  "custocompralimpo",                              precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "custocontabil",                                 precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "custocontabillimpo",                            precision: 10, scale: 2, default: "0.0", null: false
    t.datetime "data"
    t.datetime "dataestoquefiscalinicial"
    t.datetime "dataultimorecebimento"
    t.decimal  "descontoagregado",                              precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "descontomaximo",                                precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "icms",                                          precision: 10, scale: 2, default: "0.0", null: false
    t.integer  "numeroultimanotadeentrada",                                              default: 0
    t.decimal  "porcentagemipi",                                precision: 10, scale: 2
    t.float    "precominimodevenda"
    t.decimal  "precopromocao",                                 precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "precovenda",                                    precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "primeiroprecovenda",                            precision: 10, scale: 2, default: "0.0", null: false
    t.string   "promocao",                          limit: 255
    t.float    "quantidade"
    t.decimal  "quantidadeagregado",                            precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "quantidadeestoquefiscalinicial",                precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "quantidadeestoqueminimo",                       precision: 10, scale: 2, default: "0.0", null: false
    t.float    "quantidadereserva",                                                                      null: false
    t.decimal  "temp_frete",                                    precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "temp_indice",                                   precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorcusto",                                    precision: 10, scale: 2, default: "0.0", null: false
    t.bigint   "idproduto"
    t.integer  "idprodutoagregado"
    t.integer  "idestabelecimento"
    t.integer  "idtributacao"
    t.integer  "idsetor"
    t.index ["codigobarra"], name: "idx_estoque_codigobarra", using: :btree
    t.index ["idestabelecimento"], name: "idx_estoque_idestabelecimento", using: :btree
    t.index ["idproduto"], name: "idx_estoque_idproduto", using: :btree
    t.index ["idsetor"], name: "idx_estoque_idsetor", using: :btree
    t.index ["quantidade"], name: "idx_estoque_quantidade", using: :btree
    t.index ["status"], name: "idx_estoque_status", using: :btree
  end

  create_table "t_estoquecalculopreco", primary_key: "idestoquecalculopreco", id: :integer, force: :cascade do |t|
    t.decimal "creditos",               precision: 19, scale: 2
    t.decimal "debitos",                precision: 19, scale: 2
    t.decimal "frete",                  precision: 19, scale: 2
    t.decimal "markupfamilia",          precision: 19, scale: 2
    t.decimal "pctcofins",              precision: 19, scale: 2
    t.decimal "pctcomissao",            precision: 19, scale: 2
    t.decimal "pctcontribuicaosocial",  precision: 19, scale: 2
    t.decimal "pctdespesafixavariavel", precision: 19, scale: 2
    t.decimal "pctfinanceirodiario",    precision: 19, scale: 2
    t.decimal "pctipi",                 precision: 19, scale: 2
    t.decimal "pcticms",                precision: 19, scale: 2
    t.decimal "pcticmsst",              precision: 19, scale: 2
    t.decimal "pctimpostorenda",        precision: 19, scale: 2
    t.decimal "pctlucrodesejado",       precision: 19, scale: 2
    t.decimal "pctoutros",              precision: 19, scale: 2
    t.decimal "pctpis",                 precision: 19, scale: 2
    t.decimal "pctsimples",             precision: 19, scale: 2
    t.integer "prazomediocompra",                                null: false
    t.integer "prazomediovenda",                                 null: false
    t.decimal "precocompra",            precision: 19, scale: 2
    t.decimal "precocustoestoque",      precision: 19, scale: 2
    t.decimal "precovendapraticado",    precision: 19, scale: 2
    t.decimal "quantidadeestoque",      precision: 19, scale: 2
    t.decimal "quantidaderecebida",     precision: 19, scale: 2
    t.boolean "utilizamkpfamilia",                               null: false
    t.boolean "utilizaprecocustomedio",                          null: false
    t.integer "idestoque"
  end

  create_table "t_estoqueminimo", primary_key: "idestoqueminimo", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.float   "quantidademinima"
    t.bigint  "idproduto"
    t.integer "idestabelecimento"
  end

  create_table "t_estoquenumeroserie", primary_key: "idestoquenumeroserie", id: :integer, force: :cascade do |t|
    t.string  "status",                     limit: 255
    t.integer "tipo",                                   null: false
    t.integer "idorcamentoproduto"
    t.integer "idestoque"
    t.integer "idnotafiscalentradaproduto"
    t.index ["idestoque"], name: "idx_estoquenumeroserie_idestoque", using: :btree
  end

  create_table "t_estoquenumeroseriecontadorservico", primary_key: "idestoquenumeroseriecontadorservico", id: :integer, force: :cascade do |t|
    t.decimal  "contador",                         precision: 15
    t.bigint   "idservico"
    t.integer  "idestoquenumeroserie"
    t.datetime "datacadastro"
    t.string   "origem",               limit: 255
    t.integer  "idusuariocadastro"
  end

  create_table "t_estornocaixa", primary_key: "idestornocaixa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idpagamentodespesa"
    t.integer  "idpagamentocarne"
    t.bigint   "idcaixa"
  end

  create_table "t_execucaojob", primary_key: "idexecucaojob", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "job",  limit: 255
  end

  create_table "t_exportacaoedoc", primary_key: "idexportacaoedoc", id: :integer, force: :cascade do |t|
    t.integer  "ano",               null: false
    t.text     "arquivo"
    t.datetime "dataexportacao"
    t.integer  "mes",               null: false
    t.integer  "idestabelecimento"
  end

  create_table "t_exportacaomfd", primary_key: "idexportacaomfd", id: :integer, force: :cascade do |t|
    t.integer  "ano",                                    null: false
    t.text     "arquivo"
    t.datetime "dataexportacao"
    t.integer  "mes",                                    null: false
    t.string   "numerofabricacaoimpressora", limit: 255
    t.integer  "idestabelecimento"
  end

  create_table "t_exportacaosped", primary_key: "idexportacaosped", id: :integer, force: :cascade do |t|
    t.integer  "ano",                                    null: false
    t.text     "arquivo"
    t.datetime "dataexportacao"
    t.integer  "mes",                                    null: false
    t.string   "numerofabricacaoimpressora", limit: 255
    t.integer  "idestabelecimento"
  end

  create_table "t_fasefichatecnica", primary_key: "idfasefichatecnica", id: :integer, force: :cascade do |t|
    t.string   "status",                           limit: 1,   null: false
    t.string   "descricao",                        limit: 255
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.string   "exiberendimento",                  limit: 255
    t.string   "exigepermissaoparafinalizar",      limit: 255
    t.float    "percentualareceberacimadoenviado",             null: false
    t.string   "podetervariosrecebimentos",        limit: 255
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioalteracao"
  end

  create_table "t_faseordemfabricacao", primary_key: "idfaseordemfabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1,   null: false
    t.datetime "dataabertura"
    t.datetime "datafechamento"
    t.string   "tipofase",            limit: 255
    t.string   "tipoproducao",        limit: 255
    t.integer  "idordemfabricacao"
    t.integer  "idfichatecnicafase"
    t.integer  "idusuarioabertura"
    t.integer  "idusuariofechamento"
    t.index ["idordemfabricacao"], name: "idx_faseordemfabricacao_idordemfabricacao", using: :btree
    t.index ["status"], name: "idx_faseordemfabricacao_status", using: :btree
  end

  create_table "t_faseordemfabricacaodevolucaoestoque", primary_key: "idfaseordemfabricacaodevolucaoestoque", id: :integer, force: :cascade do |t|
    t.integer "iddevolucaoestoque"
    t.integer "idfaseordemfabricacao"
  end

  create_table "t_faseordemfabricacaoenvioproducao", primary_key: "idfaseordemfabricacaoenvioproducao", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "dataautorizacao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.string   "emitenota",              limit: 255
    t.text     "observacao"
    t.integer  "idusuariocadastro"
    t.integer  "idfaseordemfabricacao"
    t.integer  "idmaquina"
    t.integer  "idusuarioautorizacao"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idfornecedor"
    t.integer  "idusuariocancelamento"
    t.index ["idfaseordemfabricacao"], name: "idx_faseordemfabricacaoenvioproducao_idfaseordemfabricacao", using: :btree
  end

  create_table "t_faseordemfabricacaoenvioproducaoitem", primary_key: "idfaseordemfabricacaoenvioproducaoitem", id: :integer, force: :cascade do |t|
    t.float   "quantidadeenviada",                  null: false
    t.bigint  "idproduto"
    t.integer "idfaseordemfabricacaoenvioproducao"
  end

  create_table "t_faseordemfabricacaoenvioproducaoitemprevistopararecebimento", primary_key: "idfaseordemfabricacaoenvioproducaoitemprevistopararecebimento", id: :integer, force: :cascade do |t|
    t.float   "quantidadeprevista",                 null: false
    t.float   "valornegociado",                     null: false
    t.integer "idreferenciaproduto"
    t.integer "idfaseordemfabricacaoenvioproducao"
  end

  create_table "t_faseordemfabricacaorecebimentoproducao", primary_key: "idfaseordemfabricacaorecebimentoproducao", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "dataautorizacao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.text     "observacao"
    t.string   "recebenota",             limit: 255
    t.integer  "idcondicaopagamento"
    t.integer  "idfaseordemfabricacao"
    t.integer  "idusuariocancelamento"
    t.integer  "idfornecedor"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioautorizacao"
    t.integer  "idnotafiscalentrada"
  end

  create_table "t_faseordemfabricacaorecebimentoproducaoduplicatapagar", primary_key: "idfaseordemfabricacaorecebimentoproducaoduplicatapagar", id: :integer, force: :cascade do |t|
    t.integer "idduplicatapagar"
    t.integer "idfaseordemfabricacaorecebimentoproducao"
  end

  create_table "t_faseordemfabricacaorecebimentoproducaoenviorecebido", primary_key: "idfaseordemfabricacaorecebimentoproducaoenviorecebido", id: :integer, force: :cascade do |t|
    t.integer "idfaseordemfabricacaorecebimentoproducao"
    t.integer "idfaseordemfabricacaoenvioproducao"
  end

  create_table "t_faseordemfabricacaorecebimentoproducaoitem", primary_key: "idfaseordemfabricacaorecebimentoproducaoitem", id: :integer, force: :cascade do |t|
    t.float   "quantidaderecebida",                       null: false
    t.bigint  "idproduto"
    t.integer "idfaseordemfabricacaorecebimentoproducao"
  end

  create_table "t_faseordemfabricacaorequisicaoestoque", primary_key: "idfaseordemfabricacaorequisicaoestoque", id: :integer, force: :cascade do |t|
    t.integer "idfaseordemfabricacao"
    t.integer "idrequisicaoestoque"
    t.index ["idfaseordemfabricacao"], name: "idx_faseordemfabricacaorequisicaoestoque_idfaseordemfabricacao", using: :btree
  end

  create_table "t_faseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",                             limit: 255
    t.string   "cadastroukardexfiscal",              limit: 255
    t.datetime "data"
    t.datetime "datacadastrokardexfiscal"
    t.string   "inicial",                            limit: 255
    t.text     "observacao"
    t.integer  "idromaneiodesaidadefabricacao"
    t.integer  "idtipofaseprocessodefabricacao"
    t.integer  "idfornecedor"
    t.integer  "idfaseprocessodefabricacaoanterior"
    t.integer  "idfornecedorproximafase"
    t.integer  "idusuario"
    t.integer  "idprocessodefabricacao"
  end

  create_table "t_fatura", primary_key: "idfatura", id: :integer, force: :cascade do |t|
    t.string   "admtributaria",                         limit: 255
    t.datetime "data"
    t.datetime "dataemissao"
    t.datetime "datafinalfatura"
    t.datetime "datainicialfatura"
    t.datetime "datarecebimento"
    t.string   "destinatariobairro",                    limit: 255
    t.string   "destinatariocep",                       limit: 255
    t.string   "destinatariocidade",                    limit: 255
    t.string   "destinatariocpfcnpj",                   limit: 255
    t.string   "destinatarioendereco",                  limit: 255
    t.string   "destinatariofone",                      limit: 255
    t.string   "destinatarionome",                      limit: 255
    t.string   "destinatariorgie",                      limit: 255
    t.string   "destinatariouf",                        limit: 255
    t.string   "informacaoadicionalantesdototalizador", limit: 255
    t.string   "informacaoadicionalcabecalho",          limit: 255
    t.string   "informacaoadicionalrodape",             limit: 255
    t.string   "informacoescomplementares",             limit: 255
    t.string   "informativo",                           limit: 255
    t.integer  "numerodocumento"
    t.text     "observacao"
    t.string   "parcela",                               limit: 255
    t.boolean  "parcelaextra",                                                               default: false
    t.string   "recebedor",                             limit: 255
    t.boolean  "regeroufatura",                                                              default: false
    t.integer  "status"
    t.decimal  "valor",                                             precision: 19, scale: 7
    t.decimal  "valorcalculado",                                    precision: 19, scale: 7
    t.decimal  "valorcobrado",                                      precision: 19, scale: 7
    t.integer  "idduplicataareceber"
    t.integer  "idrecibo"
    t.integer  "idmotivocancelarfatura"
    t.integer  "idcontrato"
    t.integer  "idusuario"
    t.integer  "idsolicitacao"
    t.integer  "idfaturaoriginal"
    t.integer  "idduplicataarecebercategoria"
    t.integer  "idnotafiscalservico"
    t.integer  "idmotivoalterarfatura"
    t.boolean  "faturadividida",                                                             default: false
    t.decimal  "valordepoisdedivisao",                              precision: 19, scale: 7
  end

  create_table "t_faturaarquivo", primary_key: "idfaturaarquivo", id: :integer, force: :cascade do |t|
    t.binary  "arquivo"
    t.string  "nomearquivo", limit: 255
    t.integer "idfatura"
  end

  create_table "t_faturafuncionarioparticipante", primary_key: "idfaturafuncionarioparticipante", id: :integer, force: :cascade do |t|
    t.decimal "comissao",      precision: 19, scale: 2
    t.boolean "responsavel",                            null: false
    t.integer "idfuncionario"
    t.integer "idfatura"
  end

  create_table "t_faturahistorico", primary_key: "idfaturahistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.integer  "idfatura"
    t.integer  "idmotivocancelarfatura"
    t.integer  "idusuario"
    t.integer  "idmotivoalterarfatura"
  end

  create_table "t_faturaitem", primary_key: "idfaturaitem", id: :integer, force: :cascade do |t|
    t.string  "descricao",     limit: 255
    t.decimal "quantidade",                precision: 19, scale: 7
    t.string  "unidade",       limit: 255
    t.decimal "valorunitario",             precision: 19, scale: 7
    t.integer "idfatura"
  end

  create_table "t_faturamentoestabmensal", primary_key: "idfaturamentoestabmensal", id: :integer, force: :cascade do |t|
    t.integer "ano",               null: false
    t.date    "data"
    t.integer "mes",               null: false
    t.float   "percentual"
    t.float   "valor"
    t.integer "idestabelecimento"
  end

  create_table "t_faturamentofiscalporformadepagamento", primary_key: "idfaturamentofiscalporformadepagamento", id: :integer, force: :cascade do |t|
    t.string   "ccdb",                    limit: 255
    t.string   "ccdr",                    limit: 255
    t.string   "credito",                 limit: 255
    t.string   "cro",                     limit: 255
    t.datetime "data"
    t.string   "debito",                  limit: 255
    t.string   "descricaoformapagamento", limit: 255
    t.string   "historicopadrao",         limit: 255
    t.integer  "lancamento",                                                   null: false
    t.decimal  "valor",                               precision: 10, scale: 2
    t.integer  "idpafecf"
  end

  create_table "t_faturamentofiscalporimpressora", primary_key: "idfaturamentofiscalporimpressora", id: :integer, force: :cascade do |t|
    t.string   "cro",      limit: 255
    t.datetime "data"
    t.decimal  "valor",                precision: 10, scale: 2
    t.integer  "idpafecf"
  end

  create_table "t_faturamentoproduto", primary_key: "idfaturamentoproduto", id: :integer, force: :cascade do |t|
    t.date "datafinal"
    t.date "datainicial"
  end

  create_table "t_faturamentoprodutoestab", primary_key: "idfaturamentoprodutoestab", id: :integer, force: :cascade do |t|
    t.date    "datafinal"
    t.date    "datainicial"
    t.integer "quantidadevendida"
    t.float   "valorfaturamento"
    t.integer "idfaturamentoproduto"
    t.bigint  "idproduto"
    t.integer "idestabelecimento"
  end

  create_table "t_faturaservicoproducao", primary_key: "idfaturaservicoproducao", id: :integer, force: :cascade do |t|
    t.decimal "producao",                           precision: 19, scale: 7
    t.decimal "quantidadefranquiamomentofatura",    precision: 19, scale: 7
    t.decimal "valorfranquiaexcedidamomentofatura", precision: 19, scale: 7
    t.decimal "valorfranquiamomentofatura",         precision: 19, scale: 7
    t.integer "idcontratocustomizacaoitem"
    t.integer "idfatura"
  end

  create_table "t_fci", primary_key: "idfci", id: :integer, force: :cascade do |t|
    t.string "codigofci",                     limit: 255
    t.float  "coeficienteimportacao",                     null: false
    t.string "indicadorvalidacao",            limit: 255
    t.float  "valorparcelaimportadaexterior",             null: false
    t.float  "valorsaida",                                null: false
  end

  create_table "t_feriado", primary_key: "idferiado", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 1,   null: false
    t.string   "descricao",         limit: 255
    t.datetime "datacadastro"
    t.integer  "dia"
    t.date     "feriadoespecifico"
    t.integer  "mes"
    t.string   "tipo",              limit: 255
    t.integer  "idusuariocadastro"
  end

  create_table "t_feriadoestabelecimento", primary_key: "idferiadoestabelecimento", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.integer "idestabelecimento"
    t.integer "idferiado"
  end

  create_table "t_fichatecnica", primary_key: "idfichatecnica", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1,   null: false
    t.string   "descricao",           limit: 255
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.integer  "idusuarioalteracao"
    t.integer  "idusuariocadastro"
    t.integer  "idreferenciaproduto"
  end

  create_table "t_fichatecnicafase", primary_key: "idfichatecnicafase", id: :integer, force: :cascade do |t|
    t.text    "observacao"
    t.string  "tipofase",           limit: 255
    t.string  "tipoproducao",       limit: 255
    t.integer "idfasefichatecnica"
    t.integer "idfichatecnica"
  end

  create_table "t_financeira", primary_key: "idfinanceira", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_folhaadiantamento", primary_key: "idfolhaadiantamento", id: :integer, force: :cascade do |t|
    t.integer "idadiantamento"
    t.integer "idfolhapagamentofuncionario"
  end

  create_table "t_folhaadicionaldesconto", primary_key: "idfolhaadicionaldesconto", id: :integer, force: :cascade do |t|
    t.string  "status",                      limit: 1,               null: false
    t.integer "codigocarne",                             default: 0, null: false
    t.string  "descricao",                   limit: 255
    t.integer "parcela",                                             null: false
    t.integer "quantidadeparcelas",                                  null: false
    t.integer "tipo",                                                null: false
    t.float   "valor",                                               null: false
    t.integer "idfolhapagamentofuncionario"
  end

  create_table "t_folhaadicionaldescontodecimoterceiro", primary_key: "idfolhaadicionaldescontodecimoterceiro", id: :integer, force: :cascade do |t|
    t.string  "status",                                    limit: 1,               null: false
    t.integer "codigocarne",                                           default: 0, null: false
    t.string  "descricao",                                 limit: 255
    t.integer "tipo",                                                              null: false
    t.float   "valor",                                                             null: false
    t.integer "idfolhapagamentodecimoterceirofuncionario"
  end

  create_table "t_folhadecimoterceiroadiantamento", primary_key: "idfolhadecimoterceiroadiantamento", id: :integer, force: :cascade do |t|
    t.integer "idfolhapagamentodecimoterceirofuncionario"
    t.integer "idadiantamentodecimoterceiro"
  end

  create_table "t_folhafuncionariocarne", primary_key: "idfolhafuncionariocarne", id: :integer, force: :cascade do |t|
    t.float   "valorpago",        null: false
    t.integer "idfolhapagamento"
    t.integer "idfuncionario"
    t.integer "idcarne"
  end

  create_table "t_folhapagamento", primary_key: "idfolhapagamento", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.integer "ano",                           null: false
    t.date    "datavencimento"
    t.string  "despesafiscal",     limit: 255
    t.integer "mes",                           null: false
    t.string  "observacao",        limit: 255
    t.integer "tipo",                          null: false
    t.float   "valortotal",                    null: false
    t.integer "idsubgrupodespesa"
    t.integer "idestabelecimento"
  end

  create_table "t_folhapagamentodecimoterceiro", primary_key: "idfolhapagamentodecimoterceiro", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.integer "ano",                           null: false
    t.date    "datavencimento"
    t.string  "observacao",        limit: 255
    t.integer "tipo",                          null: false
    t.float   "valortotal",                    null: false
    t.integer "idestabelecimento"
  end

  create_table "t_folhapagamentodecimoterceirofuncionario", primary_key: "idfolhapagamentodecimoterceirofuncionario", id: :integer, force: :cascade do |t|
    t.integer "idfuncionario"
    t.integer "iddespesa"
    t.integer "idfolhapagamentodecimoterceiro"
  end

  create_table "t_folhapagamentodecimoterceirohistorico", primary_key: "idfolhapagamentodecimoterceirohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                         limit: 255
    t.integer  "idfolhapagamentodecimoterceiro"
    t.integer  "idusuario"
  end

  create_table "t_folhapagamentofuncionario", primary_key: "idfolhapagamentofuncionario", id: :integer, force: :cascade do |t|
    t.integer "idfuncionario"
    t.integer "iddespesa"
    t.integer "idfolhapagamento"
  end

  create_table "t_folhapagamentohistorico", primary_key: "idfolhapagamentohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",           limit: 255
    t.integer  "idusuario"
    t.integer  "idfolhapagamento"
  end

  create_table "t_formaleitura", primary_key: "idformaleitura", id: :integer, force: :cascade do |t|
    t.string  "descricao", limit: 255
    t.integer "status"
  end

  create_table "t_formapagamento", primary_key: "idformapagamento", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,   null: false
    t.string  "descricao",         limit: 255
    t.integer "tipo",                          null: false
    t.string  "usatef",            limit: 1,   null: false
    t.integer "utilizadoem",                   null: false
    t.integer "idoperadoracartao"
  end

  create_table "t_formapagamentocarne", primary_key: "idformapagamentocarne", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idformapagamento"
    t.integer "idpagamentocarne"
  end

  create_table "t_formapagamentocc", primary_key: "idformapagamentocc", id: :integer, force: :cascade do |t|
    t.string  "conferencia",      limit: 255
    t.float   "valor",                        null: false
    t.bigint  "idcaixa"
    t.integer "idformapagamento"
  end

  create_table "t_formapagamentonfe", primary_key: "idformapagamentonfe", id: :integer, force: :cascade do |t|
    t.string  "tipo",                   limit: 255
    t.decimal "valor",                              precision: 19, scale: 2
    t.integer "idnotafiscaleletronica"
  end

  create_table "t_formapagamentopagamentotitulo", primary_key: "idformapagamentopagamentotitulo", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idformapagamento"
    t.integer "idpagamentotitulo"
    t.index ["idformapagamento"], name: "idx_formapagamentopagamentotitulo_idformapagamento", using: :btree
    t.index ["idpagamentotitulo"], name: "idx_formapagamentopagamentotitulo_idpagamentotitulo", using: :btree
  end

  create_table "t_formapagamentorecebimentonaofiscal", primary_key: "idformapagamentorecebimentonaofiscal", id: :integer, force: :cascade do |t|
    t.decimal "valor",                  precision: 10, scale: 2
    t.integer "idformapagamento"
    t.integer "idrecebimentonaofiscal"
  end

  create_table "t_formapagamentovenda", primary_key: "idformapagamentovenda", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idvenda"
    t.integer "idformapagamento"
    t.index ["idformapagamento"], name: "idx_formapagamentovenda_idformapagamento", using: :btree
    t.index ["idvenda"], name: "idx_formapagamentovenda_idvenda", using: :btree
  end

  create_table "t_formapagamentovendacomplementar", primary_key: "idformapagamentovendacomplementar", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idformapagamento"
    t.integer "idvendacomplementar"
  end

  create_table "t_formapagfechcaixa", primary_key: "idformapagfechcaixa", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idformapagamento"
    t.bigint  "idcaixa"
  end

  create_table "t_fornecedor", primary_key: "idfornecedor", id: :integer, force: :cascade do |t|
    t.string  "status",     limit: 255
    t.string  "apelido",    limit: 255
    t.string  "cpfcnpj",    limit: 255
    t.string  "email",      limit: 255
    t.string  "nome",       limit: 255
    t.text    "observacao"
    t.string  "rgie",       limit: 255
    t.string  "tipo",       limit: 255
    t.integer "idendereco"
    t.index ["cpfcnpj"], name: "idx_fornecedor_cpfcnpj", using: :btree
    t.index ["nome"], name: "idx_fornecedor_nome", using: :btree
    t.index ["status"], name: "idx_fornecedor_status", using: :btree
  end

  create_table "t_fornecedorinformacoesbancarias", primary_key: "idfornecedorinformacoesbancarias", id: :integer, force: :cascade do |t|
    t.string  "agencia",      limit: 255
    t.string  "cc",           limit: 255
    t.integer "idfornecedor"
    t.integer "idbanco"
  end

  create_table "t_fornecedormarca", primary_key: "idfornecedormarca", id: :integer, force: :cascade do |t|
    t.integer "idfornecedor"
    t.integer "idmarca"
  end

  create_table "t_fornecedorservico", primary_key: "idfornecedorservico", id: :integer, force: :cascade do |t|
    t.string "status",     limit: 1,   null: false
    t.string "descricao",  limit: 255
    t.string "email",      limit: 255
    t.string "observacao", limit: 255
  end

  create_table "t_fornecedorservicocontato", primary_key: "idfornecedorservicocontato", id: :integer, force: :cascade do |t|
    t.string  "descricao",           limit: 255
    t.integer "tipocontato",                     null: false
    t.integer "idfornecedorservico"
  end

  create_table "t_fracionamentoprodutocoligado", primary_key: "idfracionamentoprodutocoligado", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioalteracao"
  end

  create_table "t_fretecompartilhado", primary_key: "idfretecompartilhado", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1, null: false
    t.date    "data"
    t.integer "idusuario"
  end

  create_table "t_fretenotafiscalentrada", primary_key: "idfretenotafiscalentrada", id: :integer, force: :cascade do |t|
    t.integer "idfretecompartilhado"
    t.integer "idnotafiscalentrada"
  end

  create_table "t_funcionario", primary_key: "idfuncionario", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.string  "apelido",           limit: 255
    t.string  "cpfcnpj",           limit: 255
    t.string  "email",             limit: 255
    t.string  "nome",              limit: 255
    t.text    "observacao"
    t.string  "rgie",              limit: 255
    t.string  "tipo",              limit: 255
    t.integer "calculosalario",                null: false
    t.string  "conjuge",           limit: 255
    t.date    "dataadmissao"
    t.date    "datanascimento"
    t.binary  "foto"
    t.string  "mae",               limit: 255
    t.string  "pai",               limit: 255
    t.float   "salario",                       null: false
    t.string  "sexo",              limit: 255
    t.integer "idestabelecimento"
    t.integer "idendereco"
    t.integer "idusuario"
    t.integer "idatividade"
    t.integer "idatividadenivel"
    t.index ["cpfcnpj"], name: "idx_funcionario_cpfcnpj", using: :btree
    t.index ["status"], name: "idx_funcionario_status", using: :btree
  end

  create_table "t_funcionariopontuacaoextra", primary_key: "idfuncionariopontuacaoextra", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.decimal  "pontuacao",     precision: 19, scale: 7
    t.integer  "status"
    t.integer  "idfuncionario"
  end

  create_table "t_funcionariopontuacaoextrahistorico", primary_key: "idfuncionariopontuacaoextrahistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.integer  "status"
    t.integer  "idfuncionariopontuacaoextra"
    t.integer  "idusuario"
  end

  create_table "t_fundocaixa", primary_key: "idfundocaixa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.float    "valor"
    t.integer  "idusuario"
  end

  create_table "t_grade", primary_key: "idgrade", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_grupo", primary_key: "idgrupo", id: :integer, force: :cascade do |t|
    t.string "status",     limit: 1,   null: false
    t.string "descricao",  limit: 255
    t.string "observacao", limit: 255
  end

  create_table "t_grupodespesa", primary_key: "idgrupodespesa", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_grupohistorico", primary_key: "idgrupohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idusuario"
    t.integer  "idgrupo"
  end

  create_table "t_grupoproduto", primary_key: "idgrupoproduto", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_h2", primary_key: "idh2", id: :integer, force: :cascade do |t|
    t.string   "erro",              limit: 255
    t.string   "hash",              limit: 255
    t.string   "mfadicional",       limit: 255
    t.string   "modelodoecf",       limit: 255
    t.integer  "numerodousuario",               null: false
    t.string   "numerofabricacao",  limit: 255
    t.integer  "ccf",                           null: false
    t.string   "cnpjcredenciadora", limit: 255
    t.integer  "coo",                           null: false
    t.string   "cpfcliente",        limit: 255
    t.datetime "dataemissao"
    t.string   "numerotitulo",      limit: 255
    t.float    "valor",                         null: false
    t.integer  "idpafecf"
    t.integer  "idestabelecimento"
  end

  create_table "t_hierarquiaestabreposicao", primary_key: "idhierarquiaestabreposicao", id: :integer, force: :cascade do |t|
    t.integer "posicao"
    t.integer "idestabelecimento"
  end

  create_table "t_histomudancavalorduplicata", primary_key: "idhistomudancavalorduplicata", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.string   "observacao",            limit: 255
    t.float    "porcentagem"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
    t.integer  "idduplicatapagar"
  end

  create_table "t_historicoassistenciaproduto", primary_key: "idhistoricoassistenciaproduto", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",               limit: 255
    t.integer  "idusuario"
    t.integer  "idassistenciaproduto"
  end

  create_table "t_historicoautorizada", primary_key: "idhistoricoautorizada", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",       limit: 255
    t.integer  "idautorizada"
    t.integer  "idusuario"
  end

  create_table "t_historicobaixaservico", primary_key: "idhistoricobaixaservico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",         limit: 255
    t.integer  "idusuario"
    t.integer  "idbaixaservico"
  end

  create_table "t_historicobalancoautonomo", primary_key: "idhistoricobalancoautonomo", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idbalancoautonomo"
    t.integer  "idusuario"
  end

  create_table "t_historicocaixa", primary_key: "idhistoricocaixa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.bigint   "idcaixa"
    t.integer  "idusuario"
  end

  create_table "t_historicocarne", primary_key: "idhistoricocarne", id: :integer, force: :cascade do |t|
    t.string   "status",         limit: 1, null: false
    t.datetime "data"
    t.datetime "datavencimento"
    t.float    "jurospagamento"
    t.float    "multapagamento"
    t.text     "observacao"
    t.float    "valorpago"
    t.integer  "idportador"
    t.integer  "idusuario"
    t.integer  "idcarne"
    t.index ["idcarne"], name: "idx_historicocarne_idcarne", using: :btree
  end

  create_table "t_historicocartorio", primary_key: "idhistoricocartorio", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idcartorio"
    t.integer  "idusuario"
  end

  create_table "t_historicocheque", primary_key: "idhistoricocheque", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1, null: false
    t.integer  "codigoentidadeoperacao",           null: false
    t.datetime "data"
    t.datetime "datavencimento"
    t.float    "jurospagamento"
    t.float    "multapagamento"
    t.text     "observacao"
    t.integer  "tipooperacao"
    t.float    "valorpago"
    t.integer  "idportador"
    t.integer  "idusuario"
    t.integer  "idcheque"
    t.index ["idcheque"], name: "idx_historicocheque_idcheque", using: :btree
    t.index ["observacao"], name: "idx_historicocheque_observacao", using: :btree
  end

  create_table "t_historicocliente", primary_key: "idhistoricocliente", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idusuario"
    t.integer  "idcliente"
  end

  create_table "t_historicoclientevenda", primary_key: "idhistoricoclientevenda", id: :integer, force: :cascade do |t|
    t.datetime "dataprimeiracompranolimite"
    t.datetime "dataultimacompra"
    t.float    "valormaximocomprado"
    t.float    "valorultimacompra"
    t.integer  "idcliente"
  end

  create_table "t_historicocompensacaocartao", primary_key: "idhistoricocompensacaocartao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",              limit: 255
    t.integer  "idcompensacaocartao"
    t.integer  "idusuario"
  end

  create_table "t_historicoconferenciacaixa", primary_key: "idhistoricoconferenciacaixa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.bigint   "idcaixa"
    t.integer  "idusuario"
  end

  create_table "t_historicoconsertoproduto", primary_key: "idhistoricoconsertoproduto", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idusuario"
    t.integer  "idconsertoproduto"
  end

  create_table "t_historicocontratofinanceira", primary_key: "idhistoricocontratofinanceira", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",               limit: 255
    t.integer  "idcontratofinanceira"
    t.integer  "idusuario"
  end

  create_table "t_historicocrm", primary_key: "idhistoricocrm", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.datetime "datavisitacliente"
    t.string   "statusalterado",    limit: 255
    t.integer  "idcrm"
    t.integer  "idusuario"
  end

  create_table "t_historicodepositobancario", primary_key: "idhistoricodepositobancario", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",             limit: 255
    t.integer  "idusuario"
    t.integer  "iddepositobancario"
  end

  create_table "t_historicodespesa", primary_key: "idhistoricodespesa", id: :integer, force: :cascade do |t|
    t.string   "status",     limit: 1,   null: false
    t.datetime "data"
    t.string   "observacao", limit: 255
    t.integer  "iddespesa"
    t.integer  "idusuario"
  end

  create_table "t_historicodevolucaoestoque", primary_key: "idhistoricodevolucaoestoque", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",             limit: 255
    t.integer  "iddevolucaoestoque"
    t.integer  "idusuario"
  end

  create_table "t_historicoduplicataareceber", primary_key: "idhistoricoduplicataareceber", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1,   null: false
    t.datetime "data"
    t.datetime "datavencimento"
    t.float    "jurospagamento"
    t.float    "multapagamento"
    t.string   "observacao",          limit: 255
    t.float    "valorpago"
    t.integer  "idusuario"
    t.integer  "idportador"
    t.integer  "idduplicataareceber"
    t.index ["idduplicataareceber"], name: "idx_historicoduplicataareceber_idduplicataareceber", using: :btree
  end

  create_table "t_historicoenviofci", primary_key: "idhistoricoenviofci", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idenviofci"
    t.integer  "idusuario"
  end

  create_table "t_historicofasefichatecnica", primary_key: "idhistoricofasefichatecnica", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",             limit: 255
    t.integer  "idusuario"
    t.integer  "idfasefichatecnica"
  end

  create_table "t_historicofaseordemfabricacao", primary_key: "idhistoricofaseordemfabricacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                limit: 255
    t.integer  "idfaseordemfabricacao"
    t.integer  "idusuario"
  end

  create_table "t_historicofaseprocessodefabricacao", primary_key: "idhistoricofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                     limit: 255
    t.integer  "idfaseprocessodefabricacao"
    t.integer  "idusuario"
  end

  create_table "t_historicofci", primary_key: "idhistoricofci", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idusuario"
    t.integer  "idfci"
  end

  create_table "t_historicoferiado", primary_key: "idhistoricoferiado", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idferiado"
    t.integer  "idusuario"
  end

  create_table "t_historicofichatecnica", primary_key: "idhistoricofichatecnica", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",         limit: 255
    t.integer  "idfichatecnica"
    t.integer  "idusuario"
  end

  create_table "t_historicofornecedor", primary_key: "idhistoricofornecedor", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",       limit: 255
    t.integer  "idfornecedor"
    t.integer  "idusuario"
  end

  create_table "t_historicofretecompartilhado", primary_key: "idhistoricofretecompartilhado", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",               limit: 255
    t.integer  "idfretecompartilhado"
    t.integer  "idusuario"
  end

  create_table "t_historicofuncionario", primary_key: "idhistoricofuncionario", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",        limit: 255
    t.integer  "idfuncionario"
    t.integer  "idusuario"
  end

  create_table "t_historicolancamentolote", primary_key: "idhistoricolancamentolote", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",           limit: 255
    t.integer  "idlancamentolote"
    t.integer  "idconta"
    t.integer  "idusuario"
  end

  create_table "t_historicolistaevento", primary_key: "idhistoricolistaevento", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",        limit: 255
    t.integer  "idusuario"
    t.integer  "idlistaevento"
  end

  create_table "t_historicolote", primary_key: "idhistoricolote", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idlote"
    t.integer  "idusuario"
  end

  create_table "t_historicolotedespesa", primary_key: "idhistoricolotedespesa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",        limit: 255
    t.integer  "idlotedespesa"
    t.integer  "idusuario"
  end

  create_table "t_historicoloteduplicata", primary_key: "idhistoricoloteduplicata", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",          limit: 255
    t.integer  "idloteduplicata"
    t.integer  "idusuario"
  end

  create_table "t_historicomovimentacaoestoque", primary_key: "idhistoricomovimentacaoestoque", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                limit: 255
    t.integer  "idusuario"
    t.integer  "idmovimentacaoestoque"
  end

  create_table "t_historicomovimentacaoestoquesetor", primary_key: "idhistoricomovimentacaoestoquesetor", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                     limit: 255
    t.integer  "idmovimentacaoestoquesetor"
    t.integer  "idusuario"
  end

  create_table "t_historiconaturezadaoperacao", primary_key: "idhistoriconaturezadaoperacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",               limit: 255
    t.integer  "idnaturezadaoperacao"
    t.integer  "idusuario"
  end

  create_table "t_historiconfe", primary_key: "idhistoriconfe", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                 limit: 255
    t.integer  "idusuario"
    t.integer  "idnotafiscaleletronica"
  end

  create_table "t_historicoordemfabricacao", primary_key: "idhistoricoordemfabricacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idordemfabricacao"
    t.integer  "idusuario"
  end

  create_table "t_historicoparametro", primary_key: "idhistoricoparametro", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",      limit: 255
    t.integer  "idparametro"
    t.integer  "idusuario"
  end

  create_table "t_historicoparametroestabelecimento", primary_key: "idhistoricoparametroestabelecimento", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                     limit: 255
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
    t.integer  "idparametroestabelecimento"
  end

  create_table "t_historicopendenciaatendimentofuturo", primary_key: "idhistoricopendenciaatendimentofuturo", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                       limit: 255
    t.integer  "idpendenciaatendimentofuturo"
    t.integer  "idusuario"
  end

  create_table "t_historicoplanejamentofaseprocessodefabricacao", primary_key: "idhistoricoplanejamentofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                                 limit: 255
    t.integer  "idusuario"
    t.integer  "idplanejamentofaseprocessodefabricacao"
  end

  create_table "t_historicoprecoproduto", primary_key: "idhistoricoprecoproduto", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 255
    t.datetime "data"
    t.float    "despesas",                      null: false
    t.float    "frete",                         null: false
    t.float    "icms",                          null: false
    t.float    "ipi",                           null: false
    t.float    "margem",                        null: false
    t.float    "piscofins",                     null: false
    t.float    "preconota",                     null: false
    t.float    "precopedido",                   null: false
    t.float    "precosugerido",                 null: false
    t.string   "tipovalor",         limit: 255
    t.integer  "idestabelecimento"
    t.bigint   "idproduto"
    t.integer  "idrecebimento"
    t.integer  "idusuario"
  end

  create_table "t_historicoprocessodefabricacao", primary_key: "idhistoricoprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                 limit: 255
    t.integer  "idusuario"
    t.integer  "idprocessodefabricacao"
  end

  create_table "t_historicoprorrogarcheque", primary_key: "idhistoricoprorrogarcheque", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idusuario"
    t.integer  "idprorrogarcheque"
  end

  create_table "t_historicoprorrogarduplicataareceber", primary_key: "idhistoricoprorrogarduplicataareceber", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                       limit: 255
    t.integer  "idprorrogarduplicataareceber"
    t.integer  "idusuario"
  end

  create_table "t_historicoremarcacaopreco", primary_key: "idhistoricoremarcacaopreco", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idusuario"
    t.integer  "idremarcacaopreco"
  end

  create_table "t_historicorequisicaoestoque", primary_key: "idhistoricorequisicaoestoque", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",              limit: 255
    t.integer  "idusuario"
    t.integer  "idrequisicaoestoque"
  end

  create_table "t_historicoreservamercadoria", primary_key: "idhistoricoreservamercadoria", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",              limit: 255
    t.integer  "idreservamercadoria"
    t.integer  "idusuario"
  end

  create_table "t_historicoromaneioentradapedido", primary_key: "idhistoricoromaneioentradapedido", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                  limit: 255
    t.integer  "idromaneioentradapedido"
    t.integer  "idusuario"
  end

  create_table "t_historicotransportadora", primary_key: "idhistoricotransportadora", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",           limit: 255
    t.integer  "idtransportadora"
    t.integer  "idusuario"
  end

  create_table "t_historicovendacombloqueio", primary_key: "idhistoricovendacombloqueio", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "observacao",        limit: 255
    t.integer  "tipobloqueio"
    t.integer  "idusuario"
    t.integer  "idvenda"
    t.integer  "idestabelecimento"
  end

  create_table "t_horariofuncionario", primary_key: "idhorariofuncionario", id: :integer, force: :cascade do |t|
    t.integer "dia",                             null: false
    t.string  "horamaxima",          limit: 255
    t.string  "horamaximaintervalo", limit: 255
    t.string  "horaminima",          limit: 255
    t.string  "horaminimaintervalo", limit: 255
    t.integer "idfuncionario"
  end

  create_table "t_horariousuario", primary_key: "idhorariousuario", id: :integer, force: :cascade do |t|
    t.integer "dia",                    null: false
    t.string  "horamaxima", limit: 255
    t.string  "horaminima", limit: 255
    t.integer "idusuario"
  end

  create_table "t_horautil", primary_key: "idhorautil", id: :integer, force: :cascade do |t|
    t.integer "diadasemana",                   null: false
    t.string  "horafinal",         limit: 255
    t.string  "horainicial",       limit: 255
    t.integer "idestabelecimento"
  end

  create_table "t_imagemdigitalcliente", primary_key: "idimagemdigitalcliente", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.integer  "dedo",       null: false
    t.integer  "digital"
    t.integer  "digitalwsq"
    t.integer  "imagem"
    t.integer  "parentesco", null: false
    t.integer  "idcliente"
  end

  create_table "t_imposto", primary_key: "idimposto", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,                            null: false
    t.string  "descricao",         limit: 255
    t.decimal "aliquota",                      precision: 19, scale: 2
    t.integer "idestabelecimento"
    t.integer "idsubgrupodespesa"
  end

  create_table "t_impostoproduto", primary_key: "idimpostoproduto", id: :integer, force: :cascade do |t|
    t.float  "aliquotaimportacao",             null: false
    t.float  "aliquotanacional",               null: false
    t.string "cest",               limit: 255
    t.string "ncm",                limit: 255
  end

  create_table "t_indicefinanceiro", primary_key: "idindicefinanceiro", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,                            null: false
    t.string  "descricao", limit: 255
    t.decimal "aliquota",              precision: 19, scale: 2
  end

  create_table "t_influenciador", primary_key: "idinfluenciador", id: :integer, force: :cascade do |t|
    t.datetime "datanascimento"
    t.string   "email",                limit: 255
    t.string   "nome",                 limit: 255
    t.string   "observacao",           limit: 255
    t.integer  "idendereco"
    t.integer  "idcargoinfluenciador"
    t.string   "cpf",                  limit: 255
    t.string   "rg",                   limit: 255
  end

  create_table "t_influenciadorcliente", primary_key: "idinfluenciadorcliente", id: :integer, force: :cascade do |t|
    t.integer "idcliente"
    t.integer "idinfluenciador"
  end

  create_table "t_informacaobancariacliente", primary_key: "idinformacaobancariacliente", id: :integer, force: :cascade do |t|
    t.string   "agencia",    limit: 255
    t.string   "banco",      limit: 255
    t.string   "conta",      limit: 255
    t.datetime "data"
    t.string   "observacao", limit: 255
    t.integer  "idusuario"
    t.integer  "idcliente"
  end

  create_table "t_informacaoetiqueta", primary_key: "idinformacaoetiqueta", id: :integer, force: :cascade do |t|
    t.integer "idreferenciaproduto"
    t.string  "fornecedor",          limit: 255
    t.string  "fornecedorcnpj",      limit: 255
    t.string  "lote",                limit: 255
    t.string  "gramatura",           limit: 255
    t.string  "origem",              limit: 255
    t.text    "imagens"
    t.decimal "largura",                         precision: 19, scale: 7
    t.decimal "rendimento",                      precision: 19, scale: 7
    t.index ["idinformacaoetiqueta"], name: "t_informacaoetiqueta_idinformacaoetiqueta_uindex", unique: true, using: :btree
  end

  create_table "t_informacaopatrimonialcliente", primary_key: "idinformacaopatrimonialcliente", id: :integer, force: :cascade do |t|
    t.string   "anoautomovel",     limit: 255
    t.datetime "dataaquisicao"
    t.string   "financiado",       limit: 255
    t.string   "localidadeimovel", limit: 255
    t.string   "marcaautomovel",   limit: 255
    t.string   "modeloautomovel",  limit: 255
    t.string   "observacao",       limit: 255
    t.string   "placaautomovel",   limit: 255
    t.string   "tipo",             limit: 255
    t.string   "tipoimovel",       limit: 255
    t.float    "valor",                        null: false
    t.integer  "idcliente"
    t.integer  "idusuario"
  end

  create_table "t_inutilizacaonumeracaonfe", primary_key: "idinutilizacaonumeracaonfe", id: :integer, force: :cascade do |t|
    t.integer  "ano",                           null: false
    t.datetime "data"
    t.string   "justificativa",     limit: 255
    t.string   "modelo",            limit: 255
    t.string   "motivo",            limit: 255
    t.bigint   "numerofinal",                   null: false
    t.bigint   "numeroinicial",                 null: false
    t.string   "numeroprotocolo",   limit: 255
    t.string   "serie",             limit: 255
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
  end

  create_table "t_inventariofiscal", primary_key: "idinventariofiscal", id: :bigint, force: :cascade do |t|
    t.text     "arquivo"
    t.datetime "data"
    t.datetime "datafiminventario"
    t.datetime "datainicioinventario"
    t.float    "fatorconversao",                   null: false
    t.integer  "modelo",                           null: false
    t.string   "tipocampovalor",       limit: 255
    t.string   "tipoestoque",          limit: 255
    t.integer  "idestabelecimento"
  end

  create_table "t_inventariofiscalitem", primary_key: "idinventariofiscalitem", id: :bigint, force: :cascade do |t|
    t.integer "codigoposse",                     null: false
    t.string  "cpfcnpjpossuidor",    limit: 255
    t.float   "preco",                           null: false
    t.float   "quantidade",                      null: false
    t.integer "idreferenciaproduto"
    t.bigint  "idinventariofiscal"
  end

  create_table "t_itemafastadiantnormal", primary_key: "iditemafastadiantnormal", id: :integer, force: :cascade do |t|
    t.integer "idlancamentoadiantamentonormal"
    t.integer "idafastamento"
  end

  create_table "t_itemajustefiscal", primary_key: "iditemajustefiscal", id: :integer, force: :cascade do |t|
    t.string  "foradelinha",           limit: 255
    t.float   "qtd_antiga"
    t.float   "qtd_movimentada"
    t.integer "idajusteestoquefiscal"
    t.integer "idreferenciaproduto"
  end

  create_table "t_itemdesmontagemkitproduto", primary_key: "iditemdesmontagemkitproduto", id: :integer, force: :cascade do |t|
    t.string  "status",                  limit: 255
    t.float   "quantidade",                          null: false
    t.integer "iddesmontagemkitproduto"
    t.bigint  "idprodutokit"
  end

  create_table "t_itemfracionamentoprodutocoligado", primary_key: "iditemfracionamentoprodutocoligado", id: :integer, force: :cascade do |t|
    t.string  "status",                         limit: 255
    t.float   "qtdentradacoligado",                         null: false
    t.float   "qtdsaidabase",                               null: false
    t.integer "idfracionamentoprodutocoligado"
    t.integer "idreferenciaprodutocoligado"
    t.integer "idreferenciaprodutobase"
  end

  create_table "t_itemmontagemkitproduto", primary_key: "iditemmontagemkitproduto", id: :integer, force: :cascade do |t|
    t.string  "status",               limit: 255
    t.float   "quantidade",                       null: false
    t.bigint  "idprodutokit"
    t.integer "idmontagemkitproduto"
  end

  create_table "t_itemvalidacao", primary_key: "iditemvalidacao", id: :bigint, force: :cascade do |t|
    t.string  "hash", limit: 255
    t.integer "r02"
    t.integer "r06"
    t.integer "r04"
    t.bigint  "me"
    t.integer "r01"
    t.integer "r03"
    t.integer "r05"
    t.integer "r07"
  end

  create_table "t_job", primary_key: "idjob", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "job",  limit: 255
  end

  create_table "t_kardex", primary_key: "idkardex", id: :integer, force: :cascade do |t|
    t.integer  "codigooperacao",                  null: false
    t.string   "complemento",         limit: 255
    t.datetime "data"
    t.float    "qtdeestoque"
    t.float    "qtdemovimentada"
    t.integer  "tipo",                            null: false
    t.float    "valor"
    t.float    "valorcusto"
    t.integer  "idestabelecimento"
    t.integer  "idprodutoagregado"
    t.integer  "idreferenciaproduto"
    t.bigint   "idproduto"
    t.integer  "idsetor"
    t.index ["codigooperacao"], name: "idx_kardex_codigooperacao", using: :btree
    t.index ["data"], name: "idx_kardex_data", using: :btree
    t.index ["idestabelecimento"], name: "idx_kardex_idestabelecimento", using: :btree
    t.index ["idproduto"], name: "idx_kardex_idproduto", using: :btree
    t.index ["idprodutoagregado"], name: "idx_kardex_idprodutoagregado", using: :btree
    t.index ["idreferenciaproduto"], name: "idx_kardex_idreferenciaproduto", using: :btree
    t.index ["tipo"], name: "idx_kardex_tipo", using: :btree
  end

  create_table "t_kardexestoquenumeroserie", primary_key: "idkardexestoquenumeroserie", id: :bigint, force: :cascade do |t|
    t.text     "complemento"
    t.datetime "data"
    t.integer  "operacao",                  null: false
    t.integer  "idestoquenumeroserie"
    t.integer  "idestabelecimento"
    t.bigint   "idproduto"
    t.integer  "idchamado"
    t.integer  "idorcamento"
    t.integer  "idtroca"
    t.integer  "idcontratoplanoinstalacao"
  end

  create_table "t_kardexfiscal", primary_key: "idkardexfiscal", id: :integer, force: :cascade do |t|
    t.integer  "codigooperacao",                                                           null: false
    t.string   "complemento",         limit: 255
    t.datetime "data"
    t.decimal  "qtdeestoque",                     precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "qtdemovimentada",                 precision: 10, scale: 2, default: "0.0", null: false
    t.integer  "tipo",                                                                     null: false
    t.integer  "tipomovimentofiscal"
    t.decimal  "valor",                           precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorcusto",                      precision: 10, scale: 2, default: "0.0", null: false
    t.integer  "idestabelecimento"
    t.integer  "idreferenciaproduto"
    t.bigint   "idproduto"
    t.index ["data"], name: "idx_kardexfiscal_data", using: :btree
    t.index ["idestabelecimento"], name: "idx_kardexfiscal_idestabelecimento", using: :btree
    t.index ["idproduto"], name: "idx_kardexfiscal_idproduto", using: :btree
    t.index ["idreferenciaproduto"], name: "idx_kardexfiscal_idreferenciaproduto", using: :btree
    t.index ["tipomovimentofiscal"], name: "idx_kardexfiscal_tipomovimentofiscal", using: :btree
  end

  create_table "t_kitproduto", primary_key: "idkitproduto", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 255
    t.string  "nome",      limit: 255
    t.integer "idusuario"
  end

  create_table "t_kitprodutoitem", primary_key: "idkitprodutoitem", id: :integer, force: :cascade do |t|
    t.string  "status",                  limit: 255
    t.float   "percentualrepresentacao",             null: false
    t.float   "quantidade",                          null: false
    t.bigint  "idproduto"
    t.integer "idkitproduto"
  end

  create_table "t_lancamentoadiantamentonormal", primary_key: "idlancamentoadiantamentonormal", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 1, null: false
    t.integer "idadiantamento"
  end

  create_table "t_lancamentoconta", primary_key: "idlancamentoconta", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.string   "descricao",              limit: 255
    t.integer  "codigoentidadeoperacao",             null: false
    t.string   "conciliado",             limit: 255
    t.datetime "data"
    t.datetime "dataconciliacao"
    t.datetime "datadelecao"
    t.datetime "datavisto"
    t.string   "numerodocumento",        limit: 255
    t.string   "observacao",             limit: 255
    t.integer  "operacao",                           null: false
    t.float    "saldo"
    t.float    "saldoconciliado"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idusuariovisto"
    t.integer  "idusuarioconciliacao"
    t.integer  "idconta"
    t.integer  "idusuariodelecao"
    t.integer  "idusuario"
    t.index ["conciliado"], name: "idx_lancamentoconta_conciliado", using: :btree
    t.index ["data"], name: "idx_lancamentoconta_data", using: :btree
    t.index ["dataconciliacao"], name: "idx_lancamentoconta_dataconciliacao", using: :btree
    t.index ["idconta"], name: "idx_lancamentoconta_idconta", using: :btree
    t.index ["status"], name: "idx_lancamentoconta_status", using: :btree
    t.index ["tipo"], name: "idx_lancamentoconta_tipo", using: :btree
  end

  create_table "t_lancamentocontahistorico", primary_key: "idlancamentocontahistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idusuario"
    t.integer  "idlancamentoconta"
  end

  create_table "t_lancamentocontratofinanceira", primary_key: "idlancamentocontratofinanceira", id: :integer, force: :cascade do |t|
    t.string   "status",               limit: 1, null: false
    t.datetime "dataemissao"
    t.datetime "datavencimento"
    t.float    "valorbruto"
    t.float    "valorliquido"
    t.integer  "idcontratofinanceira"
    t.integer  "idestabelecimento"
    t.integer  "idconta"
  end

  create_table "t_lancamentocorretorvendas", primary_key: "idlancamentocorretorvendas", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.string   "descricao",              limit: 255
    t.integer  "codigoentidadeoperacao",             null: false
    t.datetime "data"
    t.string   "observacao",             limit: 255
    t.integer  "operacao",                           null: false
    t.float    "saldo"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idusuario"
    t.integer  "idestabelecimento"
    t.integer  "idcorretorvendas"
    t.index ["idcorretorvendas"], name: "idx_lancamentocorretorvendas_idcorretorvendas", using: :btree
    t.index ["tipo"], name: "idx_lancamentocorretorvendas_tipo", using: :btree
  end

  create_table "t_lancamentocorretorvendasdespesa", primary_key: "idlancamentocorretorvendasdespesa", id: :integer, force: :cascade do |t|
    t.integer "iddespesa"
    t.integer "idlancamentocorretorvendas"
  end

  create_table "t_lancamentoipi", primary_key: "idlancamentoipi", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "datacadastro"
    t.datetime "datapagamento"
    t.string   "descricao",              limit: 255
    t.text     "observacao"
    t.integer  "tipo",                               null: false
    t.float    "valor",                              null: false
    t.integer  "idusuariopagamento"
    t.integer  "idnotafiscaleletronica"
    t.integer  "iddespesadepagamento"
    t.integer  "idusuariocadastro"
  end

  create_table "t_lancamentolote", primary_key: "idlancamentolote", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 1, null: false
    t.datetime "dataemissao"
    t.datetime "datavencimento"
    t.float    "novovalor"
    t.integer  "parcela"
    t.float    "valorbruto"
    t.float    "valorliquido"
    t.integer  "idredecartao"
    t.integer  "idestabelecimento"
    t.integer  "idoperadoracartao"
    t.integer  "idconta"
    t.integer  "idlote"
    t.index ["dataemissao"], name: "idx_lancamentolote_dataemissao", using: :btree
    t.index ["datavencimento"], name: "idx_lancamentolote_datavencimento", using: :btree
    t.index ["idestabelecimento"], name: "idx_lancamentolote_idestabelecimento", using: :btree
    t.index ["idlote"], name: "idx_lancamentolote_idlote", using: :btree
    t.index ["idredecartao"], name: "idx_lancamentolote_idredecartao", using: :btree
    t.index ["status"], name: "idx_lancamentolote_status", using: :btree
  end

  create_table "t_limitedecredito", primary_key: "idlimitedecredito", id: :integer, force: :cascade do |t|
    t.string   "status",                  limit: 1,   null: false
    t.string   "autorizadopeladiretoria", limit: 255
    t.datetime "data"
    t.string   "observacao",              limit: 255
    t.float    "valor",                               null: false
    t.integer  "idusuario"
    t.integer  "idcliente"
    t.index ["data"], name: "idx_limitedecredito_data", using: :btree
    t.index ["idcliente"], name: "idx_limitedecredito_idcliente", using: :btree
    t.index ["status"], name: "idx_limitedecredito_status", using: :btree
  end

  create_table "t_listaevento", primary_key: "idlistaevento", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 1,   null: false
    t.datetime "dataevento"
    t.string   "local",             limit: 255
    t.string   "maenoiva",          limit: 255
    t.string   "maenoivo",          limit: 255
    t.string   "noiva",             limit: 255
    t.string   "noivo",             limit: 255
    t.string   "painoiva",          limit: 255
    t.string   "painoivo",          limit: 255
    t.string   "telefone",          limit: 255
    t.integer  "idtipolistaevento"
    t.integer  "idcliente"
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
  end

  create_table "t_locatarioresponsavelfuncao", primary_key: "idlocatarioresponsavelfuncao", id: :integer, force: :cascade do |t|
    t.string  "descricao", limit: 255
    t.integer "status"
  end

  create_table "t_lote", primary_key: "idlote", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.string   "conferencia",            limit: 255
    t.datetime "datacancelamento"
    t.datetime "dataemissao"
    t.bigint   "datatransacao",                      null: false
    t.bigint   "horatransacao",                      null: false
    t.bigint   "identificacao",                      null: false
    t.bigint   "numeroparcelas",                     null: false
    t.bigint   "numerotransacao",                    null: false
    t.string   "rede",                   limit: 255
    t.string   "redeprocessadora",       limit: 255
    t.bigint   "tipoparcelamento",                   null: false
    t.bigint   "tipotransacao",                      null: false
    t.float    "valorbruto"
    t.integer  "idrecebimentonaofiscal"
    t.integer  "idusuario"
    t.integer  "idpagamentotitulo"
    t.integer  "idestabelecimento"
    t.integer  "idplanooperadoracartao"
    t.integer  "idvenda"
    t.integer  "idusuariocancelamento"
    t.index ["dataemissao"], name: "idx_lote_dataemissao", using: :btree
    t.index ["idestabelecimento"], name: "idx_lote_idestabelecimento", using: :btree
    t.index ["idplanooperadoracartao"], name: "idx_lote_idplanooperadoracartao", using: :btree
    t.index ["idvenda"], name: "idx_lote_idvenda", using: :btree
    t.index ["numerotransacao"], name: "idx_lote_numerotransacao", using: :btree
    t.index ["status"], name: "idx_lote_status", using: :btree
  end

  create_table "t_lotecheque", primary_key: "idlotecheque", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.float    "valor"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuariocadastro"
  end

  create_table "t_lotedespesa", primary_key: "idlotedespesa", id: :integer, force: :cascade do |t|
    t.string   "status",      limit: 255
    t.datetime "datacriacao"
  end

  create_table "t_lotedespesaitem", primary_key: "idlotedespesaitem", id: :integer, force: :cascade do |t|
    t.string  "status",        limit: 255
    t.integer "iddespesa"
    t.integer "idlotedespesa"
  end

  create_table "t_loteduplicata", primary_key: "idloteduplicata", id: :integer, force: :cascade do |t|
    t.string   "status",      limit: 255
    t.datetime "datacriacao"
  end

  create_table "t_loteduplicataitem", primary_key: "idloteduplicataitem", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 255
    t.integer "idloteduplicata"
    t.integer "idduplicatapagar"
  end

  create_table "t_loteduplicatapagar", primary_key: "idloteduplicatapagar", id: :integer, force: :cascade do |t|
    t.string  "status",                        limit: 255
    t.date    "datacadastro"
    t.date    "datacancelamento"
    t.date    "dataconfirmacaopagamento"
    t.integer "idusuariocancelamento"
    t.integer "idusuarioconfirmacaopagamento"
    t.integer "idlojapagamento"
    t.integer "idusuariocadastrar"
  end

  create_table "t_lotenfe", primary_key: "idlotenfe", id: :integer, force: :cascade do |t|
  end

  create_table "t_maquina", primary_key: "idmaquina", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "descricao",             limit: 255
    t.string   "codigomaquina",         limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idaplicacaomaquina"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_marca", primary_key: "idmarca", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_marcafornecedor", primary_key: "idmarcafornecedor", id: :integer, force: :cascade do |t|
    t.integer "idfornecedor"
    t.integer "idmarca"
  end

  create_table "t_material", primary_key: "idmaterial", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_mensagemusuario", primary_key: "idmensagemusuario", id: :integer, force: :cascade do |t|
    t.string   "assunto",             limit: 255
    t.datetime "dataenvio"
    t.datetime "dataleitura"
    t.string   "lida",                limit: 255
    t.text     "mensagem"
    t.integer  "tipo",                            null: false
    t.string   "versaofl",            limit: 255
    t.integer  "usuariodestinatario"
    t.integer  "usuarioremetente"
  end

  create_table "t_mercadoriaemestoque", primary_key: "idmercadoriaemestoque", id: :bigint, force: :cascade do |t|
    t.float    "aliquota",                       null: false
    t.bigint   "codigoproduto",                  null: false
    t.datetime "data"
    t.string   "descricao",          limit: 255
    t.string   "hash",               limit: 255
    t.string   "hashe3",             limit: 255
    t.string   "iat",                limit: 255
    t.string   "ippt",               limit: 255
    t.string   "numerofabricacao",   limit: 255
    t.float    "quantidade",                     null: false
    t.string   "situacaotributaria", limit: 255
    t.string   "status",             limit: 255
    t.string   "unidade",            limit: 255
    t.float    "valor",                          null: false
    t.integer  "idpafecf"
    t.bigint   "idproduto"
    t.integer  "idestabelecimento"
  end

  create_table "t_metaestabelecimentodiaria", primary_key: "idmetaestabelecimentodiaria", id: :integer, force: :cascade do |t|
    t.string   "status",                      limit: 1,   null: false
    t.datetime "data"
    t.float    "metaalvo",                                null: false
    t.string   "metadiariadistribuida",       limit: 255
    t.float    "metaminima",                              null: false
    t.float    "percentual"
    t.integer  "idmetaestabelecimentomensal"
  end

  create_table "t_metaestabelecimentomensal", primary_key: "idmetaestabelecimentomensal", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 255
    t.integer "ano",                           null: false
    t.integer "mes",                           null: false
    t.float   "metaalvo"
    t.float   "metaminima"
    t.integer "idestabelecimento"
  end

  create_table "t_metaestabelecimentomensalhistorico", primary_key: "idmetaestabelecimentomensalhistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                      limit: 255
    t.integer  "idusuario"
    t.integer  "idmetaestabelecimentomensal"
  end

  create_table "t_metavendedor", primary_key: "idmetavendedor", id: :integer, force: :cascade do |t|
    t.integer "idmetaestabelecimentodiaria"
  end

  create_table "t_modelocampo", primary_key: "idmodelocampo", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 1,   null: false
    t.string  "descricao",        limit: 255
    t.string  "exibenorelatorio", limit: 255
    t.string  "tipo",             limit: 255
    t.integer "idmodelofase"
  end

  create_table "t_modelofase", primary_key: "idmodelofase", id: :integer, force: :cascade do |t|
    t.string  "status",                            limit: 1,   null: false
    t.string  "descricao",                         limit: 255
    t.string  "observacao",                        limit: 255
    t.string  "tipo",                              limit: 255
    t.string  "tipointermediaria",                 limit: 255
    t.integer "idmodeloprocessofabricacaointerno"
  end

  create_table "t_modelofaseanterior", primary_key: "idmodelofaseanterior", id: :integer, force: :cascade do |t|
    t.string  "principal",      limit: 255
    t.integer "idmodelofase"
    t.integer "idfaseanterior"
  end

  create_table "t_modelofaseposterior", primary_key: "idmodelofaseposterior", id: :integer, force: :cascade do |t|
    t.string  "principal",       limit: 255
    t.integer "idmodelofase"
    t.integer "idfaseposterior"
  end

  create_table "t_modeloprocessofabricacaointerno", primary_key: "idmodeloprocessofabricacaointerno", id: :integer, force: :cascade do |t|
    t.string   "status",               limit: 1,   null: false
    t.datetime "data"
    t.datetime "dataalteracao"
    t.string   "descricao",            limit: 255
    t.integer  "quantidademodelofase"
    t.integer  "idusuarioalteracao"
    t.integer  "idusuario"
  end

  create_table "t_montagemkitproduto", primary_key: "idmontagemkitproduto", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 255
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.integer  "idnfeentrada"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuariocadastro"
    t.integer  "idnfesaida"
    t.integer  "idreferenciaprodutokit"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioalteracao"
  end

  create_table "t_motivoalterarfatura", primary_key: "idmotivoalterarfatura", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_motivocancelarfatura", primary_key: "idmotivocancelarfatura", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_motivotroca", primary_key: "idmotivotroca", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,   null: false
    t.string  "descricao", limit: 255
    t.integer "tipo"
  end

  create_table "t_movcaixapagamdespesa", primary_key: "idmovcaixapagamdespesa", id: :integer, force: :cascade do |t|
    t.integer "idmovimentacaocaixa"
    t.integer "idpagamentodespesa"
  end

  create_table "t_movimentacaocaixa", primary_key: "idmovimentacaocaixa", id: :integer, force: :cascade do |t|
    t.string   "conferencia",          limit: 255
    t.datetime "data"
    t.string   "observacao",           limit: 255
    t.integer  "operacao",                         null: false
    t.string   "tipo",                 limit: 255
    t.float    "valor"
    t.bigint   "idcaixa"
    t.integer  "idusuario"
    t.integer  "idusuarioautorizacao"
    t.integer  "idcliente"
    t.integer  "idconta"
    t.index ["idcaixa"], name: "idx_movimentacaocaixa_idcaixa", using: :btree
  end

  create_table "t_movimentacaoconta", primary_key: "idmovimentacaoconta", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "observacao",              limit: 255
    t.float    "valor"
    t.integer  "idcontaorigem"
    t.integer  "idcompensacaocheque"
    t.integer  "idcontadestino"
    t.integer  "idtipomovimentacaoconta"
    t.integer  "idusuario"
  end

  create_table "t_movimentacaoestoque", primary_key: "idmovimentacaoestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                          limit: 1,                   null: false
    t.boolean  "calculadopreco",                              default: false
    t.datetime "dataautorizacao"
    t.datetime "dataautorizacaorecebimento"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.datetime "datarecebimento"
    t.string   "observacao",                      limit: 255
    t.integer  "idusuariorecebimento"
    t.integer  "idusuarioautorizacaorecebimento"
    t.integer  "idestabelecimentoorigem"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimentodestino"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioautorizacao"
  end

  create_table "t_movimentacaoestoqueenviada", primary_key: "idmovimentacaoestoqueenviada", id: :integer, force: :cascade do |t|
    t.float   "precoemissaonota"
    t.float   "quantidadeenvio"
    t.bigint  "idproduto"
    t.integer "idprodutoagregado"
    t.integer "idmovimentacaoestoque"
  end

  create_table "t_movimentacaoestoquerecebida", primary_key: "idmovimentacaoestoquerecebida", id: :integer, force: :cascade do |t|
    t.float   "quantidadefaltante"
    t.float   "quantidaderecebida"
    t.string  "temculpa",              limit: 255
    t.bigint  "idproduto"
    t.integer "idmovimentacaoestoque"
    t.integer "idprodutoagregado"
  end

  create_table "t_movimentacaoestoquereservamercadoria", primary_key: "idmovimentacaoestoquereservamercadoria", id: :integer, force: :cascade do |t|
    t.integer "idmovimentacaoestoque"
    t.integer "idreservamercadoria"
  end

  create_table "t_movimentacaoestoquesetor", primary_key: "idmovimentacaoestoquesetor", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.datetime "dataautorizacao"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.datetime "datarecebimento"
    t.string   "observacao",            limit: 255
    t.integer  "idestabelecimento"
    t.integer  "idusuarioautorizacao"
    t.integer  "idsetordestino"
    t.integer  "idusuariocadastro"
    t.integer  "idsetororigem"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuariorecebimento"
  end

  create_table "t_movimentacaoestoquesetoritemenviado", primary_key: "idmovimentacaoestoquesetoritemenviado", id: :integer, force: :cascade do |t|
    t.float   "quantidadeenvio"
    t.integer "idmovimentacaoestoquesetor"
    t.integer "idprodutoagregado"
    t.bigint  "idproduto"
  end

  create_table "t_movimentacaoestoquesetoritemrecebido", primary_key: "idmovimentacaoestoquesetoritemrecebido", id: :integer, force: :cascade do |t|
    t.float   "quantidaderecebido"
    t.bigint  "idproduto"
    t.integer "idmovimentacaoestoquesetor"
    t.integer "idprodutoagregado"
  end

  create_table "t_mudancaportador", primary_key: "idmudancaportador", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "descricao",             limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.string   "tipomudanca",           limit: 255
    t.integer  "idusuario"
    t.integer  "idportadornovo"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_mudancaportadoritem", primary_key: "idmudancaportadoritem", id: :integer, force: :cascade do |t|
    t.integer "codigotitulo",                  null: false
    t.string  "tipotitulo",        limit: 255
    t.integer "idportadorantigo"
    t.integer "idmudancaportador"
  end

  create_table "t_municipio", primary_key: "idmunicipio", id: :integer, force: :cascade do |t|
    t.string  "nome",     limit: 255
    t.integer "iduf"
    t.integer "idregiao"
  end

  create_table "t_naturezadaoperacao", primary_key: "idnaturezadaoperacao", id: :integer, force: :cascade do |t|
    t.string  "status",                limit: 1,   null: false
    t.string  "descricao",             limit: 255
    t.string  "atualizakardexfiscal",  limit: 255
    t.string  "cfop",                  limit: 4,   null: false
    t.string  "cst",                   limit: 3,   null: false
    t.string  "cstsimples",            limit: 3,   null: false
    t.string  "exibeimpostosnanota",   limit: 255
    t.text    "mensagemadicional"
    t.string  "naturezaexibidananota", limit: 60,  null: false
    t.string  "tipodepreco",           limit: 1
    t.integer "tipomovimentofiscal"
    t.string  "tributapiscofins",      limit: 255
  end

  create_table "t_nog", primary_key: "idnog", id: :integer, force: :cascade do |t|
    t.integer  "idintegerchavenog"
    t.bigint   "idlongchavenog"
    t.datetime "data"
    t.string   "descricao",         limit: 255
    t.string   "nomeclasse",        limit: 255
    t.integer  "idusuario"
  end

  create_table "t_notafiscaleletronica", primary_key: "idnotafiscaleletronica", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,                            null: false
    t.string   "necf",                         limit: 255
    t.string   "bairrocliente",                limit: 255
    t.float    "baseissqn",                                                         null: false
    t.string   "carnesalterados",              limit: 255
    t.string   "cepcliente",                   limit: 255
    t.string   "chaveacessonfe",               limit: 255
    t.string   "chavenfe",                     limit: 255
    t.string   "chavenotafiscalreferenciada",  limit: 255
    t.string   "codigoantt",                   limit: 255
    t.integer  "codigomunicipiocliente",                                            null: false
    t.integer  "codigomunicipioemissor",                                            null: false
    t.integer  "codigonaturezadaoperacao",                                          null: false
    t.integer  "codigoufcliente",                                                   null: false
    t.integer  "codigoufemissor",                                                   null: false
    t.string   "complementoenderecocliente",   limit: 255
    t.string   "coo",                          limit: 255
    t.string   "cpfcnpjcliente",               limit: 255
    t.string   "cpfcnpjtransportadora",        limit: 255
    t.text     "dadosadicionais"
    t.string   "danfe",                        limit: 255
    t.datetime "datacadastro"
    t.datetime "dataemissao"
    t.datetime "datarecebimento"
    t.datetime "datasaida"
    t.float    "desconto",                                                          null: false
    t.string   "enderecocliente",              limit: 255
    t.string   "enderecotransportadora",       limit: 255
    t.string   "especietransportada",          limit: 255
    t.string   "faturas",                      limit: 255
    t.integer  "finalidade",                                                        null: false
    t.string   "fonecliente",                  limit: 255
    t.integer  "formadeemissao",                                                    null: false
    t.integer  "freteporconta",                                                     null: false
    t.string   "horasaida",                    limit: 255
    t.float    "icmssubstituto",                                                    null: false
    t.string   "id",                           limit: 255
    t.integer  "indfinal"
    t.text     "informacoesadicionais"
    t.string   "insestsubsttributario",        limit: 255
    t.string   "inscriestadualtransportadora", limit: 255
    t.string   "inscricaoestadualcliente",     limit: 255
    t.string   "inscricaomunicipal",           limit: 255
    t.string   "justificativacancelamento",    limit: 255
    t.string   "marcatransportada",            limit: 255
    t.string   "mensagem",                     limit: 255
    t.string   "modelo",                       limit: 255
    t.string   "municipiocliente",             limit: 255
    t.string   "municipiotransportadora",      limit: 255
    t.string   "naturezadaoperacao",           limit: 255
    t.string   "nomecliente",                  limit: 255
    t.string   "nometransportadora",           limit: 255
    t.string   "numeroenderecocliente",        limit: 255
    t.string   "numerolote",                   limit: 255
    t.string   "numeronotadevolvida",          limit: 255
    t.bigint   "numeronotafiscal",                                                  null: false
    t.string   "numeroprotocolo",              limit: 255
    t.string   "numeroregdpec",                limit: 255
    t.string   "numerotransportado",           limit: 255
    t.float    "outrasdespesas",                                                    null: false
    t.string   "pesobrutotransportado",        limit: 255
    t.string   "pesoliquidotransportado",      limit: 255
    t.string   "placaveiculo",                 limit: 255
    t.string   "quantidadetransportada",       limit: 255
    t.string   "recibo",                       limit: 255
    t.string   "resultado",                    limit: 255
    t.string   "serie",                        limit: 255
    t.integer  "tipo",                                                              null: false
    t.integer  "tipoavulsa",                                                        null: false
    t.integer  "tipopagamento",                                                     null: false
    t.string   "tiposaida",                    limit: 255
    t.string   "ufcliente",                    limit: 255
    t.string   "uftransportadora",             limit: 255
    t.string   "ufveiculo",                    limit: 255
    t.decimal  "vfcpufdest",                               precision: 19, scale: 2
    t.decimal  "vicmsufdest",                              precision: 19, scale: 2
    t.decimal  "vicmsufremet",                             precision: 19, scale: 2
    t.float    "valorbaseicms",                                                     null: false
    t.float    "valorbaseicmssubstituto",                                           null: false
    t.float    "valorfrete",                                                        null: false
    t.float    "valorissqn",                                                        null: false
    t.float    "valoricms",                                                         null: false
    t.float    "valoricmssubstituto",                                               null: false
    t.float    "valorseguro",                                                       null: false
    t.float    "valortotalcofins",                                                  null: false
    t.float    "valortotalipi",                                                     null: false
    t.float    "valortotalnota",                                                    null: false
    t.float    "valortotalpis",                                                     null: false
    t.float    "valortotalprodutos",                                                null: false
    t.float    "valortotalservicos",                                                null: false
    t.integer  "idmontagemkitproduto"
    t.integer  "idmovimentacaoestoque"
    t.integer  "idestabelecimento"
    t.integer  "idfornecedor"
    t.integer  "idusuariocadastro"
    t.integer  "idrecebimentoentrada"
    t.integer  "idremessaavenda"
    t.integer  "iddesmontagemkitproduto"
    t.integer  "idcliente"
    t.integer  "idprocessodefabricacao"
    t.integer  "idrecebimentosaida"
    t.integer  "idcancelamentonfe"
    t.integer  "idrecebimento"
    t.index ["codigonaturezadaoperacao"], name: "idx_notafiscaleletronica_codigonaturezadaoperacao", using: :btree
    t.index ["cpfcnpjcliente"], name: "idx_notafiscaleletronica_cpfcnpjcliente", using: :btree
    t.index ["dataemissao"], name: "idx_notafiscaleletronica_dataemissao", using: :btree
    t.index ["idcliente"], name: "idx_notafiscaleletronica_idcliente", using: :btree
    t.index ["idestabelecimento"], name: "idx_notafiscaleletronica_idestabelecimento", using: :btree
    t.index ["nomecliente"], name: "idx_notafiscaleletronica_nomecliente", using: :btree
    t.index ["numeronotafiscal"], name: "idx_notafiscaleletronica_numeronotafiscal", using: :btree
    t.index ["serie"], name: "idx_notafiscaleletronica_serie", using: :btree
    t.index ["status"], name: "idx_notafiscaleletronica_status", using: :btree
  end

  create_table "t_notafiscalemitidafaseprocessodefabricacao", primary_key: "idnotafiscalemitidafaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.integer "idfaseprocessodefabricacao"
    t.integer "idnotafiscaleletronica"
  end

  create_table "t_notafiscalentrada", primary_key: "idnotafiscalentrada", id: :integer, force: :cascade do |t|
    t.string   "status",          limit: 255
    t.binary   "arquivo"
    t.string   "chnfe",           limit: 255
    t.datetime "demi"
    t.datetime "dsaient"
    t.string   "dadosadicionais", limit: 2000
    t.string   "dhcont",          limit: 255
    t.string   "hsaient",         limit: 255
    t.string   "iddest",          limit: 255
    t.string   "indfinal",        limit: 255
    t.string   "indpag",          limit: 255
    t.string   "indpres",         limit: 255
    t.string   "natop",           limit: 255
    t.string   "nnf",             limit: 255
    t.string   "nomearquivo",     limit: 255
    t.string   "serie",           limit: 255
    t.string   "tpnf",            limit: 255
    t.string   "versaoleiaute",   limit: 255
    t.index ["nnf"], name: "idx_notafiscalentrada_nnf", using: :btree
    t.index ["status"], name: "idx_notafiscalentrada_status", using: :btree
  end

  create_table "t_notafiscalentradadestinatario", primary_key: "idnotafiscalentradadestinatario", id: :integer, force: :cascade do |t|
    t.string  "cep",                 limit: 255
    t.string  "cpfcnpj",             limit: 255
    t.string  "email",               limit: 255
    t.string  "fone",                limit: 255
    t.string  "idestrangeiro",       limit: 255
    t.string  "ie",                  limit: 255
    t.string  "im",                  limit: 255
    t.string  "indiedest",           limit: 255
    t.string  "nro",                 limit: 255
    t.string  "uf",                  limit: 255
    t.string  "xbairro",             limit: 255
    t.string  "xcpl",                limit: 255
    t.string  "xlgr",                limit: 255
    t.string  "xmun",                limit: 255
    t.string  "xnome",               limit: 255
    t.string  "xpais",               limit: 255
    t.integer "idestabelecimento"
    t.integer "idnotafiscalentrada"
  end

  create_table "t_notafiscalentradaduplicata", primary_key: "idnotafiscalentradaduplicata", id: :integer, force: :cascade do |t|
    t.datetime "dvenc"
    t.string   "ndup",                limit: 255
    t.float    "vdup"
    t.integer  "idnotafiscalentrada"
  end

  create_table "t_notafiscalentradaemitente", primary_key: "idnotafiscalentradaemitente", id: :integer, force: :cascade do |t|
    t.string  "cep",                 limit: 255
    t.string  "cmun",                limit: 255
    t.string  "cpfcnpj",             limit: 255
    t.string  "cuf",                 limit: 255
    t.string  "fone",                limit: 255
    t.string  "ie",                  limit: 255
    t.string  "iest",                limit: 255
    t.string  "im",                  limit: 255
    t.string  "nro",                 limit: 255
    t.string  "uf",                  limit: 255
    t.string  "xbairro",             limit: 255
    t.string  "xcpl",                limit: 255
    t.string  "xfant",               limit: 255
    t.string  "xlgr",                limit: 255
    t.string  "xmun",                limit: 255
    t.string  "xnome",               limit: 255
    t.string  "xpais",               limit: 255
    t.integer "idnotafiscalentrada"
    t.integer "idfornecedor"
    t.index ["cpfcnpj"], name: "idx_notafiscalentradaemitente_cpfcnpj", using: :btree
    t.index ["xnome"], name: "idx_notafiscalentradaemitente_nome", using: :btree
  end

  create_table "t_notafiscalentradafaseprocessodefabricacao", primary_key: "idnotafiscalentradafaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.integer "idnotafiscalentrada"
    t.integer "idfaseprocessodefabricacao"
  end

  create_table "t_notafiscalentradafrete", primary_key: "idnotafiscalentradafrete", id: :integer, force: :cascade do |t|
    t.string  "cpfcnpj",             limit: 255
    t.string  "esp",                 limit: 255
    t.string  "ie",                  limit: 255
    t.string  "marca",               limit: 255
    t.string  "modfrete",            limit: 255
    t.string  "nvol",                limit: 255
    t.string  "pesob",               limit: 255
    t.string  "pesol",               limit: 255
    t.string  "placa",               limit: 255
    t.string  "placauf",             limit: 255
    t.string  "qvol",                limit: 255
    t.string  "uf",                  limit: 255
    t.string  "xender",              limit: 255
    t.string  "xmun",                limit: 255
    t.string  "xnome",               limit: 255
    t.integer "idnotafiscalentrada"
  end

  create_table "t_notafiscalentradahistorico", primary_key: "idnotafiscalentradahistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",              limit: 255
    t.integer  "idnotafiscalentrada"
    t.integer  "idusuario"
  end

  create_table "t_notafiscalentradaimposto", primary_key: "idnotafiscalentradaimposto", id: :integer, force: :cascade do |t|
    t.float   "vdesc"
    t.float   "vfrete"
    t.float   "voutro"
    t.float   "vprod"
    t.float   "vseg"
    t.float   "vbc"
    t.float   "vbcst"
    t.float   "vcofins"
    t.float   "vicms"
    t.float   "vii"
    t.float   "vipi"
    t.float   "vnf"
    t.float   "vpis"
    t.float   "vst"
    t.integer "idnotafiscalentrada"
  end

  create_table "t_notafiscalentradaproduto", primary_key: "idnotafiscalentradaproduto", id: :integer, force: :cascade do |t|
    t.decimal "aliquotaicms",                    precision: 19, scale: 7, default: "0.0"
    t.decimal "aliquotaicmsst",                  precision: 19, scale: 7
    t.decimal "aliquotaipi",                     precision: 19, scale: 7, default: "0.0"
    t.string  "cean",                limit: 255
    t.string  "cprod",               limit: 255
    t.string  "cest",                limit: 255
    t.string  "cfop",                limit: 255
    t.string  "nfci",                limit: 255
    t.integer "nitem"
    t.string  "ncm",                 limit: 255
    t.decimal "qcom",                            precision: 19, scale: 7, default: "0.0"
    t.string  "situacaotrib",        limit: 255
    t.integer "tipomovimentofiscal"
    t.string  "ucom",                limit: 255
    t.decimal "vdesc",                           precision: 19, scale: 7, default: "0.0"
    t.decimal "vprod",                           precision: 19, scale: 7, default: "0.0"
    t.decimal "vuncom",                          precision: 19, scale: 7, default: "0.0"
    t.decimal "valoricms",                       precision: 19, scale: 7
    t.decimal "valoricmsst",                     precision: 19, scale: 7
    t.decimal "valortotalipi",                   precision: 19, scale: 7, default: "0.0"
    t.string  "xprod",               limit: 255
    t.integer "idnotafiscalentrada"
  end

  create_table "t_notafiscalmodelo1", primary_key: "idnotafiscalmodelo1", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,   null: false
    t.string   "necf",                         limit: 255
    t.binary   "arquivo"
    t.string   "bairrocliente",                limit: 255
    t.float    "baseissqn",                                null: false
    t.string   "cepcliente",                   limit: 255
    t.string   "cfop",                         limit: 255
    t.string   "chaveacessonfe",               limit: 255
    t.string   "chavenfe",                     limit: 255
    t.string   "codigoantt",                   limit: 255
    t.integer  "codigomunicipiocliente",                   null: false
    t.integer  "codigomunicipioemissor",                   null: false
    t.integer  "codigoufcliente",                          null: false
    t.integer  "codigoufemissor",                          null: false
    t.string   "complementoenderecocliente",   limit: 255
    t.string   "coo",                          limit: 255
    t.string   "cpfcnpjcliente",               limit: 255
    t.string   "cpfcnpjtransportadora",        limit: 255
    t.string   "dadosadicionais",              limit: 255
    t.string   "danfe",                        limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.datetime "dataemissao"
    t.datetime "datasaida"
    t.float    "desconto",                                 null: false
    t.string   "enderecocliente",              limit: 255
    t.string   "enderecotransportadora",       limit: 255
    t.string   "especietransportada",          limit: 255
    t.string   "faturas",                      limit: 255
    t.integer  "finalidade",                               null: false
    t.string   "fonecliente",                  limit: 255
    t.integer  "formadeemissao",                           null: false
    t.integer  "freteporconta",                            null: false
    t.string   "horasaida",                    limit: 255
    t.float    "icmssubstituto",                           null: false
    t.string   "id",                           limit: 255
    t.string   "insestsubsttributario",        limit: 255
    t.string   "inscriestadualtransportadora", limit: 255
    t.string   "inscricaoestadualcliente",     limit: 255
    t.string   "inscricaomunicipal",           limit: 255
    t.string   "justificativacancelamento",    limit: 255
    t.string   "marcatransportada",            limit: 255
    t.string   "mensagem",                     limit: 255
    t.string   "municipiocliente",             limit: 255
    t.string   "municipiotransportadora",      limit: 255
    t.string   "naturezadaoperacao",           limit: 255
    t.string   "nomecliente",                  limit: 255
    t.string   "nometransportadora",           limit: 255
    t.string   "numeroenderecocliente",        limit: 255
    t.string   "numerolote",                   limit: 255
    t.string   "numeronotadevolvida",          limit: 255
    t.bigint   "numeronotafiscal",                         null: false
    t.string   "numeroprotocolo",              limit: 255
    t.string   "numeroregdpec",                limit: 255
    t.string   "numeroselofiscal",             limit: 255
    t.string   "numerotransportado",           limit: 255
    t.float    "outrasdespesas",                           null: false
    t.string   "pesobrutotransportado",        limit: 255
    t.string   "pesoliquidotransportado",      limit: 255
    t.string   "placaveiculo",                 limit: 255
    t.string   "quantidadetransportada",       limit: 255
    t.string   "recibo",                       limit: 255
    t.string   "resultado",                    limit: 255
    t.string   "serie",                        limit: 255
    t.integer  "tipo",                                     null: false
    t.integer  "tipoavulsa",                               null: false
    t.integer  "tipopagamento",                            null: false
    t.string   "tiposaida",                    limit: 255
    t.string   "ufcliente",                    limit: 255
    t.string   "uftransportadora",             limit: 255
    t.string   "ufveiculo",                    limit: 255
    t.float    "valorbaseicms",                            null: false
    t.float    "valorbaseicmssubstituto",                  null: false
    t.float    "valorfrete",                               null: false
    t.float    "valorissqn",                               null: false
    t.float    "valoricms",                                null: false
    t.float    "valoricmssubstituto",                      null: false
    t.float    "valorseguro",                              null: false
    t.float    "valortotalcofins",                         null: false
    t.float    "valortotalipi",                            null: false
    t.float    "valortotalnota",                           null: false
    t.float    "valortotalpis",                            null: false
    t.float    "valortotalprodutos",                       null: false
    t.float    "valortotalservicos",                       null: false
    t.binary   "venda"
    t.integer  "idcancelamentonfe"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocadastro"
    t.integer  "idremessaavenda"
    t.integer  "idcliente"
    t.integer  "idorcamento"
  end

  create_table "t_notafiscalmodelo1serie1", primary_key: "idnotafiscalmodelo1serie1", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,   null: false
    t.string   "necf",                         limit: 255
    t.string   "bairrocliente",                limit: 255
    t.float    "baseissqn",                                null: false
    t.string   "cepcliente",                   limit: 255
    t.string   "cfop",                         limit: 255
    t.string   "chaveacessonfe",               limit: 255
    t.string   "chavenfe",                     limit: 255
    t.string   "codigoantt",                   limit: 255
    t.integer  "codigomunicipiocliente",                   null: false
    t.integer  "codigomunicipioemissor",                   null: false
    t.integer  "codigoufcliente",                          null: false
    t.integer  "codigoufemissor",                          null: false
    t.string   "complementoenderecocliente",   limit: 255
    t.string   "coo",                          limit: 255
    t.string   "cpfcnpjcliente",               limit: 255
    t.string   "cpfcnpjtransportadora",        limit: 255
    t.string   "dadosadicionais",              limit: 255
    t.string   "danfe",                        limit: 255
    t.datetime "datacadastro"
    t.datetime "dataemissao"
    t.datetime "datasaida"
    t.float    "desconto",                                 null: false
    t.string   "enderecocliente",              limit: 255
    t.string   "enderecotransportadora",       limit: 255
    t.string   "especietransportada",          limit: 255
    t.string   "faturas",                      limit: 255
    t.integer  "finalidade",                               null: false
    t.string   "fonecliente",                  limit: 255
    t.integer  "formadeemissao",                           null: false
    t.integer  "freteporconta",                            null: false
    t.string   "horasaida",                    limit: 255
    t.float    "icmssubstituto",                           null: false
    t.string   "id",                           limit: 255
    t.string   "insestsubsttributario",        limit: 255
    t.string   "inscriestadualtransportadora", limit: 255
    t.string   "inscricaoestadualcliente",     limit: 255
    t.string   "inscricaomunicipal",           limit: 255
    t.string   "justificativacancelamento",    limit: 255
    t.string   "marcatransportada",            limit: 255
    t.string   "mensagem",                     limit: 255
    t.string   "municipiocliente",             limit: 255
    t.string   "municipiotransportadora",      limit: 255
    t.string   "naturezadaoperacao",           limit: 255
    t.string   "nomecliente",                  limit: 255
    t.string   "nometransportadora",           limit: 255
    t.string   "numeroenderecocliente",        limit: 255
    t.string   "numerolote",                   limit: 255
    t.string   "numeronotadevolvida",          limit: 255
    t.bigint   "numeronotafiscal",                         null: false
    t.string   "numeroprotocolo",              limit: 255
    t.string   "numeroregdpec",                limit: 255
    t.string   "numeroselofiscal",             limit: 255
    t.string   "numerotransportado",           limit: 255
    t.float    "outrasdespesas",                           null: false
    t.string   "pesobrutotransportado",        limit: 255
    t.string   "pesoliquidotransportado",      limit: 255
    t.string   "placaveiculo",                 limit: 255
    t.string   "quantidadetransportada",       limit: 255
    t.string   "recibo",                       limit: 255
    t.string   "resultado",                    limit: 255
    t.string   "serie",                        limit: 255
    t.integer  "tipo",                                     null: false
    t.integer  "tipoavulsa",                               null: false
    t.integer  "tipopagamento",                            null: false
    t.string   "tiposaida",                    limit: 255
    t.string   "ufcliente",                    limit: 255
    t.string   "uftransportadora",             limit: 255
    t.string   "ufveiculo",                    limit: 255
    t.float    "valorbaseicms",                            null: false
    t.float    "valorbaseicmssubstituto",                  null: false
    t.float    "valorfrete",                               null: false
    t.float    "valorissqn",                               null: false
    t.float    "valoricms",                                null: false
    t.float    "valoricmssubstituto",                      null: false
    t.float    "valorseguro",                              null: false
    t.float    "valortotalcofins",                         null: false
    t.float    "valortotalipi",                            null: false
    t.float    "valortotalnota",                           null: false
    t.float    "valortotalpis",                            null: false
    t.float    "valortotalprodutos",                       null: false
    t.float    "valortotalservicos",                       null: false
    t.integer  "idcliente"
    t.integer  "idorcamento"
    t.integer  "idremessaavenda"
    t.integer  "idestabelecimento"
    t.integer  "idcancelamentonfe"
    t.integer  "idusuariocadastro"
    t.integer  "idnotafiscaleletronica"
  end

  create_table "t_notafiscalpaulista", primary_key: "idnotafiscalpaulista", id: :integer, force: :cascade do |t|
    t.string   "status",    limit: 1, null: false
    t.text     "arquivo"
    t.datetime "data"
    t.integer  "idpafecf"
    t.integer  "idusuario"
  end

  create_table "t_notafiscalseried", primary_key: "idnotafiscalseried", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "data"
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.string   "enderecocliente",        limit: 255
    t.string   "nomecliente",            limit: 255
    t.integer  "numero",                             null: false
    t.float    "valordesconto"
    t.float    "valortotal"
    t.integer  "idusuariocancelamento"
    t.integer  "idcliente"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
  end

  create_table "t_notafiscalservico", primary_key: "idnotafiscalservico", id: :integer, force: :cascade do |t|
    t.string  "codigoverificacaonfse", limit: 255
    t.string  "numeronfse",            limit: 255
    t.decimal "valor",                             precision: 19, scale: 2
  end

  create_table "t_notafiscalservicoarquivo", primary_key: "idnotafiscalservicoarquivo", id: :integer, force: :cascade do |t|
    t.binary  "arquivo"
    t.integer "idnotafiscalservico"
  end

  create_table "t_notificacao", primary_key: "idnotificacao", id: :integer, force: :cascade do |t|
    t.string  "status",          limit: 1,   null: false
    t.string  "descricao",       limit: 255
    t.integer "modulo",                      null: false
    t.string  "modulodescricao", limit: 255
    t.integer "operacao",                    null: false
  end

  create_table "t_notificacaousuario", primary_key: "idnotificacaousuario", id: :integer, force: :cascade do |t|
    t.string  "status",                       limit: 1, null: false
    t.integer "idusuario"
    t.integer "idestabelecimentonotificacao"
  end

  create_table "t_numeroserie", primary_key: "idnumeroserie", id: :integer, force: :cascade do |t|
    t.string  "numero",               limit: 255
    t.boolean "seriedefault",                     null: false
    t.integer "idestoquenumeroserie"
    t.index ["numero"], name: "idx_numeroserie_numero", using: :btree
  end

  create_table "t_observacaoduplicatacliente", primary_key: "idobservacaoduplicatacliente", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.integer  "idusuario"
    t.integer  "idcliente"
  end

  create_table "t_ocorrenciadespesa", primary_key: "idocorrenciadespesa", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "ocorrencia", limit: 255
    t.integer  "iddespesa"
    t.integer  "idusuario"
  end

  create_table "t_oficio", primary_key: "idoficio", id: :integer, force: :cascade do |t|
    t.string   "status",       limit: 1,   null: false
    t.integer  "ano",                      null: false
    t.string   "assunto",      limit: 255
    t.string   "att",          limit: 255
    t.datetime "data"
    t.string   "destbairro",   limit: 255
    t.string   "destcep",      limit: 255
    t.string   "destcidade",   limit: 255
    t.string   "destcpfcnpj",  limit: 255
    t.string   "destendereco", limit: 255
    t.string   "destfax",      limit: 255
    t.string   "destfone",     limit: 255
    t.string   "destnome",     limit: 255
    t.string   "destrgie",     limit: 255
    t.text     "dizeres"
    t.string   "emitcargo",    limit: 255
    t.string   "emitcidade",   limit: 255
    t.string   "emitnome",     limit: 255
    t.bigint   "numero",                   null: false
  end

  create_table "t_ofx", primary_key: "idofx", id: :integer, force: :cascade do |t|
    t.binary   "arquivo"
    t.datetime "dataarquivo"
    t.datetime "datacadastro"
    t.datetime "datafinal"
    t.datetime "datainicial"
    t.integer  "idusuariocadastro"
    t.integer  "idconta"
  end

  create_table "t_ofxtransacao", primary_key: "idofxtransacao", id: :integer, force: :cascade do |t|
    t.boolean  "conciliado",                                             null: false
    t.datetime "datacadastro"
    t.datetime "datapostagem"
    t.string   "idtransacao",       limit: 255
    t.string   "memo",              limit: 255
    t.string   "numerochecagem",    limit: 255
    t.string   "tipotransacao",     limit: 255
    t.decimal  "valor",                         precision: 19, scale: 2
    t.integer  "idusuariocadastro"
    t.integer  "idofx"
  end

  create_table "t_operadoracartao", primary_key: "idoperadoracartao", id: :integer, force: :cascade do |t|
    t.string "status",       limit: 1,   null: false
    t.string "descricao",    limit: 255
    t.string "tipobandeira", limit: 255
  end

  create_table "t_orcamento", primary_key: "idorcamento", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,                                            null: false
    t.decimal  "acrescimocondicaopagamento",             precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "acrescimoimposto",                       precision: 10, scale: 2, default: "0.0"
    t.float    "acrescimopercentual"
    t.string   "codigoverificacaonfse",      limit: 255
    t.float    "comissao"
    t.string   "conferido",                  limit: 255
    t.string   "coo",                        limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.datetime "datacancelamentoautomatico"
    t.datetime "datasaidamostruario"
    t.decimal  "descontocondicaopagamento",              precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "descontocontribuinteicms",               precision: 10, scale: 2, default: "0.0", null: false
    t.float    "descontopercentual"
    t.float    "descontovalor"
    t.string   "ecf",                        limit: 255
    t.string   "ehremessa",                  limit: 255
    t.string   "emitidool",                  limit: 255
    t.string   "feitoempdvderemessa",        limit: 255
    t.float    "jurosprazomedio",                                                                 null: false
    t.boolean  "liberadoremotamente",                                                             null: false
    t.string   "nb",                         limit: 255
    t.string   "nomecliente",                limit: 255
    t.string   "numeronfse",                 limit: 255
    t.bigint   "numeroprevenda",                                                                  null: false
    t.string   "observacao",                 limit: 255
    t.string   "observacaocancelamento",     limit: 255
    t.string   "observacaopedidodevenda",    limit: 255
    t.string   "observacaosistema",          limit: 255
    t.string   "perfil",                     limit: 255
    t.decimal  "taxaadicional",                          precision: 10, scale: 2, default: "0.0"
    t.integer  "tempo"
    t.integer  "tipo",                                                                            null: false
    t.float    "totaldepecas"
    t.decimal  "valor",                                  precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorbruto",                             precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorentrada",                           precision: 10, scale: 2, default: "0.0"
    t.float    "voo",                                                                             null: false
    t.integer  "idusuariocancelamento"
    t.integer  "idcondicaopagamento"
    t.integer  "idcliente"
    t.integer  "idusuario"
    t.integer  "idpreorcamento"
    t.integer  "idorcamentovinculado"
    t.integer  "idtroca"
    t.integer  "idusuarioliberacao"
    t.bigint   "idcaixa"
    t.integer  "idusuarioautorizacao"
    t.integer  "idestabelecimentosistema"
    t.integer  "idusuarioconferencia"
    t.integer  "idvendedor"
    t.integer  "idusuariovendaespecial"
    t.integer  "idestabelecimento"
    t.integer  "idnotafiscalseried1"
    t.index ["coo"], name: "idx_orcamento_coo", using: :btree
    t.index ["data"], name: "idx_orcamento_data", using: :btree
    t.index ["ecf"], name: "idx_orcamento_ecf", using: :btree
    t.index ["idcliente"], name: "idx_orcamento_idcliente", using: :btree
    t.index ["idcondicaopagamento"], name: "idx_orcamento_idcondicaopagamento", using: :btree
    t.index ["idestabelecimento"], name: "idx_orcamento_idestabelecimento", using: :btree
    t.index ["idtroca"], name: "idx_orcamento_idtroca", using: :btree
    t.index ["idvendedor"], name: "idx_orcamento_idvendedor", using: :btree
    t.index ["status"], name: "idx_orcamento_status", using: :btree
  end

  create_table "t_orcamentocheque", primary_key: "idorcamentocheque", id: :integer, force: :cascade do |t|
    t.integer "idcheque"
    t.integer "idorcamento"
  end

  create_table "t_orcamentocomplementar", primary_key: "idorcamentocomplementar", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,                                            null: false
    t.decimal  "acrescimocondicaopagamento",             precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "acrescimoimposto",                       precision: 10, scale: 2, default: "0.0"
    t.float    "acrescimopercentual"
    t.string   "conferido",                  limit: 255
    t.string   "coo",                        limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.datetime "datacancelamentoautomatico"
    t.datetime "datasaidamostruario"
    t.decimal  "descontocondicaopagamento",              precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "descontocontribuinteicms",               precision: 10, scale: 2, default: "0.0", null: false
    t.float    "descontopercentual"
    t.float    "descontovalor"
    t.string   "ecf",                        limit: 255
    t.string   "emitidool",                  limit: 255
    t.float    "jurosprazomedio",                                                                 null: false
    t.boolean  "liberadoremotamente",                                                             null: false
    t.string   "nb",                         limit: 255
    t.string   "nomecliente",                limit: 255
    t.bigint   "numeroprevenda",                                                                  null: false
    t.string   "observacao",                 limit: 255
    t.string   "observacaocancelamento",     limit: 255
    t.string   "observacaosistema",          limit: 255
    t.string   "perfil",                     limit: 255
    t.decimal  "taxaadicional",                          precision: 10, scale: 2, default: "0.0"
    t.integer  "tempo"
    t.integer  "tipo",                                                                            null: false
    t.float    "totaldepecas"
    t.decimal  "valor",                                  precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorbruto",                             precision: 10, scale: 2, default: "0.0", null: false
    t.decimal  "valorentrada",                           precision: 10, scale: 2, default: "0.0"
    t.float    "voo",                                                                             null: false
    t.integer  "idusuariovendaespecial"
    t.integer  "idcliente"
    t.integer  "idpreorcamento"
    t.integer  "idtroca"
    t.integer  "idusuario"
    t.integer  "idusuarioconferencia"
    t.integer  "idusuarioliberacao"
    t.integer  "idestabelecimentosistema"
    t.integer  "idcondicaopagamento"
    t.integer  "idestabelecimento"
    t.integer  "idorcamentovinculado"
    t.integer  "idorcamento"
    t.bigint   "idcaixa"
    t.integer  "idvendedor"
    t.integer  "idusuarioautorizacao"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_orcamentoproduto", primary_key: "idorcamentoproduto", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,                                            null: false
    t.boolean "promocao",                                                               null: false
    t.float   "quantidade"
    t.float   "valorcusto"
    t.decimal "acrescimovalor",                precision: 10, scale: 2, default: "0.0", null: false
    t.string  "codigobarra",       limit: 255
    t.decimal "descontoagregado",              precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "descontovalor",                 precision: 10, scale: 2, default: "0.0", null: false
    t.boolean "entregue",                                               default: true
    t.decimal "precominimo",                   precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valorcalculado",                precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valornegociado",                precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valororiginal",                 precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idprodutoagregado"
    t.integer "idorcamento"
    t.bigint  "idproduto"
    t.index ["idorcamento"], name: "idx_orcamentoproduto_idorcamento", using: :btree
    t.index ["idproduto"], name: "idx_orcamentoproduto_idproduto", using: :btree
    t.index ["idprodutoagregado"], name: "idx_orcamentoproduto_idprodutoagregado", using: :btree
  end

  create_table "t_orcamentoprodutocomplementar", primary_key: "idorcamentoprodutocomplementar", id: :integer, force: :cascade do |t|
    t.string  "status",                  limit: 1,                                            null: false
    t.boolean "promocao",                                                                     null: false
    t.float   "quantidade"
    t.float   "valorcusto"
    t.decimal "acrescimovalor",                      precision: 10, scale: 2, default: "0.0", null: false
    t.string  "codigobarra",             limit: 255
    t.decimal "descontoagregado",                    precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "descontovalor",                       precision: 10, scale: 2, default: "0.0", null: false
    t.boolean "entregue",                                                     default: true
    t.decimal "precominimo",                         precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valorcalculado",                      precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valornegociado",                      precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "valororiginal",                       precision: 10, scale: 2, default: "0.0", null: false
    t.bigint  "idproduto"
    t.integer "idorcamentocomplementar"
    t.integer "idprodutoagregado"
  end

  create_table "t_orcamentoprodutodeposito", primary_key: "idorcamentoprodutodeposito", id: :integer, force: :cascade do |t|
    t.float   "quantidade",        null: false
    t.integer "idorcamento"
    t.integer "idestabelecimento"
    t.bigint  "idproduto"
    t.integer "idprodutoagregado"
  end

  create_table "t_orcamentoprodutodevolucao", primary_key: "idorcamentoprodutodevolucao", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 1, null: false
    t.boolean "promocao",                 null: false
    t.float   "quantidade"
    t.float   "valorcusto"
    t.float   "valordevolucao"
    t.bigint  "idproduto"
    t.integer "idorcamento"
  end

  create_table "t_ordemfabricacao", primary_key: "idordemfabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1, null: false
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.text     "observacao"
    t.float    "quantidade",                      null: false
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
    t.integer  "idfichatecnica"
    t.integer  "idestabelecimento"
  end

  create_table "t_ordemfabricacaoproporcaoproducao", primary_key: "idordemfabricacaoproporcaoproducao", id: :integer, force: :cascade do |t|
    t.integer "proporcao",         null: false
    t.bigint  "idproduto"
    t.integer "idordemfabricacao"
  end

  create_table "t_origemexterna", primary_key: "idorigemexterna", id: :integer, force: :cascade do |t|
    t.string  "status",     limit: 1,   null: false
    t.string  "descricao",  limit: 255
    t.integer "idconta"
    t.integer "idportador"
  end

  create_table "t_pafecf", primary_key: "idpafecf", id: :integer, force: :cascade do |t|
    t.string   "erro",               limit: 255
    t.string   "hash",               limit: 255
    t.string   "mfadicional",        limit: 255
    t.string   "modelodoecf",        limit: 255
    t.integer  "numerodousuario",                null: false
    t.string   "numerofabricacao",   limit: 255
    t.string   "cnpjdesenvolvedora", limit: 255
    t.string   "cnpjusuario",        limit: 255
    t.datetime "datainstalacaosb"
    t.string   "iedesenvolvedora",   limit: 255
    t.string   "ieusuario",          limit: 255
    t.string   "imdesenvolvedora",   limit: 255
    t.string   "marcaecf",           limit: 255
    t.string   "md5",                limit: 255
    t.string   "nomecomercial",      limit: 255
    t.string   "numerolaudo",        limit: 255
    t.string   "razaosocial",        limit: 255
    t.string   "status",             limit: 255
    t.string   "tipoecf",            limit: 255
    t.string   "versaosb",           limit: 255
    t.integer  "idestabelecimento"
    t.index ["idestabelecimento"], name: "idx_pafecf_idestabelecimento", using: :btree
    t.index ["numerofabricacao"], name: "idx_pafecf_numerofabricacao", using: :btree
  end

  create_table "t_pagamentocarne", primary_key: "idpagamentocarne", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.string   "cadastrochequeefetuado", limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.string   "pagocomcheque",          limit: 255
    t.float    "valor"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
    t.bigint   "idcaixacancelamento"
    t.bigint   "idcaixa"
    t.integer  "idcliente"
    t.index ["idcaixa"], name: "idx_pagamentocarne_idcaixa", using: :btree
  end

  create_table "t_pagamentocheque", primary_key: "idpagamentocheque", id: :integer, force: :cascade do |t|
    t.string   "status",    limit: 1, null: false
    t.datetime "data"
    t.float    "jurospago"
    t.float    "multapaga"
    t.float    "valorpago"
    t.integer  "idcheque"
    t.integer  "idusuario"
    t.integer  "idconta"
  end

  create_table "t_pagamentochequeloja", primary_key: "idpagamentochequeloja", id: :integer, force: :cascade do |t|
    t.integer "idpagamentocheque"
    t.integer "idestabelecimento"
    t.bigint  "idcaixa"
  end

  create_table "t_pagamentodespesa", primary_key: "idpagamentodespesa", id: :integer, force: :cascade do |t|
    t.string   "status",                    limit: 1,   null: false
    t.string   "descricao",                 limit: 255
    t.datetime "datahora"
    t.string   "compensachequesutilizados", limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.float    "valordinheiro"
    t.integer  "idusuariocancelamento"
    t.integer  "idusuario"
    t.bigint   "idcaixa"
    t.index ["idcaixa"], name: "idx_pagamentodespesa_idcaixa", using: :btree
  end

  create_table "t_pagamentodespesacheque", primary_key: "idpagamentodespesacheque", id: :integer, force: :cascade do |t|
    t.string  "statuscheque",       limit: 255
    t.integer "idcheque"
    t.integer "idpagamentodespesa"
  end

  create_table "t_pagamentodespesalancamento", primary_key: "idpagamentodespesalancamento", id: :integer, force: :cascade do |t|
    t.integer "idlancamentoconta"
    t.integer "idpagamentodespesa"
  end

  create_table "t_pagamentodespesalancamentoagendado", primary_key: "idpagamentodespesalancamentoagendado", id: :integer, force: :cascade do |t|
    t.integer  "codigoentidadeoperacao",             null: false
    t.string   "conciliado",             limit: 255
    t.datetime "dataconciliacao"
    t.string   "descricao",              limit: 255
    t.string   "numerodocumento",        limit: 255
    t.string   "observacao",             limit: 255
    t.integer  "operacao",                           null: false
    t.float    "saldo"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idconta"
    t.integer  "idpagamentodespesa"
  end

  create_table "t_pagamentoduplicata", primary_key: "idpagamentoduplicata", id: :integer, force: :cascade do |t|
    t.string   "status",                    limit: 1,   null: false
    t.string   "descricao",                 limit: 255
    t.datetime "datahora"
    t.string   "compensachequesutilizados", limit: 255
    t.datetime "datacadastro"
    t.datetime "datahoracancelamento"
    t.integer  "idusuario"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_pagamentoduplicatacheque", primary_key: "idpagamentoduplicatacheque", id: :integer, force: :cascade do |t|
    t.string  "statuscheque",         limit: 255
    t.integer "idpagamentoduplicata"
    t.integer "idcheque"
  end

  create_table "t_pagamentoduplicatasareceber", primary_key: "idpagamentoduplicatasareceber", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.string   "observacao",            limit: 255
    t.integer  "quantidadeitens",                   null: false
    t.float    "valor",                             null: false
    t.integer  "idusuario"
    t.integer  "idconta"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_pagamentoduplicatasareceberitem", primary_key: "idpagamentoduplicatasareceberitem", id: :integer, force: :cascade do |t|
    t.float   "valorpagojuros",                null: false
    t.float   "valorpagoprincipal",            null: false
    t.integer "idduplicataareceber"
    t.integer "idpagamentoduplicatasareceber"
  end

  create_table "t_pagamentoloteduplicata", primary_key: "idpagamentoloteduplicata", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.string   "observacao",            limit: 255
    t.integer  "tipolotecheque"
    t.integer  "tipoloteduplicata"
    t.integer  "tipopagamento"
    t.float    "valorpago"
    t.float    "valortotal"
    t.integer  "idusuariocadastro"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_pagamentoloteduplicataconta", primary_key: "idpagamentoloteduplicataconta", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idpagamentoloteduplicata"
    t.integer "idconta"
  end

  create_table "t_pagamentotitulo", primary_key: "idpagamentotitulo", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,                                            null: false
    t.string   "descricao",             limit: 255
    t.datetime "datahora"
    t.float    "creditocliente",                                                             null: false
    t.datetime "databasecheques"
    t.datetime "databasetitulos"
    t.datetime "datacancelamento"
    t.datetime "datavisto"
    t.string   "descricaocancelamento", limit: 255
    t.integer  "diferencadedias"
    t.decimal  "encargofinanceiro",                 precision: 10, scale: 2, default: "0.0"
    t.text     "observacao"
    t.integer  "prazomediocheques"
    t.integer  "prazomediotitulos"
    t.float    "valor",                                                                      null: false
    t.integer  "idusuario"
    t.bigint   "idcaixa"
    t.integer  "idcliente"
    t.integer  "idusuarioautorizacao"
    t.integer  "idlancamentoconta"
    t.integer  "idusuariovisto"
    t.integer  "idusuariocancelamento"
    t.integer  "idtroca"
    t.integer  "idcondicaopagamento"
    t.index ["datahora"], name: "idx_pagamentotitulo_data", using: :btree
    t.index ["idcliente"], name: "idx_pagamentotitulo_idcliente", using: :btree
    t.index ["status"], name: "idx_pagamentotitulo_status", using: :btree
  end

  create_table "t_pagamentotituloitem", primary_key: "idpagamentotituloitem", id: :integer, force: :cascade do |t|
    t.integer "codigotitulo",                  null: false
    t.float   "descontojuros",                 null: false
    t.float   "descontojurosantesdopagamento"
    t.float   "descontoprincipal",             null: false
    t.float   "juros",                         null: false
    t.float   "jurosantesdopagamento"
    t.integer "tipo",                          null: false
    t.float   "valor",                         null: false
    t.float   "valorjuros",                    null: false
    t.float   "valormulta",                    null: false
    t.float   "valorprincipal",                null: false
    t.integer "idpagamentotitulo"
    t.integer "iddepositobancariovinculado"
    t.index ["idpagamentotitulo"], name: "idx_pagamentotituloitem_idpagamentotitulo", using: :btree
    t.index ["tipo"], name: "idx_pagamentotituloitem_tipo", using: :btree
  end

  create_table "t_pagamentotituloitemimpostoretido", primary_key: "idpagamentotituloitemimpostoretido", id: :integer, force: :cascade do |t|
    t.decimal "impostotaxa",           precision: 19, scale: 7
    t.decimal "impostovalor",          precision: 19, scale: 7
    t.integer "idpagamentotituloitem"
    t.integer "idimposto"
    t.integer "iddespesa"
  end

  create_table "t_pagamentotitulolancamentodesfazimento", primary_key: "idpagamentotitulolancamentodesfazimento", id: :integer, force: :cascade do |t|
    t.integer "idlancamentoconta"
    t.integer "idpagamentotitulo"
  end

  create_table "t_pagduplicatalancamento", primary_key: "idpagduplicatalancamento", id: :integer, force: :cascade do |t|
    t.integer "idpagamentoduplicata"
    t.integer "idlancamentoconta"
  end

  create_table "t_pagduplicatalancamentoagendado", primary_key: "idpagduplicatalancamentoagendado", id: :integer, force: :cascade do |t|
    t.integer  "codigoentidadeoperacao",             null: false
    t.string   "conciliado",             limit: 255
    t.datetime "dataconciliacao"
    t.string   "descricao",              limit: 255
    t.string   "numerodocumento",        limit: 255
    t.string   "observacao",             limit: 255
    t.integer  "operacao",                           null: false
    t.float    "saldo"
    t.integer  "tipo"
    t.float    "valor"
    t.integer  "idpagamentoduplicata"
    t.integer  "idconta"
  end

  create_table "t_paglotechequeitem", primary_key: "idpaglotechequeitem", id: :integer, force: :cascade do |t|
    t.integer "status"
    t.integer "idcheque"
    t.integer "idpagamentoloteduplicata"
    t.integer "idlotecheque"
  end

  create_table "t_pagloteduplicataitem", primary_key: "idpagloteduplicataitem", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.integer "idpagamentoloteduplicata"
    t.integer "idloteduplicata"
    t.integer "idduplicata"
  end

  create_table "t_pais", primary_key: "idpais", id: :integer, force: :cascade do |t|
    t.string "nome", limit: 255
  end

  create_table "t_parametro", primary_key: "idparametro", id: :integer, force: :cascade do |t|
    t.string  "status",          limit: 255
    t.string  "descricao",       limit: 255
    t.integer "tipovalor"
    t.text    "utilizacao"
    t.float   "valorfloat"
    t.string  "valorstring",     limit: 255
    t.integer "idtipoparametro"
  end

  create_table "t_parametroestabelecimento", primary_key: "idparametroestabelecimento", id: :integer, force: :cascade do |t|
    t.string  "status",          limit: 1,   null: false
    t.string  "descricao",       limit: 255
    t.integer "tipovalor",                   null: false
    t.text    "utilizacao"
    t.integer "idtipoparametro"
  end

  create_table "t_parecergerencia", primary_key: "idparecergerencia", id: :integer, force: :cascade do |t|
    t.string  "setor",  limit: 255
    t.integer "status"
  end

  create_table "t_parecergerenciadependencia", primary_key: "idparecergerenciadependencia", id: :integer, force: :cascade do |t|
    t.integer "idparecerdependencia"
    t.integer "idparecergerencia"
  end

  create_table "t_parecergerenciagruporesponsavel", primary_key: "idparecergerenciagruporesponsavel", id: :integer, force: :cascade do |t|
    t.integer "idparecergerencia"
    t.integer "idgrupo"
  end

  create_table "t_pedido", primary_key: "idpedido", id: :integer, force: :cascade do |t|
    t.string   "status",                          limit: 255
    t.date     "adiantamentodata"
    t.float    "adiantamentovalor"
    t.float    "custototalprodutos"
    t.text     "dadosentrega"
    t.text     "dadosfaturamento"
    t.datetime "data"
    t.date     "dataentregafinal"
    t.date     "dataentregainicial"
    t.string   "descontoexibivel",                limit: 255
    t.string   "isinclusoipi",                    limit: 255
    t.string   "observacao",                      limit: 255
    t.float    "porcentagembancoadiantamento"
    t.float    "porcentagemcarteiraadiantamento"
    t.string   "possuifrete",                     limit: 255
    t.string   "remarcaprodutosnorecebimento",    limit: 1,   default: "N", null: false
    t.string   "tipopedido",                      limit: 255
    t.integer  "idusuarioaprovacao"
    t.integer  "idfornecedor"
    t.integer  "idestabelecimento"
    t.integer  "idmarca"
    t.integer  "idusuario"
    t.integer  "idcondicaopagamento"
    t.integer  "idusuariofechamento"
    t.index ["idestabelecimento"], name: "idx_pedido_idestabelecimento", using: :btree
    t.index ["status"], name: "idx_pedido_status", using: :btree
  end

  create_table "t_pedidodevenda", primary_key: "idpedidodevenda", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,   null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "descontopercentual"
    t.float    "descontovalor"
    t.string   "numeropedidocompra",           limit: 255
    t.text     "observacao",                               null: false
    t.text     "observacaoautorizacao"
    t.text     "observacaocancelamento"
    t.text     "observacaodecobranca"
    t.text     "observacaosistema"
    t.string   "podeultrapassarquantidade",    limit: 255
    t.float    "totaldepecas"
    t.float    "valor"
    t.float    "valorbruto"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idcondicaopagamento"
    t.integer  "idvendedor"
    t.integer  "idpedidodevendacliente"
    t.integer  "idusuarioliberacao"
    t.integer  "idformapagamento"
    t.integer  "idusuario"
    t.integer  "idcliente"
    t.integer  "idestabelecimentoatendimento"
    t.integer  "idusuarioautorizacao"
  end

  create_table "t_pedidodevendacliente", primary_key: "idpedidodevendacliente", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "descontopercentual"
    t.float    "descontovalor"
    t.text     "observacao"
    t.text     "observacaoautorizacao"
    t.text     "observacaocancelamento"
    t.text     "observacaosistema"
    t.string   "podeultrapassarquantidade",    limit: 255
    t.float    "totaldepecas"
    t.float    "valor"
    t.float    "valorbruto"
    t.integer  "idusuarioautorizacao"
    t.integer  "idvendedor"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioliberacao"
    t.integer  "idcliente"
    t.integer  "idusuariocancelamento"
    t.integer  "idformapagamento"
    t.integer  "idcondicaopagamento"
    t.integer  "idusuario"
    t.integer  "idestabelecimentoatendimento"
  end

  create_table "t_pedidodevendahistorico", primary_key: "idpedidodevendahistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",          limit: 255
    t.integer  "idusuario"
    t.integer  "idpedidodevenda"
  end

  create_table "t_pedidoduplicataadiantamento", primary_key: "idpedidoduplicataadiantamento", id: :integer, force: :cascade do |t|
    t.integer "idduplicatapagar"
    t.integer "idpedido"
  end

  create_table "t_pedidoedi", primary_key: "idpedidoedi", id: :integer, force: :cascade do |t|
    t.string   "status",              limit: 1,   null: false
    t.string   "condicaodepagamento", limit: 255
    t.datetime "data"
    t.datetime "datafinalentrega"
    t.datetime "datainicialentrega"
    t.float    "descontoduplicata",               null: false
    t.float    "descontonota",                    null: false
    t.string   "numeropedido",        limit: 255
    t.float    "valorpedido",                     null: false
    t.integer  "idcomprador"
    t.integer  "idedi"
    t.integer  "idcondicaopagamento"
    t.integer  "idestabelecimento"
  end

  create_table "t_pedidogenerico", primary_key: "idpedidogenerico", id: :integer, force: :cascade do |t|
    t.string   "status",                   limit: 255
    t.datetime "data"
    t.datetime "dataentregafinal"
    t.datetime "dataentregainicial"
    t.string   "embarques",                limit: 255
    t.string   "faturamentobancocarteira", limit: 255
    t.string   "informacoesadicionais",    limit: 255
    t.string   "tipofrete",                limit: 255
    t.string   "vendedor",                 limit: 255
    t.integer  "idestabelecimento"
    t.integer  "idtransportadora"
    t.integer  "idcondicaopagamento"
    t.integer  "idpedidoassociado"
    t.integer  "idfornecedor"
  end

  create_table "t_pedidogenericoembarque", primary_key: "idpedidogenericoembarque", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.integer  "idpedidogenerico"
  end

  create_table "t_pedidogenericohistorico", primary_key: "idpedidogenericohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",           limit: 255
    t.integer  "idusuario"
    t.integer  "idpedidogenerico"
  end

  create_table "t_pedidogenericoproduto", primary_key: "idpedidogenericoproduto", id: :integer, force: :cascade do |t|
    t.float   "descontopercentual",                        null: false
    t.string  "nomereferencia",                limit: 255
    t.float   "preco",                                     null: false
    t.float   "quantidade",                                null: false
    t.string  "referencia",                    limit: 255
    t.integer "idgrade"
    t.integer "idpedidogenerico"
    t.integer "idreferenciaproduto"
    t.integer "idreferenciaprodutocadastrada"
    t.integer "idunidade"
  end

  create_table "t_pedidogenericoprodutodistribuicao", primary_key: "idpedidogenericoprodutodistribuicao", id: :integer, force: :cascade do |t|
    t.float   "quantidade",              null: false
    t.integer "idpedidogenericoproduto"
    t.integer "idcorgrade"
    t.integer "idtamanhograde"
  end

  create_table "t_pedidohistorico", primary_key: "idpedidohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",     limit: 255
    t.integer  "idpedido"
    t.integer  "idusuario"
  end

  create_table "t_pendenciaatendimentofuturo", primary_key: "idpendenciaatendimentofuturo", id: :integer, force: :cascade do |t|
    t.integer  "codigoentidadeorigem",                             null: false
    t.string   "complemento",          limit: 255
    t.datetime "dataatendimento"
    t.datetime "datacadastro"
    t.integer  "origem"
    t.integer  "status"
    t.integer  "idsetor"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioatendimento"
    t.boolean  "emailenviado",                     default: false
  end

  create_table "t_pendenciaatendimentofuturoitem", primary_key: "idpendenciaatendimentofuturoitem", id: :integer, force: :cascade do |t|
    t.decimal "quantidadependente",           precision: 19, scale: 7
    t.integer "idpendenciaatendimentofuturo"
    t.bigint  "idproduto"
  end

  create_table "t_perdaprocessodefabricacao", primary_key: "idperdaprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                 limit: 255
    t.float   "quantidade"
    t.integer "idprocessodefabricacao"
    t.bigint  "idproduto"
  end

  create_table "t_perfildeatuacaocliente", primary_key: "idperfildeatuacaocliente", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_perfilnegocio", primary_key: "idperfilnegocio", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_perfilnegociocliente", primary_key: "idperfilnegociocliente", id: :bigint, force: :cascade do |t|
    t.integer "idcliente"
    t.integer "idperfilnegocio"
  end

  create_table "t_perguntapersonalizada", primary_key: "idperguntapersonalizada", id: :integer, force: :cascade do |t|
    t.string  "pergunta",     limit: 255
    t.integer "status"
    t.integer "tiporesposta"
    t.string  "descricao",    limit: 255
    t.integer "tipo"
  end

  create_table "t_permissaogrupo", primary_key: "idpermissaogrupo", id: :integer, force: :cascade do |t|
    t.string  "descricao",        limit: 255
    t.string  "descricaoexibida", limit: 255
    t.integer "modulo",                       null: false
    t.integer "tipo",                         null: false
  end

  create_table "t_planejamentofaseprocessodefabricacao", primary_key: "idplanejamentofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 255
    t.datetime "data"
    t.text     "observacao"
    t.integer  "idfaseprocessodefabricacao"
    t.integer  "idusuario"
  end

  create_table "t_planofinanceira", primary_key: "idplanofinanceira", id: :integer, force: :cascade do |t|
    t.string  "status",                          limit: 1,   null: false
    t.string  "descricao",                       limit: 255
    t.integer "numeroparcelas",                              null: false
    t.integer "quantidadedediaspararecebimento",             null: false
    t.float   "taxacobrada",                                 null: false
    t.integer "tipotransacao",                               null: false
    t.integer "idfinanceira"
  end

  create_table "t_planooperadoracartao", primary_key: "idplanooperadoracartao", id: :integer, force: :cascade do |t|
    t.string  "status",                  limit: 1,   null: false
    t.string  "descricao",               limit: 255
    t.integer "numerodiasentreparcelas",             null: false
    t.integer "numerodiasvencimento",                null: false
    t.integer "numeroparcelas",                      null: false
    t.float   "taxacobrada",                         null: false
    t.integer "tipotransacao",                       null: false
    t.string  "tipovencimento",          limit: 255
    t.integer "idredecartao"
    t.integer "idestabelecimento"
    t.integer "idoperadoracartao"
  end

  create_table "t_planovendafutura", primary_key: "idplanovendafutura", id: :integer, force: :cascade do |t|
    t.string  "status",                   limit: 1, null: false
    t.integer "ano",                                null: false
    t.integer "mes",                                null: false
    t.float   "totalvendas",                        null: false
    t.integer "idestabelecimento"
    t.integer "idusuarioautorizacao"
    t.integer "idusuarioalteracao"
    t.integer "idusuariocancelamento"
    t.integer "idusuariocadastrofinal"
    t.integer "idusuariocadastroparcial"
  end

  create_table "t_pontodevenda", primary_key: "idpontodevenda", id: :integer, force: :cascade do |t|
    t.string   "status",               limit: 1,   null: false
    t.string   "codigoimpressora",     limit: 255
    t.datetime "datadesbloqueio"
    t.string   "mfadicional",          limit: 255
    t.string   "modelodoecf",          limit: 255
    t.integer  "numerodousuario",                  null: false
    t.string   "numerofabricacao",     limit: 255
    t.string   "senhadesbloqueio",     limit: 255
    t.integer  "tipo",                             null: false
    t.integer  "idsetor"
    t.integer  "idusuariodesbloqueio"
    t.integer  "idestabelecimento"
  end

  create_table "t_pontuacaofuncionario", primary_key: "idpontuacaofuncionario", id: :integer, force: :cascade do |t|
    t.integer  "anocompetencia",                              null: false
    t.datetime "filtrodatafinal"
    t.datetime "filtrodatainicial"
    t.integer  "mescompetencia",                              null: false
    t.integer  "status"
    t.decimal  "valorbonus",         precision: 19, scale: 2
    t.decimal  "valordeducao",       precision: 19, scale: 2
    t.decimal  "valorrateio",        precision: 19, scale: 2
    t.integer  "idestabelecimento"
    t.datetime "dataalteracao"
    t.datetime "datacadastro"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioalteracao"
  end

  create_table "t_pontuacaofuncionarioitem", primary_key: "idpontuacaofuncionarioitem", id: :integer, force: :cascade do |t|
    t.decimal "multiplicadornivel",     precision: 19, scale: 7
    t.decimal "pontosbloqueados",       precision: 19, scale: 7
    t.decimal "pontosdechamados",       precision: 19, scale: 7
    t.decimal "pontosextra",            precision: 19, scale: 7
    t.decimal "quantidadechamados",     precision: 19, scale: 7
    t.decimal "valorplr",               precision: 19, scale: 7
    t.integer "idatividadenivel"
    t.integer "idatividade"
    t.integer "idpontuacaofuncionario"
    t.integer "idfuncionario"
  end

  create_table "t_portador", primary_key: "idportador", id: :integer, force: :cascade do |t|
    t.string  "status",        limit: 1,   null: false
    t.string  "descricao",     limit: 255
    t.string  "issistema",     limit: 255
    t.string  "tipo",          limit: 255
    t.integer "idfuncionario"
  end

  create_table "t_precontrato", primary_key: "idprecontrato", id: :integer, force: :cascade do |t|
    t.string   "apelido",                limit: 255
    t.decimal  "comissao",                           precision: 19, scale: 7
    t.string   "cpfcnpj",                limit: 255
    t.datetime "datacadastro"
    t.datetime "datainiciovigencia"
    t.datetime "dataprimeiraparcela"
    t.datetime "dataterminovigencia"
    t.integer  "dialeitura",                                                  null: false
    t.integer  "duracaocontrato",                                             null: false
    t.string   "email",                  limit: 255
    t.string   "nome",                   limit: 255
    t.string   "rgie",                   limit: 255
    t.integer  "status"
    t.string   "tipocliente",            limit: 255
    t.decimal  "valorpagamento",                     precision: 19, scale: 7
    t.integer  "idendereco"
    t.integer  "idconsultorresponsavel"
    t.integer  "idestabelecimento"
    t.integer  "idcliente"
    t.integer  "idprecontratooriginal"
    t.integer  "idusuariocadastro"
  end

  create_table "t_precontratoarquivo", primary_key: "idprecontratoarquivo", id: :bigint, force: :cascade do |t|
    t.binary  "arquivo"
    t.string  "nomearquivo",   limit: 255
    t.integer "idprecontrato"
  end

  create_table "t_precontratocontato", primary_key: "idprecontratocontato", id: :integer, force: :cascade do |t|
    t.string  "descricao",     limit: 255
    t.integer "tipocontato",               null: false
    t.integer "idprecontrato"
  end

  create_table "t_precontratocustomizacao", primary_key: "idprecontratocustomizacao", id: :bigint, force: :cascade do |t|
    t.string   "status",              limit: 255
    t.boolean  "customizacaoinicial",             null: false
    t.datetime "datacadastro"
    t.integer  "idusuariocadastro"
    t.integer  "idprecontrato"
  end

  create_table "t_precontratocustomizacaoitem", primary_key: "idprecontratocustomizacaoitem", id: :integer, force: :cascade do |t|
    t.decimal "quantidadefranquia",                      precision: 19, scale: 7
    t.decimal "quantidadefranquianegociada",             precision: 19, scale: 7
    t.decimal "valorfranquia",                           precision: 19, scale: 7
    t.decimal "valorfranquiaexcedida",                   precision: 19, scale: 7
    t.string  "email",                       limit: 255
    t.string  "responsavelsetor",            limit: 255
    t.string  "setor",                       limit: 255
    t.string  "telefone",                    limit: 255
    t.integer "idendereco"
    t.bigint  "idproduto"
    t.integer "idcontratotipoleitura"
    t.bigint  "idprecontratocustomizacao"
    t.integer "idcontratotipoinstalacao"
    t.integer "idcontratotipolocacao"
  end

  create_table "t_precontratofuncionarioparticipante", primary_key: "idprecontratofuncionarioparticipante", id: :bigint, force: :cascade do |t|
    t.decimal "comissao",      precision: 19, scale: 2
    t.integer "idfuncionario"
    t.integer "idprecontrato"
  end

  create_table "t_precontratolocatarioresponsavel", primary_key: "idprecontratolocatarioresponsavel", id: :integer, force: :cascade do |t|
    t.string   "cpf",                          limit: 255
    t.datetime "datanascimento"
    t.string   "nome",                         limit: 255
    t.string   "rg",                           limit: 255
    t.integer  "idlocatarioresponsavelfuncao"
    t.integer  "idprecontrato"
  end

  create_table "t_precontratolocatarioresponsavelcontato", primary_key: "idprecontratolocatarioresponsavelcontato", id: :integer, force: :cascade do |t|
    t.string  "descricao",                         limit: 255
    t.integer "tipocontato",                                   null: false
    t.integer "idprecontratolocatarioresponsavel"
  end

  create_table "t_precontratoparecergerencia", primary_key: "idprecontratoparecergerencia", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "informacaocomplementar"
    t.integer  "situacao"
    t.integer  "status"
    t.integer  "idparecergerencia"
    t.integer  "idprecontrato"
    t.integer  "idusuario"
  end

  create_table "t_precontratoperguntapersonalizada", primary_key: "idprecontratoperguntapersonalizada", id: :integer, force: :cascade do |t|
    t.decimal "respostanumerica",                    precision: 19, scale: 2
    t.boolean "respostasimnao"
    t.string  "respostatexto",           limit: 255
    t.integer "idprecontrato"
    t.integer "idperguntapersonalizada"
  end

  create_table "t_precontratoregiao", primary_key: "idprecontratoregiao", id: :integer, force: :cascade do |t|
    t.integer "slanegociado"
    t.integer "slaoriginal"
    t.integer "idregiao"
    t.integer "idprecontrato"
  end

  create_table "t_preorcamento", primary_key: "idpreorcamento", id: :integer, force: :cascade do |t|
    t.string   "status",                 limit: 1,   null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "descontogerente"
    t.float    "descontopercentual"
    t.float    "descontovalor"
    t.string   "observacao",             limit: 255
    t.string   "observacaocancelamento", limit: 255
    t.float    "totaldepecas"
    t.float    "valor"
    t.float    "valorbruto"
    t.integer  "idcondicaopagamento"
    t.integer  "idusuario"
    t.integer  "idestabelecimento"
    t.integer  "idvendedor"
    t.integer  "idusuarioautorizacao"
    t.integer  "idcliente"
    t.integer  "idusuariocancelamento"
    t.integer  "idpedidodevenda"
    t.integer  "idusuarioliberacao"
  end

  create_table "t_processamentoprodforadelinha", primary_key: "idprocessamentoprodforadelinha", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "qtdprodutosemestoque"
    t.integer "qtdprodutossemvenda"
  end

  create_table "t_processamentopromocaoauto", primary_key: "idprocessamentopromocaoauto", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "qtdpromocoesautorizadas"
  end

  create_table "t_processamentoremarcacaoauto", primary_key: "idprocessamentoremarcacaoauto", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "qtdremarcacoesautorizadas"
  end

  create_table "t_processamentovalidadpromocao", primary_key: "idprocessamentovalidadpromocao", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "qtdpromocoesvencidas"
  end

  create_table "t_processodefabricacao", primary_key: "idprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,   null: false
    t.string   "descricao",                  limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.datetime "dataencerramento"
    t.text     "motivocancelamento"
    t.text     "observacao"
    t.string   "observacaoencerrarcadastro", limit: 255
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioabertura"
    t.integer  "idreferenciaproduto"
    t.integer  "idusuarioencerramento"
    t.index ["descricao"], name: "idx_processodefabricacao_descricao", using: :btree
    t.index ["status"], name: "idx_processodefabricacao_status", using: :btree
  end

  create_table "t_procfaturamentoestabmensal", primary_key: "idprocfaturamentoestabmensal", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "idfaturamentoestabmensal"
  end

  create_table "t_procfaturamentoproduto", primary_key: "idprocfaturamentoproduto", id: :integer, force: :cascade do |t|
    t.date "data"
  end

  create_table "t_produto", primary_key: "idproduto", id: :bigint, force: :cascade do |t|
    t.string   "status",              limit: 255
    t.string   "codigobarra",         limit: 255
    t.datetime "dataultimaalteracao"
    t.datetime "dataultimaentrada"
    t.datetime "dataultimavenda"
    t.float    "descontomaximo"
    t.string   "nome",                limit: 255
    t.string   "nomeimpressao",       limit: 255
    t.float    "precobase"
    t.string   "referencia",          limit: 255
    t.float    "valorcomfrete"
    t.float    "valorcusto"
    t.integer  "idcor"
    t.integer  "idtamanho"
    t.integer  "idreferenciaproduto"
    t.text     "temp_maquinamodelo"
    t.index ["idreferenciaproduto"], name: "idx_produto_idreferenciaproduto", using: :btree
  end

  create_table "t_produtoagregado", primary_key: "idprodutoagregado", id: :integer, force: :cascade do |t|
    t.string   "status",                  limit: 255
    t.integer  "codigoagregadoquebra",                null: false
    t.string   "codigobarra",             limit: 255
    t.datetime "datacadastro"
    t.datetime "dataconversao"
    t.string   "gramatura",               limit: 255
    t.string   "imagens",                 limit: 255
    t.float    "largura",                             null: false
    t.string   "lote",                    limit: 255
    t.string   "origem",                  limit: 255
    t.float    "quantidadebruto"
    t.float    "quantidadedesconsiderar"
    t.float    "quantidadeliquido"
    t.float    "rendimento",                          null: false
    t.integer  "idtipoprodutoagregado"
    t.integer  "idestabelecimento"
    t.integer  "idsetor"
    t.integer  "idromaneiodefabricacao"
    t.integer  "idromaneiodeentrada"
    t.bigint   "idproduto"
    t.index ["lote"], name: "idx_produtoagregado_lote", using: :btree
    t.index ["quantidadeliquido"], name: "idx_produtoagregado_quantidadeliquido", using: :btree
    t.index ["status"], name: "idx_produtoagregado_status", using: :btree
  end

  create_table "t_produtoagregadohistorico", primary_key: "idprodutoagregadohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.float    "qtdeestoque"
    t.float    "qtdemovimentada"
    t.float    "valor"
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
    t.integer  "idprodutoagregado"
    t.index ["data"], name: "idx_produtoagregadohistorico_data", using: :btree
    t.index ["idprodutoagregado"], name: "idx_produtoagregadohistorico_idprodutoagregado", using: :btree
    t.index ["status"], name: "idx_produtoagregadohistorico_status", using: :btree
  end

  create_table "t_produtoajuste", primary_key: "idprodutoajuste", id: :integer, force: :cascade do |t|
    t.string  "foradelinha",     limit: 255
    t.float   "qtd_antiga"
    t.float   "qtd_movimentada"
    t.bigint  "idproduto"
    t.integer "idajusteestoque"
  end

  create_table "t_produtobaixaservico", primary_key: "idprodutobaixaservico", id: :integer, force: :cascade do |t|
    t.decimal "quantidade",     precision: 10, scale: 2
    t.bigint  "idproduto"
    t.integer "idbaixaservico"
  end

  create_table "t_produtocodigobarra", primary_key: "idprodutocodigobarra", id: :integer, force: :cascade do |t|
    t.string "codigobarra",        limit: 255
    t.string "codigobarradefault", limit: 255
    t.bigint "idproduto"
    t.index ["codigobarra"], name: "idx_produtocodigobarra_codigobarra", using: :btree
    t.index ["idproduto"], name: "idx_produtocodigobarra_idproduto", using: :btree
  end

  create_table "t_produtodaremessa", primary_key: "idprodutodaremessa", id: :integer, force: :cascade do |t|
    t.boolean "empromocao",                                                 null: false
    t.decimal "precopromocao",     precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "precovenda",        precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "quantidade",        precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idremessaavenda"
    t.bigint  "idproduto"
    t.integer "idprodutoagregado"
  end

  create_table "t_produtodopedido", primary_key: "idprodutodopedido", id: :integer, force: :cascade do |t|
    t.string  "foradelinha",        limit: 255
    t.float   "precodecusto"
    t.float   "precodevenda"
    t.float   "quantidade"
    t.float   "quantidaderecebida"
    t.string  "tipo",               limit: 255
    t.float   "valoripi"
    t.integer "idpedido"
    t.bigint  "idproduto"
    t.index ["idpedido"], name: "idx_produtodopedido_idpedido", using: :btree
    t.index ["idproduto"], name: "idx_produtodopedido_idproduto", using: :btree
  end

  create_table "t_produtoedi", primary_key: "idprodutoedi", id: :integer, force: :cascade do |t|
    t.string  "cor",                 limit: 255
    t.string  "descricao",           limit: 255
    t.string  "ean",                 limit: 255
    t.string  "marca",               limit: 255
    t.float   "precopedido",                     null: false
    t.float   "precovenda",                      null: false
    t.float   "quantidade",                      null: false
    t.string  "referencia",          limit: 255
    t.string  "tamanho",             limit: 255
    t.integer "idgrupoproduto"
    t.integer "idsecao"
    t.integer "idprodutogenerico"
    t.integer "idmaterial"
    t.integer "idprodutoespecifico"
    t.integer "idedi"
    t.integer "idunidade"
  end

  create_table "t_produtoentradafaseordemfabricacao", primary_key: "idprodutoentradafaseordemfabricacao", id: :integer, force: :cascade do |t|
    t.float   "quantidadeenviada",                null: false
    t.float   "quantidadeliberada",               null: false
    t.float   "quantidadeprevista",               null: false
    t.float   "quantidadesobra",                  null: false
    t.float   "quantidadeutilizada",              null: false
    t.integer "idreferenciaproduto"
    t.integer "idprodutoentradafichatecnicafase"
    t.integer "idfaseordemfabricacao"
  end

  create_table "t_produtoentradafichatecnicafase", primary_key: "idprodutoentradafichatecnicafase", id: :integer, force: :cascade do |t|
    t.float   "quantidade",          null: false
    t.integer "idfichatecnicafase"
    t.integer "idreferenciaproduto"
  end

  create_table "t_produtoespecifico", primary_key: "idprodutoespecifico", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,   null: false
    t.string  "descricao",         limit: 255
    t.integer "idprodutogenerico"
  end

  create_table "t_produtoestabelecimentoedi", primary_key: "idprodutoestabelecimentoedi", id: :integer, force: :cascade do |t|
    t.integer "idestabelecimento"
    t.integer "idprodutoedi"
  end

  create_table "t_produtofaseprocessodefabricacao", primary_key: "idprodutofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                     limit: 255
    t.float   "quantidade",                             null: false
    t.bigint  "idproduto"
    t.integer "idfaseprocessodefabricacao"
  end

  create_table "t_produtofiscalkamaleon", primary_key: "idprodutofiscalkamaleon", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1, null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "quantidadeentradafiscal"
    t.integer  "tipomovimentofiscal"
    t.bigint   "idproduto"
    t.integer  "idrecebimento"
    t.integer  "idfaseprocessodefabricacao"
    t.integer  "idusuariocancelamento"
    t.integer  "idnotafiscalentradaproduto"
    t.integer  "idusuario"
  end

  create_table "t_produtogenerico", primary_key: "idprodutogenerico", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 255
    t.string  "descricao",      limit: 255
    t.float   "markupminimo"
    t.integer "idgrupoproduto"
  end

  create_table "t_produtolistaevento", primary_key: "idprodutolistaevento", id: :integer, force: :cascade do |t|
    t.decimal "precovenda",                precision: 10, scale: 2, default: "0.0", null: false
    t.string  "promocao",      limit: 255
    t.decimal "quantidade",                precision: 10, scale: 2, default: "0.0", null: false
    t.bigint  "idproduto"
    t.integer "idlistaevento"
  end

  create_table "t_produtonfe", primary_key: "idprodutonfe", id: :integer, force: :cascade do |t|
    t.float   "aliquotacofins",                                              null: false
    t.float   "aliquotaicms",                                                null: false
    t.float   "aliquotaicmssubs",                                            null: false
    t.float   "aliquotaipi",                                                 null: false
    t.decimal "aliquotaiss",                        precision: 19, scale: 2
    t.float   "aliquotapis",                                                 null: false
    t.float   "basedecalculo",                                               null: false
    t.float   "basedecalculost",                                             null: false
    t.string  "cest",                   limit: 255
    t.string  "cfop",                   limit: 255
    t.string  "codigodebarra",          limit: 255
    t.string  "descricao",              limit: 255
    t.float   "icms",                                                        null: false
    t.string  "nfci",                   limit: 255
    t.integer "nitemped"
    t.string  "ncm",                    limit: 255
    t.float   "precovenda",                                                  null: false
    t.float   "quantidade",                                                  null: false
    t.string  "sittributaria",          limit: 255
    t.string  "unidade",                limit: 255
    t.decimal "vtottrib",                           precision: 19, scale: 2
    t.float   "valorcofins",                                                 null: false
    t.float   "valordesconto",                                               null: false
    t.float   "valorfrete"
    t.float   "valoricms",                                                   null: false
    t.float   "valoricmssubs",                                               null: false
    t.float   "valoripi",                                                    null: false
    t.decimal "valoriss",                           precision: 19, scale: 2
    t.float   "valorpis",                                                    null: false
    t.string  "xped",                   limit: 255
    t.bigint  "idproduto"
    t.integer "idnotafiscaleletronica"
    t.index ["idnotafiscaleletronica"], name: "idx_produtonfe_idnotafiscaleletronica", using: :btree
  end

  create_table "t_produtonfeicmsufdestino", primary_key: "idprodutonfeicmsufdestino", id: :integer, force: :cascade do |t|
    t.decimal "pfcpufdest",     precision: 19, scale: 2
    t.decimal "picmsinter",     precision: 19, scale: 2
    t.decimal "picmsinterpart", precision: 19, scale: 2
    t.decimal "picmsufdest",    precision: 19, scale: 2
    t.decimal "vbcufdest",      precision: 19, scale: 2
    t.decimal "vfcpufdest",     precision: 19, scale: 2
    t.decimal "vicmsufdest",    precision: 19, scale: 2
    t.decimal "vicmsufremet",   precision: 19, scale: 2
    t.integer "idprodutonfe"
  end

  create_table "t_produtonfmodelo1", primary_key: "idprodutonfmodelo1", id: :integer, force: :cascade do |t|
    t.float   "aliquotacofins",                  null: false
    t.float   "aliquotaicms",                    null: false
    t.float   "aliquotaicmssubs",                null: false
    t.float   "aliquotaipi",                     null: false
    t.float   "aliquotapis",                     null: false
    t.float   "basedecalculo",                   null: false
    t.string  "cest",                limit: 255
    t.string  "cfop",                limit: 255
    t.string  "codigodebarra",       limit: 255
    t.string  "descricao",           limit: 255
    t.float   "icms",                            null: false
    t.string  "ncm",                 limit: 255
    t.float   "precovenda",                      null: false
    t.float   "quantidade",                      null: false
    t.string  "sittributaria",       limit: 255
    t.string  "unidade",             limit: 255
    t.float   "valorcofins",                     null: false
    t.float   "valordesconto",                   null: false
    t.float   "valoricms",                       null: false
    t.float   "valoricmssubs",                   null: false
    t.float   "valoripi",                        null: false
    t.float   "valorpis",                        null: false
    t.bigint  "idproduto"
    t.integer "idnotafiscalmodelo1"
  end

  create_table "t_produtonfmodelo1serie1", primary_key: "idprodutonfmodelo1serie1", id: :integer, force: :cascade do |t|
    t.float   "aliquotacofins",                        null: false
    t.float   "aliquotaicms",                          null: false
    t.float   "aliquotaicmssubs",                      null: false
    t.float   "aliquotaipi",                           null: false
    t.float   "aliquotapis",                           null: false
    t.float   "basedecalculo",                         null: false
    t.string  "cest",                      limit: 255
    t.string  "cfop",                      limit: 255
    t.string  "codigodebarra",             limit: 255
    t.string  "descricao",                 limit: 255
    t.float   "icms",                                  null: false
    t.string  "ncm",                       limit: 255
    t.float   "precovenda",                            null: false
    t.float   "quantidade",                            null: false
    t.string  "sittributaria",             limit: 255
    t.string  "unidade",                   limit: 255
    t.float   "valorcofins",                           null: false
    t.float   "valordesconto",                         null: false
    t.float   "valoricms",                             null: false
    t.float   "valoricmssubs",                         null: false
    t.float   "valoripi",                              null: false
    t.float   "valorpis",                              null: false
    t.integer "idnotafiscalmodelo1serie1"
    t.bigint  "idproduto"
  end

  create_table "t_produtonfseried1", primary_key: "idprodutonfseried1", id: :integer, force: :cascade do |t|
    t.float   "precovenda",          null: false
    t.float   "quantidade",          null: false
    t.integer "idnotafiscalseried1"
    t.bigint  "idproduto"
  end

  create_table "t_produtopedidodevenda", primary_key: "idprodutopedidodevenda", id: :integer, force: :cascade do |t|
    t.string  "status",                             limit: 1,                                            null: false
    t.float   "descontovalor",                                                                           null: false
    t.string  "lote",                               limit: 255
    t.integer "numeroitempedidocompra"
    t.string  "porcentagemmaxima",                  limit: 255
    t.boolean "promocao",                                                                                null: false
    t.float   "quantidade",                                                                              null: false
    t.decimal "quantidadeentregue",                             precision: 10, scale: 3, default: "0.0", null: false
    t.float   "quantidadeestoquenomomentodopedido",                                                      null: false
    t.float   "quantidademaxima",                                                                        null: false
    t.float   "valorcalculado",                                                                          null: false
    t.float   "valornegociado",                                                                          null: false
    t.float   "valororiginal",                                                                           null: false
    t.integer "idpedidodevenda"
    t.bigint  "idproduto"
  end

  create_table "t_produtopedidodevendacliente", primary_key: "idprodutopedidodevendacliente", id: :integer, force: :cascade do |t|
    t.string  "status",                 limit: 1,                                            null: false
    t.float   "descontovalor",                                                               null: false
    t.string  "lote",                   limit: 255
    t.boolean "promocao",                                                                    null: false
    t.float   "quantidade",                                                                  null: false
    t.decimal "quantidadeentregue",                 precision: 10, scale: 3, default: "0.0", null: false
    t.float   "quantidademaxima",                                                            null: false
    t.float   "valorcalculado",                                                              null: false
    t.float   "valornegociado",                                                              null: false
    t.float   "valororiginal",                                                               null: false
    t.bigint  "idproduto"
    t.integer "idpedidodevendacliente"
  end

  create_table "t_produtopedidoedi", primary_key: "idprodutoedi", id: :integer, force: :cascade do |t|
    t.string  "cor",         limit: 255
    t.string  "descricao",   limit: 255
    t.string  "ean",         limit: 255
    t.string  "marca",       limit: 255
    t.float   "precopedido",             null: false
    t.float   "precovenda",              null: false
    t.float   "quantidade",              null: false
    t.string  "referencia",  limit: 255
    t.string  "tamanho",     limit: 255
    t.integer "idpedidoedi"
  end

  create_table "t_produtoperdaprocessodefabricacao", primary_key: "idprodutoperdaprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.float   "quantidade",             null: false
    t.bigint  "idproduto"
    t.integer "idprocessodefabricacao"
  end

  create_table "t_produtoplanejamentofabricacao", primary_key: "idprodutoplanejamentofabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                                 limit: 255
    t.float   "quantidade",                                         null: false
    t.float   "quantidadeestoque",                                  null: false
    t.float   "quantidadeoutrosprocessos",                          null: false
    t.bigint  "idproduto"
    t.integer "idplanejamentofaseprocessodefabricacao"
  end

  create_table "t_produtopreorcamento", primary_key: "idprodutopreorcamento", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.float   "descontovalor",               null: false
    t.boolean "promocao",                    null: false
    t.float   "quantidade",                  null: false
    t.float   "valorcalculado",              null: false
    t.float   "valornegociado",              null: false
    t.float   "valororiginal",               null: false
    t.integer "idprodutoagregado"
    t.bigint  "idproduto"
    t.integer "idpreorcamento"
  end

  create_table "t_produtoprocessodefabricacao", primary_key: "idprodutoprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                     limit: 255
    t.float   "quantidade"
    t.integer "idnotafiscalentradaproduto"
    t.integer "idfaseprocessodefabricacao"
    t.bigint  "idproduto"
    t.integer "idprocessodefabricacao"
    t.integer "idromaneiodeentrada"
  end

  create_table "t_produtopromocao", primary_key: "idprodutopromocao", id: :integer, force: :cascade do |t|
    t.float   "precoatual"
    t.float   "precosugerido"
    t.float   "valorcusto"
    t.bigint  "idproduto"
    t.integer "idreferenciaproduto"
    t.integer "idpromocao"
  end

  create_table "t_produtoremarcacaopreco", primary_key: "idprodutoremarcacaopreco", id: :integer, force: :cascade do |t|
    t.float   "custocompralimpo"
    t.float   "custocontabillimpo"
    t.float   "descontoagregado"
    t.float   "dmantigo"
    t.float   "dmnovo"
    t.string  "ignorouparametrotolerancia", limit: 255
    t.float   "newcustocompralimpo"
    t.float   "newcustocontabillimpo"
    t.float   "newdescontoagregado"
    t.float   "newprecominimo"
    t.float   "newvalorcusto"
    t.float   "precoatual"
    t.float   "precominimo"
    t.float   "precosugerido"
    t.float   "valorcusto"
    t.integer "idreferenciaproduto"
    t.bigint  "idproduto"
    t.integer "idremarcacaopreco"
  end

  create_table "t_produtoromaneiodesaidadefabricacao", primary_key: "idprodutoromaneiodesaidadefabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                        limit: 255
    t.decimal "quantidade",                                precision: 10, scale: 2
    t.integer "idprodutoagregado"
    t.integer "idromaneiodesaidadefabricacao"
    t.bigint  "idproduto"
  end

  create_table "t_produtoromaneioentradapedido", primary_key: "idprodutoromaneioentradapedido", id: :integer, force: :cascade do |t|
    t.float   "quantidadeproduto",       null: false
    t.bigint  "idproduto"
    t.integer "idromaneioentradapedido"
  end

  create_table "t_produtosaidafaseordemfabricacao", primary_key: "idprodutosaidafaseordemfabricacao", id: :integer, force: :cascade do |t|
    t.float   "quantidadeprevista",             null: false
    t.float   "quantidadeproduzida",            null: false
    t.float   "valorcobradoporunidade",         null: false
    t.integer "idfaseordemfabricacao"
    t.integer "idprodutosaidafichatecnicafase"
    t.integer "idreferenciaproduto"
  end

  create_table "t_produtosaidafichatecnicafase", primary_key: "idprodutosaidafichatecnicafase", id: :integer, force: :cascade do |t|
    t.float   "precounitario",       null: false
    t.float   "quantidade",          null: false
    t.integer "idfichatecnicafase"
    t.integer "idreferenciaproduto"
  end

  create_table "t_produtotroca", primary_key: "idprodutotroca", id: :integer, force: :cascade do |t|
    t.string  "status",          limit: 1, null: false
    t.integer "codigoorcamento",           null: false
    t.integer "codigoromaneio",            null: false
    t.float   "quantidade"
    t.float   "valor"
    t.float   "valorunitario",             null: false
    t.bigint  "idproduto"
    t.integer "idmotivotroca"
    t.integer "idtroca"
    t.index ["codigoorcamento"], name: "idx_produtotroca_codigoorcamento", using: :btree
    t.index ["idproduto"], name: "idx_produtotroca_idproduto", using: :btree
    t.index ["idtroca"], name: "idx_produtotroca_idtroca", using: :btree
  end

  create_table "t_programacaopagamento", primary_key: "idprogramacaopagamento", id: :integer, force: :cascade do |t|
    t.string   "status",                           limit: 255
    t.datetime "datacadastro"
    t.datetime "datapagamento"
    t.datetime "dataprogramada"
    t.string   "observacao",                       limit: 255
    t.text     "observacaocancelamentoautorizada"
    t.integer  "iddespesa"
    t.integer  "idpagamentoduplicata"
    t.integer  "idpagamentodespesa"
    t.integer  "idduplicatapagar"
  end

  create_table "t_programacaopagamentoconta", primary_key: "idprogramacaopagamentoconta", id: :integer, force: :cascade do |t|
    t.string  "numerodeposito",         limit: 255
    t.decimal "valor",                              precision: 10, scale: 2
    t.integer "idprogramacaopagamento"
    t.integer "idformapagamento"
    t.integer "idconta"
  end

  create_table "t_programacaopagamentohistorico", primary_key: "idprogramacaopagamentohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",                 limit: 255
    t.integer  "idusuario"
    t.integer  "idprogramacaopagamento"
  end

  create_table "t_promocao", primary_key: "idpromocao", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 255
    t.string   "descricao",                    limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.datetime "dataencerramento"
    t.date     "datainicio"
    t.date     "datavalidade"
    t.string   "teveprodnovoprecomenorqcusto", limit: 255
    t.integer  "idusuarioencerramento"
    t.integer  "idsetor"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioautorizacao"
  end

  create_table "t_prorrogarcheque", primary_key: "idprorrogarcheque", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1, null: false
    t.date    "data"
    t.integer "idusuario"
    t.integer "idestabelecimento"
  end

  create_table "t_prorrogarchequeitem", primary_key: "idprorrogarchequeitem", id: :integer, force: :cascade do |t|
    t.date    "datavencimentooriginal"
    t.date    "datavencimentoprorrogada"
    t.decimal "jurosatual",               precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "jurosnovo",                precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idprorrogarcheque"
    t.integer "idcheque"
  end

  create_table "t_prorrogarduplicataareceber", primary_key: "idprorrogarduplicataareceber", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1, null: false
    t.date    "data"
    t.integer "idusuario"
  end

  create_table "t_prorrogarduplicataareceberitem", primary_key: "idprorrogarduplicataareceberitem", id: :integer, force: :cascade do |t|
    t.date    "datavencimentooriginal"
    t.date    "datavencimentoprorrogada"
    t.decimal "jurosatual",                   precision: 10, scale: 2, default: "0.0", null: false
    t.decimal "jurosnovo",                    precision: 10, scale: 2, default: "0.0", null: false
    t.integer "idprorrogarduplicataareceber"
    t.integer "idduplicataareceber"
  end

  create_table "t_protestoduplicataareceber", primary_key: "idprotestoduplicataareceber", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1, null: false
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.text     "motivo"
    t.integer  "idusuariocadastro"
    t.integer  "idcartorio"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_protestoduplicataareceberitem", primary_key: "idprotestoduplicataareceberitem", id: :integer, force: :cascade do |t|
    t.string   "status",                      limit: 1, null: false
    t.datetime "dataenvio"
    t.datetime "dataremocao"
    t.integer  "idduplicataareceber"
    t.integer  "idusuarioremocao"
    t.integer  "idprotestoduplicataareceber"
    t.integer  "idusuarioenvio"
  end

  create_table "t_r01", primary_key: "idr01", id: :bigint, force: :cascade do |t|
    t.string   "cnpjusuario",      limit: 255
    t.datetime "datainstacaosb"
    t.string   "erro",             limit: 255
    t.bigint   "idpafecf",                     null: false
    t.string   "ieusuario",        limit: 255
    t.string   "marcaecf",         limit: 255
    t.string   "mfadicional",      limit: 255
    t.string   "modelodoecf",      limit: 255
    t.integer  "numerodousuario",              null: false
    t.string   "numerofabricacao", limit: 255
    t.string   "tipoecf",          limit: 255
    t.string   "versaosb",         limit: 255
  end

  create_table "t_r02", primary_key: "idr02", id: :integer, force: :cascade do |t|
    t.string   "erro",                    limit: 255
    t.string   "hash",                    limit: 255
    t.string   "mfadicional",             limit: 255
    t.string   "modelodoecf",             limit: 255
    t.integer  "numerodousuario",                     null: false
    t.string   "numerofabricacao",        limit: 255
    t.integer  "coo",                                 null: false
    t.integer  "cro",                                 null: false
    t.integer  "crz",                                 null: false
    t.datetime "dataemissao"
    t.datetime "datamovimento"
    t.string   "incidenciadescontoissqn", limit: 255
    t.float    "totalizadorgeral",                    null: false
    t.float    "vendabrutadiaria",                    null: false
    t.integer  "idpafecf"
    t.integer  "idestabelecimento"
  end

  create_table "t_r03", primary_key: "idr03", id: :integer, force: :cascade do |t|
    t.string  "erro",               limit: 255
    t.string  "hash",               limit: 255
    t.string  "mfadicional",        limit: 255
    t.string  "modelodoecf",        limit: 255
    t.integer "numerodousuario",                null: false
    t.string  "numerofabricacao",   limit: 255
    t.integer "crz",                            null: false
    t.string  "totalizadorparcial", limit: 255
    t.float   "valoracumulado",                 null: false
    t.integer "idr02"
    t.integer "idestabelecimento"
    t.integer "idpafecf"
  end

  create_table "t_r04", primary_key: "idr04", id: :integer, force: :cascade do |t|
    t.string   "erro",                         limit: 255
    t.string   "hash",                         limit: 255
    t.string   "mfadicional",                  limit: 255
    t.string   "modelodoecf",                  limit: 255
    t.integer  "numerodousuario",                          null: false
    t.string   "numerofabricacao",             limit: 255
    t.float    "acrescimosubtotal",                        null: false
    t.string   "aplicacaodescontoouacrescimo", limit: 255
    t.float    "cancelamentodeacrescimo",                  null: false
    t.integer  "ccf",                                      null: false
    t.integer  "coo",                                      null: false
    t.string   "cpfcnpj",                      limit: 255
    t.datetime "dataemissao"
    t.float    "descontosubtotal",                         null: false
    t.string   "indicadordecancelamento",      limit: 255
    t.string   "nomecliente",                  limit: 255
    t.float    "subtotal",                                 null: false
    t.string   "tipoacrescimo",                limit: 255
    t.string   "tipodesconto",                 limit: 255
    t.float    "valortotalliquido",                        null: false
    t.integer  "idpafecf"
    t.integer  "idestabelecimento"
    t.index ["coo"], name: "idx_r04_coo", using: :btree
    t.index ["cpfcnpj"], name: "idx_r04_cpfcnpj", using: :btree
    t.index ["dataemissao"], name: "idx_r04_dataemissao", using: :btree
    t.index ["idestabelecimento"], name: "idx_r04_idestabelecimento", using: :btree
  end

  create_table "t_r05", primary_key: "idr05", id: :integer, force: :cascade do |t|
    t.string  "erro",                       limit: 255
    t.string  "hash",                       limit: 255
    t.string  "mfadicional",                limit: 255
    t.string  "modelodoecf",                limit: 255
    t.integer "numerodousuario",                        null: false
    t.string  "numerofabricacao",           limit: 255
    t.float   "acrescimoitem",                          null: false
    t.float   "cancelamentoacrescimoitem",              null: false
    t.integer "casasdecimaisquantidade",                null: false
    t.integer "casasdecimaisvalor",                     null: false
    t.integer "ccf",                                    null: false
    t.string  "codigobarra",                limit: 255
    t.bigint  "codigoproduto",                          null: false
    t.integer "coo",                                    null: false
    t.float   "descontoitem",                           null: false
    t.string  "descricao",                  limit: 255
    t.string  "indicadordearredondamento",  limit: 255
    t.string  "indicadordecancelamento",    limit: 255
    t.string  "indicadordeproducaopropria", limit: 255
    t.integer "numerodoitem",                           null: false
    t.float   "quantidade",                             null: false
    t.float   "quantidadecancelada",                    null: false
    t.string  "totalizadorparcial",         limit: 255
    t.string  "unidade",                    limit: 255
    t.float   "valorcancelado",                         null: false
    t.float   "valortotalliquido",                      null: false
    t.float   "valorunitario",                          null: false
    t.integer "idpafecf"
    t.integer "idr04"
    t.integer "idestabelecimento"
    t.index ["codigobarra"], name: "idx_r05_codigobarra", using: :btree
    t.index ["codigoproduto"], name: "idx_r05_codigoproduto", using: :btree
    t.index ["coo"], name: "idx_r05_coo", using: :btree
    t.index ["idestabelecimento"], name: "idx_r05_idestabelecimento", using: :btree
    t.index ["idr04"], name: "idx_r05_idr04", using: :btree
    t.index ["indicadordecancelamento"], name: "idx_r05_indicadorcancelamento", using: :btree
  end

  create_table "t_r06", primary_key: "idr06", id: :integer, force: :cascade do |t|
    t.string   "erro",              limit: 255
    t.string   "hash",              limit: 255
    t.string   "mfadicional",       limit: 255
    t.string   "modelodoecf",       limit: 255
    t.integer  "numerodousuario",               null: false
    t.string   "numerofabricacao",  limit: 255
    t.integer  "cdc",                           null: false
    t.integer  "coo",                           null: false
    t.datetime "dataemissao"
    t.string   "denominacao",       limit: 255
    t.integer  "gnf",                           null: false
    t.integer  "grg",                           null: false
    t.integer  "idpafecf"
    t.integer  "idestabelecimento"
  end

  create_table "t_r07", primary_key: "idr07", id: :integer, force: :cascade do |t|
    t.string  "erro",               limit: 255
    t.string  "hash",               limit: 255
    t.string  "mfadicional",        limit: 255
    t.string  "modelodoecf",        limit: 255
    t.integer "numerodousuario",                null: false
    t.string  "numerofabricacao",   limit: 255
    t.integer "ccf",                            null: false
    t.integer "coo",                            null: false
    t.integer "gnf",                            null: false
    t.string  "indicadordeestorno", limit: 255
    t.string  "meiodepagamento",    limit: 255
    t.float   "valorestornado",                 null: false
    t.float   "valorpago",                      null: false
    t.integer "idestabelecimento"
    t.integer "idpafecf"
    t.integer "idr06"
  end

  create_table "t_rateiosdespesa", primary_key: "idrateiosdespesa", id: :integer, force: :cascade do |t|
    t.float   "valor"
    t.float   "valornum"
    t.integer "iddespesa"
    t.integer "idestabelecimento"
    t.index ["idestabelecimento"], name: "idx_rateiosdespesa_idestabelecimento", using: :btree
  end

  create_table "t_recebimento", primary_key: "idrecebimento", id: :integer, force: :cascade do |t|
    t.string   "status",                   limit: 255
    t.string   "cadastroukardexfiscal",    limit: 255
    t.string   "calculoupreco",            limit: 255
    t.datetime "data"
    t.datetime "dataautorizacao"
    t.datetime "database"
    t.datetime "datacadastrokardexfiscal"
    t.datetime "datacancelamento"
    t.datetime "datapassagempostofiscal"
    t.datetime "datarecebimentoemloja"
    t.string   "numeroauxiliar",           limit: 255
    t.text     "observacao"
    t.float    "vipi"
    t.integer  "idromaneioentradapedido"
    t.integer  "idnotaentrada"
    t.integer  "idtransportadora"
    t.integer  "idnotasaida"
    t.integer  "idsetor"
    t.integer  "idromaneiodeentrada"
  end

  create_table "t_recebimentocte", primary_key: "idrecebimentocte", id: :integer, force: :cascade do |t|
    t.integer "idcte"
    t.integer "idrecebimento"
  end

  create_table "t_recebimentoduplicata", primary_key: "idrecebimentoduplicata", id: :integer, force: :cascade do |t|
    t.integer "idduplicatapagar"
    t.integer "idrecebimento"
  end

  create_table "t_recebimentohistorico", primary_key: "idrecebimentohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",        limit: 255
    t.integer  "idusuario"
    t.integer  "idrecebimento"
  end

  create_table "t_recebimentonaofiscal", primary_key: "idrecebimentonaofiscal", id: :integer, force: :cascade do |t|
    t.string   "status",                    limit: 1,                            null: false
    t.string   "coo",                       limit: 255
    t.string   "coocancelamento",           limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.datetime "horaimpressao"
    t.datetime "horaimpressaocancelamento"
    t.string   "numeroserieimpressora",     limit: 255
    t.text     "observacao"
    t.text     "observacaocancelamento"
    t.integer  "tipo",                                                           null: false
    t.decimal  "valor",                                 precision: 10, scale: 2
    t.integer  "idusuario"
    t.integer  "idusuariocancelamento"
    t.bigint   "idcaixa"
    t.integer  "idcliente"
    t.integer  "idpontodevenda"
    t.integer  "idfuncionario"
  end

  create_table "t_recebimentonotafiscalentrada", primary_key: "idrecebimentonotafiscalentrada", id: :integer, force: :cascade do |t|
    t.integer "idrecebimento"
    t.integer "idnotafiscalentrada"
  end

  create_table "t_recebimentopedido", primary_key: "idrecebimentopedido", id: :integer, force: :cascade do |t|
    t.integer "idrecebimento"
    t.integer "idpedido"
  end

  create_table "t_recebimentoproduto", primary_key: "idrecebimentoproduto", id: :integer, force: :cascade do |t|
    t.float   "precocusto"
    t.float   "precovenda"
    t.float   "quantidaderecebida"
    t.float   "quantidaderecebidafiscal"
    t.integer "idnotafiscalentradaproduto"
    t.integer "idrecebimento"
    t.bigint  "idproduto"
  end

  create_table "t_recibo", primary_key: "idrecibo", id: :integer, force: :cascade do |t|
    t.string   "status",      limit: 1,                            null: false
    t.string   "assinatura",  limit: 255
    t.string   "cidade",      limit: 255
    t.string   "cpfcnpj",     limit: 255
    t.datetime "data"
    t.string   "recebemosde", limit: 255
    t.string   "referente",   limit: 255
    t.string   "rgie",        limit: 255
    t.decimal  "valor",                   precision: 19, scale: 2
  end

  create_table "t_redecartao", primary_key: "idredecartao", id: :integer, force: :cascade do |t|
    t.string "status",            limit: 1,   null: false
    t.string "descricao",         limit: 255
    t.string "cnpjcredenciadora", limit: 255
  end

  create_table "t_reducoeszrestantespafecf", primary_key: "idreducoeszrestantespafecf", id: :integer, force: :cascade do |t|
    t.integer "reducoesrestantes", null: false
    t.integer "idpafecf"
  end

  create_table "t_referenciacomercialcliente", primary_key: "idreferenciacomercialcliente", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.float    "documentosavencer",                 null: false
    t.datetime "documentosavencerdata"
    t.string   "estado",                limit: 255
    t.float    "limitedecredito",                   null: false
    t.datetime "limitedecreditodata"
    t.float    "maiorcompra",                       null: false
    t.datetime "maiorcompradata"
    t.string   "municipio",             limit: 255
    t.string   "nome",                  limit: 255
    t.string   "observacao",            limit: 255
    t.string   "telefone",              limit: 255
    t.string   "tipopagamento",         limit: 255
    t.float    "ultimacompra",                      null: false
    t.datetime "ultimacompradata"
    t.string   "vendedor",              limit: 255
    t.integer  "idusuario"
    t.integer  "idcliente"
  end

  create_table "t_referenciapessoalcliente", primary_key: "idreferenciapessoalcliente", id: :integer, force: :cascade do |t|
    t.string  "email",               limit: 255
    t.string  "fax",                 limit: 255
    t.string  "graudeparentesco",    limit: 255
    t.string  "nome",                limit: 255
    t.string  "observacao",          limit: 255
    t.string  "telefonecelular",     limit: 255
    t.string  "telefonecomercial",   limit: 255
    t.string  "telefoneresidencial", limit: 255
    t.integer "idcliente"
    t.integer "idusuario"
  end

  create_table "t_referenciaproduto", primary_key: "idreferenciaproduto", id: :integer, force: :cascade do |t|
    t.string  "status",                       limit: 255
    t.string  "caminhoimagemproduto",         limit: 255
    t.string  "cest",                         limit: 255
    t.string  "codigobarra",                  limit: 255
    t.string  "codigobarraxmlentrada",        limit: 255
    t.string  "codigoservico",                limit: 255
    t.float   "fatorconversao",                           null: false
    t.string  "itemlistaservicos",            limit: 255
    t.string  "ncm",                          limit: 255
    t.string  "nome",                         limit: 255
    t.string  "nomefiscal",                   limit: 255
    t.string  "operacaofatorconversao",       limit: 255
    t.string  "origemproduto",                limit: 255
    t.string  "posseproduto",                 limit: 255
    t.string  "referencia",                   limit: 255
    t.string  "tipo",                         limit: 255
    t.string  "tipofaturamentokitproduto",    limit: 255
    t.string  "tiponacionalidade",            limit: 255
    t.string  "utilizanumeroserie",           limit: 255
    t.integer "idreferenciaprodutobase"
    t.bigint  "idprodutofaturamentogenerico"
    t.integer "idgrupoproduto"
    t.integer "idreferenciaprodutomodelo"
    t.integer "idsegmentoproduto"
    t.integer "idcomposicaoproduto"
    t.integer "idedi"
    t.integer "idmaterial"
    t.integer "idmarca"
    t.integer "idusuario"
    t.integer "idunidadecompra"
    t.integer "idgrade"
    t.integer "idkitproduto"
    t.integer "idsecao"
    t.integer "idprodutoespecifico"
    t.integer "idprodutogenerico"
    t.integer "idcondicaodelavagem"
    t.integer "idfornecedor"
    t.integer "idunidade"
    t.index ["codigobarra"], name: "idx_referenciaproduto_codigobarra", using: :btree
    t.index ["referencia"], name: "idx_referenciaproduto_referencia", using: :btree
  end

  create_table "t_referenciaprodutohistorico", primary_key: "idreferenciaprodutohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",              limit: 255
    t.integer  "idusuario"
    t.integer  "idreferenciaproduto"
  end

  create_table "t_referenciaprodutomodelo", primary_key: "idreferenciaprodutomodelo", id: :integer, force: :cascade do |t|
    t.string  "status",            limit: 1,                            null: false
    t.string  "descricao",         limit: 255
    t.boolean "passivelderecarga",                                      null: false
    t.decimal "pontuacao",                     precision: 19, scale: 7
    t.decimal "valordobem",                    precision: 19, scale: 7
    t.decimal "vidautil",                      precision: 15
  end

  create_table "t_referenciaprodutomodeloservicorealizado", primary_key: "idreferenciaprodutomodeloservicorealizado", id: :integer, force: :cascade do |t|
    t.integer "idreferenciaprodutomodelo"
    t.bigint  "idservico"
    t.boolean "servicoprincipal"
  end

  create_table "t_regiao", primary_key: "idregiao", id: :integer, force: :cascade do |t|
    t.decimal "multiplicador",             precision: 19, scale: 7
    t.string  "nome",          limit: 255
    t.integer "sla"
  end

  create_table "t_registromeiodepagamento", primary_key: "idregistromeiodepagamento", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.string   "formadepagamento",  limit: 255
    t.integer  "tipo",                          null: false
    t.float    "valor",                         null: false
    t.integer  "idestabelecimento"
    t.bigint   "idcaixa"
  end

  create_table "t_relatorio", primary_key: "idrelatorio", id: :integer, force: :cascade do |t|
    t.string "descricao", limit: 255
    t.string "nome",      limit: 255
  end

  create_table "t_relatoriogrupo", primary_key: "idrelatoriogrupo", id: :integer, force: :cascade do |t|
    t.string  "valor",       limit: 255
    t.integer "idrelatorio"
    t.integer "idgrupo"
  end

  create_table "t_remarcacaopreco", primary_key: "idremarcacaopreco", id: :integer, force: :cascade do |t|
    t.string   "status",                       limit: 1,   null: false
    t.string   "alterardm",                    limit: 255
    t.string   "alterouprecos",                limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.date     "datainicio"
    t.string   "teveprodnovoprecomenorqcusto", limit: 255
    t.integer  "idsetor"
    t.integer  "idusuariocadastro"
    t.integer  "idestabelecimento"
    t.integer  "idusuarioautorizacao"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_remessaavenda", primary_key: "idremessaavenda", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1, null: false
    t.datetime "datacancelamento"
    t.datetime "dataemissao"
    t.datetime "datafinalizacao"
    t.integer  "idusuariofinalizacao"
    t.integer  "idsetor"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocadastro"
    t.index ["idestabelecimento"], name: "idx_remessaavenda_idestabelecimento", using: :btree
    t.index ["idsetor"], name: "idx_remessaavenda_idsetor", using: :btree
    t.index ["status"], name: "idx_remessaavenda_status", using: :btree
  end

  create_table "t_renegociacaoduplicata", primary_key: "idrenegociacaoduplicata", id: :integer, force: :cascade do |t|
    t.date    "data"
    t.integer "idusuario"
  end

  create_table "t_requisicaoestoque", primary_key: "idrequisicaoestoque", id: :integer, force: :cascade do |t|
    t.string   "status",                   limit: 1,   null: false
    t.integer  "codigoentidaderequisicao",             null: false
    t.string   "complemento",              limit: 255
    t.datetime "dataautorizacao"
    t.datetime "datacadastro"
    t.integer  "finalidade",                           null: false
    t.integer  "idsetor"
    t.integer  "idestabelecimento"
    t.integer  "idusuariocadastro"
    t.integer  "idusuarioautorizacao"
    t.integer  "idfuncionarioentrega"
    t.index ["dataautorizacao"], name: "idx_requisicaoestoque_dataautorizacao", using: :btree
    t.index ["datacadastro"], name: "idx_requisicaoestoque_datacadastro", using: :btree
    t.index ["finalidade"], name: "idx_requisicaoestoque_finalidade", using: :btree
    t.index ["idestabelecimento"], name: "idx_requisicaoestoque_idestabelecimento", using: :btree
    t.index ["idsetor"], name: "idx_requisicaoestoque_idsetor", using: :btree
    t.index ["status"], name: "idx_requisicaoestoque_status", using: :btree
  end

  create_table "t_requisicaoestoqueitem", primary_key: "idrequisicaoestoqueitem", id: :integer, force: :cascade do |t|
    t.decimal "quantidadeliberada",   precision: 19, scale: 7, default: "0.0", null: false
    t.decimal "quantidadesolicitada", precision: 19, scale: 7, default: "0.0", null: false
    t.bigint  "idproduto"
    t.integer "idrequisicaoestoque"
  end

  create_table "t_requisicaoestoqueitemnumeroserie", primary_key: "idrequisicaoestoqueitemnumeroserie", id: :integer, force: :cascade do |t|
    t.integer "idestoquenumeroserie"
    t.integer "idrequisicaoestoqueitem"
  end

  create_table "t_reservamercadoria", primary_key: "idreservamercadoria", id: :integer, force: :cascade do |t|
    t.string   "status",                   limit: 255
    t.datetime "data"
    t.float    "quantidade",                           null: false
    t.integer  "idestabelecimentodestino"
    t.bigint   "idproduto"
    t.integer  "idcliente"
    t.integer  "idorcamento"
    t.integer  "idestabelecimentoorigem"
    t.integer  "idvendedor"
  end

  create_table "t_romaneiodeentrada", primary_key: "idromaneiodeentrada", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1, null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.text     "observacao"
    t.string   "tipo",                  limit: 1
    t.integer  "idusuariocancelamento"
    t.integer  "idusuario"
    t.integer  "idestabelecimento"
    t.index ["status"], name: "idx_romaneiodeentrada_status", using: :btree
  end

  create_table "t_romaneiodeentrega", primary_key: "idromaneiodeentrega", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1,   null: false
    t.string   "chefededeposito",       limit: 255
    t.datetime "datacadastro"
    t.datetime "datacancelamento"
    t.datetime "datachegada"
    t.float    "despesas"
    t.string   "entregador",            limit: 255
    t.string   "faturista",             limit: 255
    t.string   "horachegada",           limit: 255
    t.float    "kmchegada"
    t.float    "kmpartida"
    t.float    "verbaentrega"
    t.integer  "idusuariochegada"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idusuario"
  end

  create_table "t_romaneiodesaidadefabricacao", primary_key: "idromaneiodesaidadefabricacao", id: :integer, force: :cascade do |t|
    t.string   "status",                limit: 1, null: false
    t.datetime "data"
    t.datetime "datacancelamento"
    t.text     "observacao"
    t.integer  "idusuario"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
  end

  create_table "t_romaneioentradapedido", primary_key: "idromaneioentradapedido", id: :integer, force: :cascade do |t|
    t.string  "status",                   limit: 1, null: false
    t.date    "data"
    t.date    "datacancelamento"
    t.integer "numeropedido",                       null: false
    t.text    "observacao"
    t.integer "idusuarioestabelecimento"
    t.integer "idusuario"
  end

  create_table "t_romaneioorcamento", primary_key: "idromaneioorcamento", id: :integer, force: :cascade do |t|
    t.integer "sequencia",           null: false
    t.integer "idromaneiodeentrega"
    t.integer "idorcamento"
  end

  create_table "t_romaneioprocessodefabricacao", primary_key: "idromaneioprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string  "status",                     limit: 255
    t.integer "idprocessodefabricacao"
    t.integer "idromaneiodeentrada"
    t.integer "idfaseprocessodefabricacao"
  end

  create_table "t_secao", primary_key: "idsecao", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 255
    t.string "descricao", limit: 255
  end

  create_table "t_segmentocliente", primary_key: "idsegmentocliente", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 1,   null: false
    t.string  "descricao", limit: 255
    t.integer "tipo",                  null: false
  end

  create_table "t_segmentoproduto", primary_key: "idsegmentoproduto", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 255
    t.string "descricao", limit: 255
  end

  create_table "t_semanaplanovendafutura", primary_key: "idsemanaplanovendafutura", id: :integer, force: :cascade do |t|
    t.float   "faturamentosemana",  null: false
    t.integer "numsemana",          null: false
    t.float   "porcentagemsemana",  null: false
    t.integer "idestabelecimento"
    t.integer "idplanovendafutura"
  end

  create_table "t_servidornfe", primary_key: "idservidornfe", id: :integer, force: :cascade do |t|
    t.string "status",                limit: 1,   null: false
    t.string "descricao",             limit: 255
    t.string "nfeautorizacao",        limit: 255
    t.string "nfeconsultacadastro",   limit: 255
    t.string "nfeconsultadest",       limit: 255
    t.string "nfeconsultaprotocolo",  limit: 255
    t.string "nfedownloadnfe",        limit: 255
    t.string "nfeinutilizacao",       limit: 255
    t.string "nferecepcao",           limit: 255
    t.string "nferetautorizacao",     limit: 255
    t.string "nferetrecepcao",        limit: 255
    t.string "nfestatusservico",      limit: 255
    t.string "recepcaoevento",        limit: 255
    t.text   "nfceautorizacao"
    t.text   "nfceretautorizacao"
    t.text   "nfceinutilizacao"
    t.text   "nfceconsultaprotocolo"
    t.text   "nfcestatusservico"
    t.text   "nfcerecepcaoevento"
  end

  create_table "t_setor", primary_key: "idsetor", id: :integer, force: :cascade do |t|
    t.string  "status",           limit: 1,                             null: false
    t.string  "descricao",        limit: 255
    t.decimal "quantidademaxima",             precision: 19, scale: 10
    t.integer "tipo",                                                   null: false
  end

  create_table "t_solicitacao", primary_key: "idsolicitacao", id: :integer, force: :cascade do |t|
    t.string   "status",        limit: 1,   null: false
    t.string   "assunto",       limit: 255
    t.string   "cidade",        limit: 255
    t.datetime "data"
    t.string   "destinatario",  limit: 255
    t.string   "emitentecargo", limit: 255
    t.string   "emitentenome",  limit: 255
    t.string   "texto",         limit: 255
  end

  create_table "t_subgrupodespesa", primary_key: "idsubgrupodespesa", id: :integer, force: :cascade do |t|
    t.string  "status",         limit: 1,   null: false
    t.string  "descricao",      limit: 255
    t.string  "tipo",           limit: 255
    t.string  "tiporateio",     limit: 255
    t.string  "visivel",        limit: 255
    t.integer "idgrupodespesa"
  end

  create_table "t_subgrupodespesaauditada", primary_key: "idsubgrupodespesaauditada", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 1, null: false
    t.datetime "datadolimite"
    t.float    "limite"
    t.integer  "idestabelecimento"
    t.integer  "idsubgrupodespesa"
  end

  create_table "t_substituircheque", primary_key: "idsubstituircheque", id: :integer, force: :cascade do |t|
    t.string   "status",       limit: 255
    t.datetime "datacadastro"
    t.integer  "idcheque"
  end

  create_table "t_substituirchequeitem", primary_key: "idsubstituirchequeitem", id: :integer, force: :cascade do |t|
    t.string   "numeroagencia",      limit: 255
    t.string   "numerobanco",        limit: 255
    t.string   "numerocheque",       limit: 255
    t.string   "numeroconta",        limit: 255
    t.string   "terceiro",           limit: 255
    t.decimal  "valor",                          precision: 19, scale: 2
    t.datetime "vencimento"
    t.integer  "idestabelecimento"
    t.integer  "idchequenovo"
    t.integer  "idportador"
    t.integer  "idsubstituircheque"
    t.integer  "idcliente"
  end

  create_table "t_tamanho", primary_key: "idtamanho", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tamanhograde", primary_key: "idtamanhograde", id: :integer, force: :cascade do |t|
    t.integer "idtamanho"
    t.integer "idgrade"
  end

  create_table "t_tempo", id: false, force: :cascade do |t|
    t.bigint  "idtempo"
    t.date    "data"
    t.integer "ano"
    t.integer "mes"
    t.integer "dia"
    t.text    "descricaomes"
    t.text    "descricaodia"
    t.integer "diadoano"
    t.integer "ultimodiadomes"
    t.float   "diadasemana"
    t.integer "semanadomes"
    t.integer "trimestre"
    t.index ["data"], name: "idx_tempo_data", using: :btree
    t.index ["idtempo"], name: "idx_tempo_idtempo", using: :btree
  end

  create_table "t_tentativalogin", primary_key: "idtentativalogin", id: :bigint, force: :cascade do |t|
    t.datetime "data"
    t.integer  "idusuario",             null: false
    t.string   "ip",        limit: 255
    t.string   "login",     limit: 255
  end

  create_table "t_tipoajuste", primary_key: "idtipoajuste", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
    t.string "motivo",    limit: 255
  end

  create_table "t_tipoajusteconta", primary_key: "idtipoajusteconta", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipoajustefiscal", primary_key: "idtipoajustefiscal", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
    t.string "motivo",    limit: 255
  end

  create_table "t_tipobloqueiocliente", primary_key: "idtipobloqueiocliente", id: :integer, force: :cascade do |t|
    t.string "status",         limit: 1,   null: false
    t.string "descricao",      limit: 255
    t.string "cancelacliente", limit: 255
    t.string "tipobloqueio",   limit: 255
  end

  create_table "t_tipoconta", primary_key: "idtipoconta", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipofaseprocessodefabricacao", primary_key: "idtipofaseprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string "status",          limit: 1,                 null: false
    t.string "descricao",       limit: 255
    t.string "corativa",        limit: 255
    t.string "corfinalizada",   limit: 255
    t.string "correcebida",     limit: 255
    t.string "planejaprodutos", limit: 1,   default: "N"
    t.string "recebeemloja",    limit: 255
  end

  create_table "t_tipoitemprocessodefabricacao", primary_key: "idtipoitemprocessodefabricacao", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipolistaevento", primary_key: "idtipolistaevento", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipomovimentacaoconta", primary_key: "idtipomovimentacaoconta", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipoparametro", primary_key: "idtipoparametro", id: :integer, force: :cascade do |t|
    t.string  "status",    limit: 255
    t.string  "descricao", limit: 255
    t.integer "modulo",                null: false
  end

  create_table "t_tipoprodutoagregado", primary_key: "idtipoprodutoagregado", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipoprodutomodelofase", primary_key: "idtipoprodutomodelofase", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_tipoprodutomodelofaseentrada", primary_key: "idtipoprodutomodelofaseentrada", id: :integer, force: :cascade do |t|
    t.integer "idtipoprodutomodelofase"
    t.integer "idmodelofase"
  end

  create_table "t_tipoprodutomodelofasesaida", primary_key: "idtipoprodutomodelofasesaida", id: :integer, force: :cascade do |t|
    t.integer "idmodelofase"
    t.integer "idtipoprodutomodelofase"
  end

  create_table "t_tituloplanovendafutura", primary_key: "idtituloplanovendafutura", id: :integer, force: :cascade do |t|
    t.datetime "dataemissao"
    t.datetime "datavencimento"
    t.string   "parcela",               limit: 255
    t.float    "valor",                             null: false
    t.integer  "iddiaplanovendafutura"
    t.integer  "idcondicaopagamento"
    t.integer  "idestabelecimento"
  end

  create_table "t_transportadora", primary_key: "idtransportadora", id: :integer, force: :cascade do |t|
    t.string  "status",          limit: 255
    t.string  "apelido",         limit: 255
    t.string  "cpfcnpj",         limit: 255
    t.string  "email",           limit: 255
    t.string  "nome",            limit: 255
    t.text    "observacao"
    t.string  "rgie",            limit: 255
    t.string  "tipo",            limit: 255
    t.string  "enderecoextenso", limit: 255
    t.integer "idendereco"
    t.index ["cpfcnpj"], name: "idx_transportadora_cpfcnpj", using: :btree
    t.index ["nome"], name: "idx_transportadora_nome", using: :btree
    t.index ["status"], name: "idx_transportadora_status", using: :btree
  end

  create_table "t_transportadorainformacoesbancarias", primary_key: "idtransportadorainformacoesbancarias", id: :integer, force: :cascade do |t|
    t.string  "agencia",          limit: 255
    t.string  "cc",               limit: 255
    t.integer "idtransportadora"
    t.integer "idbanco"
  end

  create_table "t_tributacaoestabelecimento", primary_key: "idtributacaoestabelecimento", id: :integer, force: :cascade do |t|
    t.integer "idtributacao"
    t.integer "idestabelecimento"
  end

  create_table "t_tributacaoproduto", primary_key: "idtributacaoproduto", id: :integer, force: :cascade do |t|
    t.string  "status",                          limit: 1,   null: false
    t.string  "descricao",                       limit: 255
    t.float   "aliquota",                                    null: false
    t.float   "aliquotaicmsst",                              null: false
    t.string  "codigoimpfiscal",                 limit: 4,   null: false
    t.integer "indiss"
    t.integer "indincentivo"
    t.float   "percentualdareducaodebc",                     null: false
    t.float   "percentualmargemvaloradicionado",             null: false
    t.string  "tipotributacao",                  limit: 1,   null: false
  end

  create_table "t_troca", primary_key: "idtroca", id: :integer, force: :cascade do |t|
    t.string   "status",                          limit: 1,                 null: false
    t.string   "creditonacontacorrentedocliente", limit: 1,   default: "N", null: false
    t.datetime "data"
    t.datetime "dataautorizacao"
    t.datetime "datacancelamento"
    t.string   "nomecliente",                     limit: 255
    t.string   "observacao",                      limit: 255
    t.integer  "quantidadeprodutos"
    t.float    "valortotalprodutos"
    t.integer  "idusuarioautorizacao"
    t.bigint   "idcaixa"
    t.integer  "idcliente"
    t.integer  "idusuariocancelamento"
    t.integer  "idestabelecimento"
    t.integer  "idlistaevento"
    t.integer  "idusuario"
    t.index ["data"], name: "idx_troca_data", using: :btree
    t.index ["idcliente"], name: "idx_troca_idcliente", using: :btree
    t.index ["idestabelecimento"], name: "idx_troca_idestabelecimento", using: :btree
    t.index ["status"], name: "idx_troca_status", using: :btree
  end

  create_table "t_turnoatendimento", primary_key: "idturnoatendimento", id: :integer, force: :cascade do |t|
    t.string  "descricao",       limit: 255
    t.decimal "quantidadehoras",             precision: 19, scale: 7
    t.integer "status"
  end

  create_table "t_uf", primary_key: "iduf", id: :integer, force: :cascade do |t|
    t.string "sigla", limit: 255
  end

  create_table "t_unidade", primary_key: "idunidade", id: :integer, force: :cascade do |t|
    t.string "status",      limit: 1,   null: false
    t.string "descricao",   limit: 255
    t.string "fracionavel", limit: 255
  end

  create_table "t_unidadenegocio", primary_key: "idunidadenegocio", id: :integer, force: :cascade do |t|
    t.string "status",    limit: 1,   null: false
    t.string "descricao", limit: 255
  end

  create_table "t_urlbaseqrcode", primary_key: "idurlbaseqrcode", id: :integer, force: :cascade do |t|
    t.string "uf",            limit: 255
    t.text   "urlbaseqrcode"
    t.text   "urlconsulta"
  end

  create_table "t_usuario", primary_key: "idusuario", id: :integer, default: -> { "nextval('s_usuario'::regclass)" }, force: :cascade do |t|
    t.string   "status",                 limit: 1,                null: false
    t.string   "email",                  limit: 255
    t.string   "login",                  limit: 255
    t.string   "nome",                   limit: 255
    t.string   "senha",                  limit: 255
    t.boolean  "usuariotodaslojas",                               null: false
    t.integer  "idgrupo"
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_t_usuario_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_t_usuario_on_reset_password_token", unique: true, using: :btree
  end

  create_table "t_usuarioestabelecimento", primary_key: "idusuarioestabelecimento", id: :integer, force: :cascade do |t|
    t.integer "ordenacao",         null: false
    t.integer "idusuario"
    t.integer "idestabelecimento"
  end

  create_table "t_usuariohistorico", primary_key: "idusuariohistorico", id: :integer, force: :cascade do |t|
    t.datetime "data"
    t.text     "observacao"
    t.string   "status",            limit: 255
    t.integer  "idusuarioalterado"
    t.integer  "idusuario"
  end

  create_table "t_valecredito", primary_key: "idvalecredito", id: :integer, force: :cascade do |t|
    t.string   "status",            limit: 1,                          null: false
    t.datetime "datacadastro"
    t.datetime "dataconcessao"
    t.text     "observacao"
    t.decimal  "valor",                       precision: 19, scale: 2
    t.integer  "idfuncionario"
    t.integer  "idusuariocadastro"
  end

  create_table "t_venda", primary_key: "idvenda", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,               null: false
    t.string   "cnpjcliente",                limit: 255
    t.string   "coo",                        limit: 255
    t.string   "coocancelamento",            limit: 255
    t.string   "cpfcliente",                 limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "diferenca"
    t.datetime "horaimpressao"
    t.datetime "horaimpressaocancelamento"
    t.string   "isvendaconfirmada",          limit: 255
    t.string   "nomecliente",                limit: 255
    t.string   "numerofabricacaoimpressora", limit: 255
    t.string   "numeroserieimpressora",      limit: 255
    t.integer  "tipo",                                   default: 0
    t.float    "totalcompra"
    t.integer  "idorcamento"
    t.integer  "idnotafiscalmodelo1serie1"
    t.integer  "idcliente"
    t.integer  "idpontodevenda"
    t.integer  "idnotafiscalservico"
    t.integer  "idusuario"
    t.integer  "idnotafiscaleletronica"
    t.bigint   "idcaixa"
    t.integer  "idusuariocancelamento"
    t.integer  "idcondicaopagamento"
    t.index ["data"], name: "idx_venda_data", using: :btree
    t.index ["idcaixa"], name: "idx_venda_idcaixa", using: :btree
    t.index ["idcliente"], name: "idx_venda_idcliente", using: :btree
    t.index ["idorcamento"], name: "idx_venda_idorcamento", using: :btree
    t.index ["idpontodevenda"], name: "idx_venda_idpontodevenda", using: :btree
    t.index ["status"], name: "idx_venda_status", using: :btree
  end

  create_table "t_vendacomplementar", primary_key: "idvendacomplementar", id: :integer, force: :cascade do |t|
    t.string   "status",                     limit: 1,   null: false
    t.string   "cnpjcliente",                limit: 255
    t.string   "coo",                        limit: 255
    t.string   "coocancelamento",            limit: 255
    t.string   "cpfcliente",                 limit: 255
    t.datetime "data"
    t.datetime "datacancelamento"
    t.float    "diferenca"
    t.datetime "horaimpressao"
    t.datetime "horaimpressaocancelamento"
    t.string   "isvendaconfirmada",          limit: 255
    t.string   "nomecliente",                limit: 255
    t.string   "numerofabricacaoimpressora", limit: 255
    t.string   "numeroserieimpressora",      limit: 255
    t.float    "totalcompra"
    t.integer  "idnotafiscaleletronica"
    t.integer  "idcondicaopagamento"
    t.bigint   "idcaixa"
    t.integer  "idorcamentocomplementar"
    t.integer  "idpontodevenda"
    t.integer  "idnotafiscalmodelo1serie1"
    t.integer  "idusuario"
    t.integer  "idcliente"
    t.integer  "idusuariocancelamento"
  end

  create_table "t_vendedordameta", primary_key: "idvendedordameta", id: :integer, force: :cascade do |t|
    t.float   "percentual",     null: false
    t.integer "idvendedor"
    t.integer "idmetavendedor"
  end

  add_foreign_key "log_bairro", "log_localidade", column: "loc_nu_sequencial", primary_key: "loc_nu_sequencial", name: "fk2c258360b03808fb"
  add_foreign_key "log_localidade", "log_localidade", column: "loc_nu_sequencial_sub", primary_key: "loc_nu_sequencial", name: "fk768e991783419fc"
  add_foreign_key "log_logradouro", "log_bairro", column: "bai_nu_sequencial_fim", primary_key: "bai_nu_sequencial", name: "fk8656c46fdeb39d9"
  add_foreign_key "log_logradouro", "log_bairro", column: "bai_nu_sequencial_ini", primary_key: "bai_nu_sequencial", name: "fk8656c46fdeb45b3"
  add_foreign_key "log_logradouro", "log_localidade", column: "loc_nu_sequencial", primary_key: "loc_nu_sequencial", name: "fk8656c46fb03808fb"
  add_foreign_key "t_adiantamento", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fke40137dcef63c7d0"
  add_foreign_key "t_adiantamento", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fke40137dc793c5f10"
  add_foreign_key "t_adiantamento", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fke40137dc4cfaeacb"
  add_foreign_key "t_adiantamentodecimoterceiro", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk8e77d3a8ef63c7d0"
  add_foreign_key "t_adiantamentodecimoterceiro", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk8e77d3a8793c5f10"
  add_foreign_key "t_adiantamentodecimoterceiro", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk8e77d3a84cfaeacb"
  add_foreign_key "t_adiantamentodecimoterceirohistorico", "t_adiantamentodecimoterceiro", column: "idadiantamentodecimoterceiro", primary_key: "idadiantamentodecimoterceiro", name: "fkacc8b928c1ec4f43"
  add_foreign_key "t_adiantamentodecimoterceirohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkacc8b928512ff192"
  add_foreign_key "t_adiantamentohistorico", "t_adiantamento", column: "idadiantamento", primary_key: "idadiantamento", name: "fkd07acf746f99b2e6"
  add_foreign_key "t_adiantamentohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd07acf74512ff192"
  add_foreign_key "t_adicionaldecimoterceirofuncionariohistorico", "t_adicionalfuncionariodecimoterceiro", column: "idadicionalfuncionario", primary_key: "idadicionalfuncionariodecimoterceiro", name: "fk5fdd2a0c7a9f643f"
  add_foreign_key "t_adicionaldecimoterceirofuncionariohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk5fdd2a0c512ff192"
  add_foreign_key "t_adicionalfuncionario", "t_adicionaldesconto", column: "idadicionaldesconto", primary_key: "idadicionaldesconto", name: "fkf3833f50baea50cd"
  add_foreign_key "t_adicionalfuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkf3833f50793c5f10"
  add_foreign_key "t_adicionalfuncionario", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkf3833f504cfaeacb"
  add_foreign_key "t_adicionalfuncionariodecimoterceiro", "t_adicionaldescontodecimoterceiro", column: "idadicionaldescontodecimoterceiro", primary_key: "idadicionaldescontodecimoterceiro", name: "fk9cdc01cb3881bd1"
  add_foreign_key "t_adicionalfuncionariodecimoterceiro", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk9cdc01c793c5f10"
  add_foreign_key "t_adicionalfuncionariodecimoterceiro", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk9cdc01c4cfaeacb"
  add_foreign_key "t_adicionalfuncionariohistorico", "t_adicionalfuncionario", column: "idadicionalfuncionario", primary_key: "idadicionalfuncionario", name: "fkc697ea80239200df"
  add_foreign_key "t_adicionalfuncionariohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc697ea80512ff192"
  add_foreign_key "t_afastamento", "t_dadosafastamentodefinitivo", column: "iddadosafastamentodefinitivo", primary_key: "iddadosafastamentodefinitivo", name: "fkda469e02af1a89ce"
  add_foreign_key "t_afastamento", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkda469e02793c5f10"
  add_foreign_key "t_afastamento", "t_usuario", column: "idusuarioaprovacaodiretoria", primary_key: "idusuario", name: "fkda469e023d044c2f"
  add_foreign_key "t_afastamento", "t_usuario", column: "idusuarioaprovacaorh", primary_key: "idusuario", name: "fkda469e02ab7f4e1c"
  add_foreign_key "t_afastamento", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkda469e024cfaeacb"
  add_foreign_key "t_afastamento", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkda469e02fae1931c"
  add_foreign_key "t_afastamentohistorico", "t_afastamento", column: "idafastamento", primary_key: "idafastamento", name: "fk9dcef40ef003c4aa"
  add_foreign_key "t_afastamentohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9dcef40e512ff192"
  add_foreign_key "t_agendamentoentregamontagem", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk13e331f4230e4df4"
  add_foreign_key "t_agendamentoentregamontagem", "t_orcamentocomplementar", column: "idorcamento", primary_key: "idorcamentocomplementar", name: "fk13e331f47aee3c6b"
  add_foreign_key "t_agendamentoentregamontagem", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk13e331f4fae1931c"
  add_foreign_key "t_agendamentoentregamontagem", "t_usuario", column: "idusuarioconfirmacao", primary_key: "idusuario", name: "fk13e331f456e10edc"
  add_foreign_key "t_agendarelatorioresultado", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk9d52bef18e0bb6a4"
  add_foreign_key "t_agendarelatorioresultado", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk9d52bef13d508472"
  add_foreign_key "t_agendarelatorioresultado", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk9d52bef14cfaeacb"
  add_foreign_key "t_agendarelatorioresultado", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk9d52bef1fae1931c"
  add_foreign_key "t_ajusteconta", "t_conta", column: "idconta", primary_key: "idconta", name: "fk2863358cd68ea597"
  add_foreign_key "t_ajusteconta", "t_tipoajusteconta", column: "idtipoajusteconta", primary_key: "idtipoajusteconta", name: "fk2863358c5aff5e3f"
  add_foreign_key "t_ajusteconta", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk2863358c512ff192"
  add_foreign_key "t_ajusteconta", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk2863358cfae1931c"
  add_foreign_key "t_ajusteestoque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd5e6d558e0bb6a4"
  add_foreign_key "t_ajusteestoque", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fkd5e6d55b653eec6"
  add_foreign_key "t_ajusteestoque", "t_tipoajuste", column: "idtipoajuste", primary_key: "idtipoajuste", name: "fkd5e6d5584abffed"
  add_foreign_key "t_ajusteestoque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd5e6d55512ff192"
  add_foreign_key "t_ajusteestoque", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fkd5e6d55d4c92730"
  add_foreign_key "t_ajusteestoque", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkd5e6d55fae1931c"
  add_foreign_key "t_ajusteestoquefiscal", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk23faff738e0bb6a4"
  add_foreign_key "t_ajusteestoquefiscal", "t_tipoajustefiscal", column: "idtipoajustefiscal", primary_key: "idtipoajustefiscal", name: "fk23faff739811f9c9"
  add_foreign_key "t_ajusteestoquefiscal", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk23faff73512ff192"
  add_foreign_key "t_ajusteestoquefiscal", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk23faff73d4c92730"
  add_foreign_key "t_ajusteestoquefiscal", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk23faff73fae1931c"
  add_foreign_key "t_aplicacaomaquina", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkccc520884cfaeacb"
  add_foreign_key "t_aplicacaomaquina", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkccc52088fae1931c"
  add_foreign_key "t_arquivocte", "t_cte", column: "idcte", primary_key: "idcte", name: "fk3bdd59124b4be88f"
  add_foreign_key "t_arquivodpecnfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk8bc66f412a4b1c73"
  add_foreign_key "t_arquivonfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk95c4f4ab2a4b1c73"
  add_foreign_key "t_arquivonfe", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk95c4f4ab1112efb"
  add_foreign_key "t_arquivonfecontingencia", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk883ca4d2a4b1c73"
  add_foreign_key "t_arquivonfecontingencia", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk883ca4d1112efb"
  add_foreign_key "t_arquivosolicitacaonfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk4b69df0a2a4b1c73"
  add_foreign_key "t_arraylotecheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk4bae47a397135217"
  add_foreign_key "t_arraylotecheque", "t_lotecheque", column: "idlotecheque", primary_key: "idlotecheque", name: "fk4bae47a366be6c1f"
  add_foreign_key "t_arrayrenegociacaoduplicata", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fkf7fe4ab13031d808"
  add_foreign_key "t_arrayrenegociacaoduplicata", "t_renegociacaoduplicata", column: "idrenegociacaoduplicata", primary_key: "idrenegociacaoduplicata", name: "fkf7fe4ab193dff976"
  add_foreign_key "t_assistenciaproduto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkbd5b85db8e0bb6a4"
  add_foreign_key "t_assistenciaproduto", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkbd5b85db9c483131"
  add_foreign_key "t_assistenciaprodutoitem", "t_assistenciaproduto", column: "idassistenciaproduto", primary_key: "idassistenciaproduto", name: "fkf6420f8e4230207b"
  add_foreign_key "t_assistenciaprodutoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkf6420f8e7f9a249e"
  add_foreign_key "t_associacaoxmlproduto", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk667ef9f11112efb"
  add_foreign_key "t_associacaoxmlproduto", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk667ef9f17f9a249e"
  add_foreign_key "t_atividadenivel", "t_atividade", column: "idatividade", primary_key: "idatividade", name: "fk21b2aaa68957e181"
  add_foreign_key "t_atividadenivelhistorico", "t_atividadenivel", column: "idatividadenivel", primary_key: "idatividadenivel", name: "fke03cdfea2142c8ef"
  add_foreign_key "t_atividadenivelhistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fke03cdfea512ff192"
  add_foreign_key "t_atributogrupo", "t_grupo", column: "idgrupo", primary_key: "idgrupo", name: "fk5adfffe6961d7988"
  add_foreign_key "t_atributogrupo", "t_permissaogrupo", column: "idpermissaogrupo", primary_key: "idpermissaogrupo", name: "fk5adfffe62666da6e"
  add_foreign_key "t_auditoriacaixa", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk1f39f0698e0bb6a4"
  add_foreign_key "t_autorizada", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk5b7a1bf5dfb101a3"
  add_foreign_key "t_baixaservico", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkeddbbcf77f9a249e"
  add_foreign_key "t_baixaservico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkeddbbcf7512ff192"
  add_foreign_key "t_balanco", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk820519db8e0bb6a4"
  add_foreign_key "t_balanco", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk820519dbb653eec6"
  add_foreign_key "t_balanco", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk820519dbd4c92730"
  add_foreign_key "t_balanco", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk820519dbfae1931c"
  add_foreign_key "t_balancoautonomo", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk8c0e904d8e0bb6a4"
  add_foreign_key "t_balancoautonomo", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk8c0e904db653eec6"
  add_foreign_key "t_balancoautonomo", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8c0e904d512ff192"
  add_foreign_key "t_balancoautonomo", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk8c0e904dd4c92730"
  add_foreign_key "t_balancoautonomo", "t_usuario", column: "idusuariofinalizacao", primary_key: "idusuario", name: "fk8c0e904de47ee5c3"
  add_foreign_key "t_balancoautonomoestoque", "t_balancoautonomo", column: "idbalancoautonomo", primary_key: "idbalancoautonomo", name: "fk5d0c096bbb9dbd67"
  add_foreign_key "t_balancoautonomoestoque", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk5d0c096b7f9a249e"
  add_foreign_key "t_balancoautonomoestoque", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk5d0c096bd83577dc"
  add_foreign_key "t_balancoautonomoitem", "t_balancoautonomo", column: "idbalancoautonomo", primary_key: "idbalancoautonomo", name: "fkc6a69100bb9dbd67"
  add_foreign_key "t_balancoautonomoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkc6a691007f9a249e"
  add_foreign_key "t_balancoautonomoitem", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fkc6a69100d83577dc"
  add_foreign_key "t_balancoautonomoitem", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc6a69100512ff192"
  add_foreign_key "t_balancoautonomoitemnaoencontrado", "t_balancoautonomo", column: "idbalancoautonomo", primary_key: "idbalancoautonomo", name: "fke71a75f1bb9dbd67"
  add_foreign_key "t_balancoautonomoitemnaoencontrado", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fke71a75f17f9a249e"
  add_foreign_key "t_balancoautonomoitemnaoencontrado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fke71a75f1512ff192"
  add_foreign_key "t_balancoautonomomarca", "t_balancoautonomo", column: "idbalancoautonomo", primary_key: "idbalancoautonomo", name: "fke5b79efbb9dbd67"
  add_foreign_key "t_balancoautonomomarca", "t_marca", column: "idmarca", primary_key: "idmarca", name: "fke5b79eff1e3e624"
  add_foreign_key "t_balancoitem", "t_balanco", column: "idbalanco", primary_key: "idbalanco", name: "fk6401a38ef69771a3"
  add_foreign_key "t_balancoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk6401a38e7f9a249e"
  add_foreign_key "t_balancoitem", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk6401a38ed83577dc"
  add_foreign_key "t_balancoitem", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk6401a38e512ff192"
  add_foreign_key "t_balancoitemnaoencontrado", "t_balanco", column: "idbalanco", primary_key: "idbalanco", name: "fkf6d27a23f69771a3"
  add_foreign_key "t_balancoitemnaoencontrado", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkf6d27a237f9a249e"
  add_foreign_key "t_balancoitemnaoencontrado", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fkf6d27a23d83577dc"
  add_foreign_key "t_balancoitemnaoencontrado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf6d27a23512ff192"
  add_foreign_key "t_bloqueiocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk6abe2c4dc030896d"
  add_foreign_key "t_bloqueiocliente", "t_tipobloqueiocliente", column: "idtipobloqueiocliente", primary_key: "idtipobloqueiocliente", name: "fk6abe2c4d7cfb56cd"
  add_foreign_key "t_bloqueiocliente", "t_usuario", column: "idusuariobloqueio", primary_key: "idusuario", name: "fk6abe2c4d3ea5bff4"
  add_foreign_key "t_bloqueiocliente", "t_usuario", column: "idusuariodesbloqueio", primary_key: "idusuario", name: "fk6abe2c4d408e73c0"
  add_foreign_key "t_caixa", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk176a4298e0bb6a4"
  add_foreign_key "t_caixa", "t_fundocaixa", column: "idfundocaixa", primary_key: "idfundocaixa", name: "fk176a4293d09191c"
  add_foreign_key "t_caixa", "t_pontodevenda", column: "idpontovenda", primary_key: "idpontodevenda", name: "fk176a429cd330d87"
  add_foreign_key "t_caixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk176a429512ff192"
  add_foreign_key "t_caixa", "t_usuario", column: "idusuariofechamento", primary_key: "idusuario", name: "fk176a429860a346"
  add_foreign_key "t_cancelamentonfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk937949582a4b1c73"
  add_foreign_key "t_cancelamentonfe", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk93794958512ff192"
  add_foreign_key "t_carne", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk185ccc0c030896d"
  add_foreign_key "t_carne", "t_conta", column: "idconta", primary_key: "idconta", name: "fk185ccc0d68ea597"
  add_foreign_key "t_carne", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk185ccc08e0bb6a4"
  add_foreign_key "t_carne", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk185ccc0f2ba8032"
  add_foreign_key "t_carne", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk185ccc0230e4df4"
  add_foreign_key "t_carne", "t_orcamentocomplementar", column: "idorcamentocomplementar", primary_key: "idorcamentocomplementar", name: "fk185ccc07d03d5c2"
  add_foreign_key "t_carne", "t_portador", column: "idportador", primary_key: "idportador", name: "fk185ccc066abdf7d"
  add_foreign_key "t_carne", "t_portador", column: "idportadorcobranca", primary_key: "idportador", name: "fk185ccc05e368e84"
  add_foreign_key "t_carne", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk185ccc0512ff192"
  add_foreign_key "t_carne", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk185ccc0fae1931c"
  add_foreign_key "t_carnepagamentotitulo", "t_carne", column: "idcarne", primary_key: "idcarne", name: "fk1fde757fae1cbd45"
  add_foreign_key "t_carnepagamentotitulo", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk1fde757f32a312a9"
  add_foreign_key "t_carnepago", "t_carne", column: "idcarne", primary_key: "idcarne", name: "fkfc774379ae1cbd45"
  add_foreign_key "t_carnepago", "t_pagamentocarne", column: "idpagamentocarne", primary_key: "idpagamentocarne", name: "fkfc774379a6cd22db"
  add_foreign_key "t_cartadecorrecaoeletronica", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkda24e03b8e0bb6a4"
  add_foreign_key "t_cartadecorrecaoeletronica", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkda24e03b2a4b1c73"
  add_foreign_key "t_cartadecorrecaoeletronica", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkda24e03b512ff192"
  add_foreign_key "t_cartaocredito", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fka30508bdc71f7168"
  add_foreign_key "t_cartorio", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk5c9458f4dfb101a3"
  add_foreign_key "t_chamado", "t_chamado", column: "idchamadooriginal", primary_key: "idchamado", name: "fk89da76b0a792cedc"
  add_foreign_key "t_chamado", "t_chamadodefeito", column: "idchamadodefeito", primary_key: "idchamadodefeito", name: "fk89da76b0359657bd"
  add_foreign_key "t_chamado", "t_chamadotipo", column: "idchamadotipo", primary_key: "idchamadotipo", name: "fk89da76b0e7b92213"
  add_foreign_key "t_chamado", "t_contratoplanoinstalacao", column: "idcontratoplanoinstalacao", primary_key: "idcontratoplanoinstalacao", name: "fk89da76b078c1c9ca"
  add_foreign_key "t_chamado", "t_diagnostico", column: "iddiagnostico", primary_key: "iddiagnostico", name: "fk89da76b0a0f33665"
  add_foreign_key "t_chamado", "t_estabelecimento", column: "idestabelecimentoatendimento", primary_key: "idestabelecimento", name: "fk89da76b0f3b3d562"
  add_foreign_key "t_chamado", "t_funcionario", column: "idtecnicoresponsavel", primary_key: "idfuncionario", name: "fk89da76b0d6073b2"
  add_foreign_key "t_chamado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk89da76b0512ff192"
  add_foreign_key "t_chamadocontadorservico", "t_chamado", column: "idchamado", primary_key: "idchamado", name: "fk5b68fb77698a850b"
  add_foreign_key "t_chamadocontadorservico", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk5b68fb777f9a249e"
  add_foreign_key "t_chamadoitemconsumo", "t_chamado", column: "idchamado", primary_key: "idchamado", name: "fkc4084c3698a850b"
  add_foreign_key "t_chamadoitemconsumo", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkc4084c37f9a249e"
  add_foreign_key "t_chamadoitemconsumoservico", "t_chamadoitemconsumo", column: "idchamadoitemconsumo", primary_key: "idchamadoitemconsumo", name: "fk88777c7cedbba0fb"
  add_foreign_key "t_chamadoitemconsumoservico", "t_produto", column: "idservico", primary_key: "idproduto", name: "fk88777c7c8501c64"
  add_foreign_key "t_chamadotipogrupoproduto", "t_chamadotipo", column: "idchamadotipo", primary_key: "idchamadotipo", name: "fk9644c654e7b92213"
  add_foreign_key "t_chamadotipogrupoproduto", "t_grupoproduto", column: "idgrupoproduto", primary_key: "idgrupoproduto", name: "fk9644c6547064b194"
  add_foreign_key "t_cheque", "t_alinea", column: "idalinea", primary_key: "idalinea", name: "fk2f90948c90b4342d"
  add_foreign_key "t_cheque", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk2f90948cc030896d"
  add_foreign_key "t_cheque", "t_conta", column: "idconta", primary_key: "idconta", name: "fk2f90948cd68ea597"
  add_foreign_key "t_cheque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk2f90948c8e0bb6a4"
  add_foreign_key "t_cheque", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk2f90948c9c483131"
  add_foreign_key "t_cheque", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk2f90948cf2ba8032"
  add_foreign_key "t_cheque", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk2f90948c230e4df4"
  add_foreign_key "t_cheque", "t_origemexterna", column: "idorigemexterna", primary_key: "idorigemexterna", name: "fk2f90948c97d1ac5b"
  add_foreign_key "t_cheque", "t_portador", column: "idportador", primary_key: "idportador", name: "fk2f90948c66abdf7d"
  add_foreign_key "t_cheque", "t_portador", column: "idportadorcobranca", primary_key: "idportador", name: "fk2f90948c5e368e84"
  add_foreign_key "t_cheque", "t_recebimentonaofiscal", column: "idrecebimentonaofiscal", primary_key: "idrecebimentonaofiscal", name: "fk2f90948c9297cdbb"
  add_foreign_key "t_cheque", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk2f90948cb209b97e"
  add_foreign_key "t_cheque", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk2f90948cfae1931c"
  add_foreign_key "t_cheque", "t_usuario", column: "idusuariopagamento", primary_key: "idusuario", name: "fk2f90948cbfdd3ab2"
  add_foreign_key "t_chequepagamentocarne", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk7b268b197135217"
  add_foreign_key "t_chequepagamentocarne", "t_pagamentocarne", column: "idpagamentocarne", primary_key: "idpagamentocarne", name: "fk7b268b1a6cd22db"
  add_foreign_key "t_chequepagamentotitulo", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk9f2d807397135217"
  add_foreign_key "t_chequepagamentotitulo", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk9f2d807332a312a9"
  add_foreign_key "t_cliente", "t_cliente", column: "idclienteassociado", primary_key: "idcliente", name: "fk911b24efb2310c87"
  add_foreign_key "t_cliente", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk911b24efdfb101a3"
  add_foreign_key "t_cliente", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk911b24ef8e0bb6a4"
  add_foreign_key "t_cliente", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk911b24ef793c5f10"
  add_foreign_key "t_cliente", "t_segmentocliente", column: "idsegmentocliente", primary_key: "idsegmentocliente", name: "fk911b24ef46a8fa15"
  add_foreign_key "t_clienteperfildeatuacaocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk329a6484c030896d"
  add_foreign_key "t_clienteperfildeatuacaocliente", "t_perfildeatuacaocliente", column: "idperfildeatuacaocliente", primary_key: "idperfildeatuacaocliente", name: "fk329a64842a8d1b31"
  add_foreign_key "t_clienteusuario", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkd2edbf3fc030896d"
  add_foreign_key "t_clienteusuario", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fkd2edbf3fffee83d7"
  add_foreign_key "t_clienteusuario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd2edbf3f512ff192"
  add_foreign_key "t_comissaofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk4641b5fa793c5f10"
  add_foreign_key "t_comissaofuncionario", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk4641b5fa4cfaeacb"
  add_foreign_key "t_comissaofuncionario", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk4641b5fafae1931c"
  add_foreign_key "t_comissaofuncionariocondicaopagamento", "t_comissaofuncionario", column: "idcomissaofuncionario", primary_key: "idcomissaofuncionario", name: "fk23bacea273489e6b"
  add_foreign_key "t_comissaofuncionariocondicaopagamento", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk23bacea2ffee83d7"
  add_foreign_key "t_comissaofuncionarioformapagamento", "t_comissaofuncionario", column: "idcomissaofuncionario", primary_key: "idcomissaofuncionario", name: "fk1b03742373489e6b"
  add_foreign_key "t_comissaofuncionarioporvalorvendido", "t_comissaofuncionario", column: "idcomissaofuncionario", primary_key: "idcomissaofuncionario", name: "fk42a3c74473489e6b"
  add_foreign_key "t_compensacaocartao", "t_conta", column: "idconta", primary_key: "idconta", name: "fk614851aed68ea597"
  add_foreign_key "t_compensacaocartao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk614851ae8e0bb6a4"
  add_foreign_key "t_compensacaocartao", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fk614851aec71f7168"
  add_foreign_key "t_compensacaocartao", "t_redecartao", column: "idredecartao", primary_key: "idredecartao", name: "fk614851ae13c0c7d2"
  add_foreign_key "t_compensacaocartao", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk614851ae3d508472"
  add_foreign_key "t_compensacaocartao", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk614851aed4c92730"
  add_foreign_key "t_compensacaocartao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk614851ae4cfaeacb"
  add_foreign_key "t_compensacaocartao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk614851aefae1931c"
  add_foreign_key "t_compensacaocartaoitem", "t_compensacaocartao", column: "idcompensacaocartao", primary_key: "idcompensacaocartao", name: "fkfc6eb9e150184ca"
  add_foreign_key "t_compensacaocartaoitem", "t_lancamentolote", column: "idlancamentolote", primary_key: "idlancamentolote", name: "fkfc6eb9e134d58f84"
  add_foreign_key "t_compensacaocartaopagamentodespesa", "t_compensacaocartao", column: "idcompensacaocartao", primary_key: "idcompensacaocartao", name: "fk23b0e5dd50184ca"
  add_foreign_key "t_compensacaocartaopagamentodespesa", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk23b0e5ddbc34235f"
  add_foreign_key "t_compensacaocheque", "t_conta", column: "idconta", primary_key: "idconta", name: "fk62c810a1d68ea597"
  add_foreign_key "t_compensacaocheque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk62c810a1512ff192"
  add_foreign_key "t_compensacaochequecontacomplemento", "t_compensacaocheque", column: "idcompensacaocheque", primary_key: "idcompensacaocheque", name: "fk4a050abb227dae83"
  add_foreign_key "t_compensacaochequecontacomplemento", "t_conta", column: "idconta", primary_key: "idconta", name: "fk4a050abbd68ea597"
  add_foreign_key "t_compensacaochequeitem", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk46bfcb3497135217"
  add_foreign_key "t_compensacaochequeitem", "t_compensacaocheque", column: "idcompensacaocheque", primary_key: "idcompensacaocheque", name: "fk46bfcb34227dae83"
  add_foreign_key "t_composicaoespelhomfd", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk95904341ccadc7ed"
  add_foreign_key "t_composicaoespelhomfdavulso", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4f27b789ccadc7ed"
  add_foreign_key "t_composicaoprodutofaseprocessodefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fke2374cb67f9a249e"
  add_foreign_key "t_composicaoprodutofaseprocessodefabricacao", "t_produtofaseprocessodefabricacao", column: "idprodutofaseprocessodefabricacao", primary_key: "idprodutofaseprocessodefabricacao", name: "fke2374cb676f8c9c1"
  add_foreign_key "t_composicaoprodutofaseprocessodefabricacao", "t_produtofaseprocessodefabricacao", column: "idprodutofaseprocessodefabricacaoanterior", primary_key: "idprodutofaseprocessodefabricacao", name: "fke2374cb674712779"
  add_foreign_key "t_compraprodutolistaevento", "t_listaevento", column: "idlistaevento", primary_key: "idlistaevento", name: "fk260901883c95fb2c"
  add_foreign_key "t_compraprodutolistaevento", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk260901887f9a249e"
  add_foreign_key "t_conciliacaolancamentocontaconciliado", "t_conciliacaolancamentocontaofx", column: "idconciliacaolancamentocontaofx", primary_key: "idconciliacaolancamentocontaofx", name: "fk4dd812127ffb741b"
  add_foreign_key "t_conciliacaolancamentocontaconciliado", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk4dd81212dcecfc3"
  add_foreign_key "t_conciliacaolancamentocontaofx", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fka1273764cfaeacb"
  add_foreign_key "t_conciliacaoofxtransacaoconciliada", "t_conciliacaolancamentocontaofx", column: "idconciliacaolancamentocontaofx", primary_key: "idconciliacaolancamentocontaofx", name: "fkf8c9ea3a7ffb741b"
  add_foreign_key "t_conciliacaoofxtransacaoconciliada", "t_ofxtransacao", column: "idofxtransacao", primary_key: "idofxtransacao", name: "fkf8c9ea3ac43bef35"
  add_foreign_key "t_condicaopagamentoplanovendafutura", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk1096ef26ffee83d7"
  add_foreign_key "t_condicaopagamentoplanovendafutura", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk1096ef268e0bb6a4"
  add_foreign_key "t_condicaopagamentoplanovendafutura", "t_planovendafutura", column: "idplanovendafutura", primary_key: "idplanovendafutura", name: "fk1096ef26649cdb29"
  add_foreign_key "t_conferenciacaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkbd493dde56552580"
  add_foreign_key "t_conferenciacaixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkbd493dde512ff192"
  add_foreign_key "t_configuracaonfe", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk482767938e0bb6a4"
  add_foreign_key "t_configuracaonfe", "t_servidornfe", column: "idservidornfe", primary_key: "idservidornfe", name: "fk48276793dad2b4cf"
  add_foreign_key "t_consertoproduto", "t_autorizada", column: "idautorizada", primary_key: "idautorizada", name: "fka2e98c1517326438"
  add_foreign_key "t_consertoproduto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fka2e98c158e0bb6a4"
  add_foreign_key "t_consertoprodutoitem", "t_consertoproduto", column: "idconsertoproduto", primary_key: "idconsertoproduto", name: "fkbc8e68c8e3ac3d0b"
  add_foreign_key "t_consertoprodutoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkbc8e68c87f9a249e"
  add_foreign_key "t_conta", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk18c1ba48e0bb6a4"
  add_foreign_key "t_conta", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk18c1ba49c483131"
  add_foreign_key "t_conta", "t_tipoconta", column: "idtipoconta", primary_key: "idtipoconta", name: "fk18c1ba490f2cb8f"
  add_foreign_key "t_contabanco", "t_bancoerp", column: "idbanco", primary_key: "idbancoerp", name: "fkec525b77a3aa0588"
  add_foreign_key "t_contacorrentecliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk32cb0070c030896d"
  add_foreign_key "t_contacorrentecliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk32cb0070512ff192"
  add_foreign_key "t_contador", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk94d9d6e3dfb101a3"
  add_foreign_key "t_contadorestabelecimento", "t_contador", column: "idcontador", primary_key: "idcontador", name: "fke9af219167a9f88c"
  add_foreign_key "t_contadorestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fke9af21918e0bb6a4"
  add_foreign_key "t_contatoautorizada", "t_autorizada", column: "idautorizada", primary_key: "idautorizada", name: "fk4097ad8917326438"
  add_foreign_key "t_contatocartorio", "t_cartorio", column: "idcartorio", primary_key: "idcartorio", name: "fk7d513f88ac470878"
  add_foreign_key "t_contatocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk609d1bdbc030896d"
  add_foreign_key "t_contatocontador", "t_contador", column: "idcontador", primary_key: "idcontador", name: "fk3042fdb767a9f88c"
  add_foreign_key "t_contatocorretorvendas", "t_corretorvendas", column: "idcorretorvendas", primary_key: "idcorretorvendas", name: "fk632c3874cd2261cb"
  add_foreign_key "t_contatoestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk9f3a20158e0bb6a4"
  add_foreign_key "t_contatofornecedor", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk174eb7c49c483131"
  add_foreign_key "t_contatofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkad12d33c793c5f10"
  add_foreign_key "t_contatoinfluenciador", "t_influenciador", column: "idinfluenciador", primary_key: "idinfluenciador", name: "fk201874e0c8d4ee37"
  add_foreign_key "t_contatotransportadora", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk5f5ced31b209b97e"
  add_foreign_key "t_contrato", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk3a5952a7c030896d"
  add_foreign_key "t_contrato", "t_contrato", column: "idcontratooriginal", primary_key: "idcontrato", name: "fk3a5952a760972ad5"
  add_foreign_key "t_contrato", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3a5952a78e0bb6a4"
  add_foreign_key "t_contrato", "t_funcionario", column: "idconsultorresponsavel", primary_key: "idfuncionario", name: "fk3a5952a77eab96dc"
  add_foreign_key "t_contrato", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk3a5952a7ddb64eb3"
  add_foreign_key "t_contrato", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk3a5952a74cfaeacb"
  add_foreign_key "t_contratoaditivo", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fkea7548edc255c804"
  add_foreign_key "t_contratoaditivo", "t_duplicataarecebercategoria", column: "idduplicataarecebercategoria", primary_key: "idduplicataarecebercategoria", name: "fkea7548ed1e95a7bb"
  add_foreign_key "t_contratoaditivo", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkea7548ed512ff192"
  add_foreign_key "t_contratoaditivoitemcustomizado", "t_contratoaditivo", column: "idcontratoaditivo", primary_key: "idcontratoaditivo", name: "fk84632b6a49949684"
  add_foreign_key "t_contratoaditivoitemcustomizado", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk84632b6a7f9a249e"
  add_foreign_key "t_contratoarquivo", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fk2ca5206c255c804"
  add_foreign_key "t_contratoarquivo", "t_contratoaditivo", column: "idcontratoaditivo", primary_key: "idcontratoaditivo", name: "fk2ca520649949684"
  add_foreign_key "t_contratocustomizacao", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fkd37a8f59c255c804"
  add_foreign_key "t_contratocustomizacao", "t_contratoaditivo", column: "idcontratoaditivo", primary_key: "idcontratoaditivo", name: "fkd37a8f5949949684"
  add_foreign_key "t_contratocustomizacao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkd37a8f594cfaeacb"
  add_foreign_key "t_contratocustomizacaoitem", "t_contratocustomizacao", column: "idcontratocustomizacao", primary_key: "idcontratocustomizacao", name: "fk6aa3adec85a96488"
  add_foreign_key "t_contratocustomizacaoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk6aa3adec7f9a249e"
  add_foreign_key "t_contratofinanceira", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk10d5c45c030896d"
  add_foreign_key "t_contratofinanceira", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk10d5c458e0bb6a4"
  add_foreign_key "t_contratofinanceira", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk10d5c4532a312a9"
  add_foreign_key "t_contratofinanceira", "t_planofinanceira", column: "idplanofinanceira", primary_key: "idplanofinanceira", name: "fk10d5c4575511bfa"
  add_foreign_key "t_contratofinanceira", "t_recebimentonaofiscal", column: "idrecebimentonaofiscal", primary_key: "idrecebimentonaofiscal", name: "fk10d5c459297cdbb"
  add_foreign_key "t_contratofinanceira", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk10d5c45512ff192"
  add_foreign_key "t_contratofinanceira", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk10d5c45fae1931c"
  add_foreign_key "t_contratofinanceira", "t_venda", column: "idvenda", primary_key: "idvenda", name: "fk10d5c454b328e8a"
  add_foreign_key "t_contratofuncionarioparticipante", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fk87b57246c255c804"
  add_foreign_key "t_contratofuncionarioparticipante", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk87b57246793c5f10"
  add_foreign_key "t_contratoinformacaofaturamento", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fk61634d46c255c804"
  add_foreign_key "t_contratoinformacaofaturamento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk61634d46512ff192"
  add_foreign_key "t_contratolocatarioresponsavel", "t_contrato", column: "idprecontrato", primary_key: "idcontrato", name: "fk7271961de65fa991"
  add_foreign_key "t_contratolocatarioresponsavel", "t_locatarioresponsavelfuncao", column: "idlocatarioresponsavelfuncao", primary_key: "idlocatarioresponsavelfuncao", name: "fk7271961d250583b"
  add_foreign_key "t_contratolocatarioresponsavelcontato", "t_contratolocatarioresponsavel", column: "idcontratolocatarioresponsavel", primary_key: "idcontratolocatarioresponsavel", name: "fk34be714d38d503f0"
  add_foreign_key "t_contratopadraodocumento", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fkb6e4f4c0c255c804"
  add_foreign_key "t_contratopadraodocumento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb6e4f4c0512ff192"
  add_foreign_key "t_contratopadraodocumentoitem", "t_contratopadraodocumento", column: "idcontratopadraodocumento", primary_key: "idcontratopadraodocumento", name: "fk1dff83f378cbdc8a"
  add_foreign_key "t_contratoplanoinstalacao", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fkd6b20980c255c804"
  add_foreign_key "t_contratoplanoinstalacao", "t_contratocustomizacao", column: "idcontratocustomizacao", primary_key: "idcontratocustomizacao", name: "fkd6b2098085a96488"
  add_foreign_key "t_contratoplanoinstalacao", "t_contratotipoinstalacao", column: "idcontratotipoinstalacao", primary_key: "idcontratotipoinstalacao", name: "fkd6b2098034a93e2e"
  add_foreign_key "t_contratoplanoinstalacao", "t_contratotipoleitura", column: "idcontratotipoleitura", primary_key: "idcontratotipoleitura", name: "fkd6b20980c0be16d4"
  add_foreign_key "t_contratoplanoinstalacao", "t_contratotipolocacao", column: "idcontratotipolocacao", primary_key: "idcontratotipolocacao", name: "fkd6b20980e22417f4"
  add_foreign_key "t_contratoplanoinstalacao", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fkd6b20980dfb101a3"
  add_foreign_key "t_contratoplanoinstalacao", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fkd6b2098050c90864"
  add_foreign_key "t_contratoplanoinstalacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkd6b209807f9a249e"
  add_foreign_key "t_contratoplanoinstalacao", "t_produto", column: "idprodutoentregue", primary_key: "idproduto", name: "fkd6b209803c480ab7"
  add_foreign_key "t_contratoplanoinstalacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd6b20980512ff192"
  add_foreign_key "t_contratoplanoinstalacaoacessorio", "t_contratoplanoinstalacao", column: "idcontratoplanoinstalacao", primary_key: "idcontratoplanoinstalacao", name: "fkf4f68d4c78c1c9ca"
  add_foreign_key "t_contratoplanoinstalacaoacessorio", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fkf4f68d4c50c90864"
  add_foreign_key "t_contratoplanoinstalacaoacessorio", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkf4f68d4c7f9a249e"
  add_foreign_key "t_contratoplanoinstalacaoenderecohistorico", "t_contratoplanoinstalacao", column: "idcontratoplanoinstalacao", primary_key: "idcontratoplanoinstalacao", name: "fka50b70a778c1c9ca"
  add_foreign_key "t_contratoregiao", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fk249f92aac255c804"
  add_foreign_key "t_contratoregiao", "t_regiao", column: "idregiao", primary_key: "idregiao", name: "fk249f92aa973dccd7"
  add_foreign_key "t_corgrade", "t_cor", column: "idcor", primary_key: "idcor", name: "fk4075819cc3c7bfb8"
  add_foreign_key "t_corgrade", "t_grade", column: "idgrade", primary_key: "idgrade", name: "fk4075819cf149c15a"
  add_foreign_key "t_corretorvendas", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk511990e0dfb101a3"
  add_foreign_key "t_corretorvendascliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkb09db4bac030896d"
  add_foreign_key "t_corretorvendascliente", "t_corretorvendas", column: "idcorretorvendas", primary_key: "idcorretorvendas", name: "fkb09db4bacd2261cb"
  add_foreign_key "t_crm", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk68f5793c030896d"
  add_foreign_key "t_crm", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk68f5793f2ba8032"
  add_foreign_key "t_cte", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cbeb898e0bb6a4"
  add_foreign_key "t_ctedestinatario", "t_cte", column: "idcte", primary_key: "idcte", name: "fk4f7f73da4b4be88f"
  add_foreign_key "t_ctedestinatario", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk4f7f73dadfb101a3"
  add_foreign_key "t_cteduplicata", "t_cte", column: "idcte", primary_key: "idcte", name: "fk43725b7e4b4be88f"
  add_foreign_key "t_cteemitente", "t_cte", column: "idcte", primary_key: "idcte", name: "fk9e9345b64b4be88f"
  add_foreign_key "t_cteemitente", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk9e9345b6dfb101a3"
  add_foreign_key "t_cteemitente", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk9e9345b6b209b97e"
  add_foreign_key "t_ctenotafiscalentrada", "t_cte", column: "idcte", primary_key: "idcte", name: "fkd34f95224b4be88f"
  add_foreign_key "t_ctenotafiscalentrada", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkd34f95221112efb"
  add_foreign_key "t_dadosafastamentodefinitivo", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fkf22c1f7aef63c7d0"
  add_foreign_key "t_depositobancario", "t_conta", column: "idconta", primary_key: "idconta", name: "fk5dfaae67d68ea597"
  add_foreign_key "t_depositobancario", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk5dfaae67dcecfc3"
  add_foreign_key "t_depositobancariocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkaf5b193c030896d"
  add_foreign_key "t_depositobancariocliente", "t_depositobancario", column: "iddepositobancario", primary_key: "iddepositobancario", name: "fkaf5b1938729eabd"
  add_foreign_key "t_descontotitulosembanco", "t_conta", column: "idconta", primary_key: "idconta", name: "fk100fcfafd68ea597"
  add_foreign_key "t_descontotitulosembanco", "t_estabelecimento", column: "idestabelecimentopagamentotaxa", primary_key: "idestabelecimento", name: "fk100fcfaf5205a80e"
  add_foreign_key "t_descontotitulosembanco", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk100fcfaf512ff192"
  add_foreign_key "t_descontotitulosembanco", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk100fcfaffae1931c"
  add_foreign_key "t_descontotitulosembancoitem", "t_descontotitulosembanco", column: "iddescontotitulosembanco", primary_key: "iddescontotitulosembanco", name: "fkdf554f62293988dd"
  add_foreign_key "t_desmontagemkitproduto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk716507e08e0bb6a4"
  add_foreign_key "t_desmontagemkitproduto", "t_notafiscaleletronica", column: "idnfeentrada", primary_key: "idnotafiscaleletronica", name: "fk716507e0dfbec7e5"
  add_foreign_key "t_desmontagemkitproduto", "t_notafiscaleletronica", column: "idnfesaida", primary_key: "idnotafiscaleletronica", name: "fk716507e06cf38aa6"
  add_foreign_key "t_desmontagemkitproduto", "t_referenciaproduto", column: "idreferenciaprodutokit", primary_key: "idreferenciaproduto", name: "fk716507e0f2307258"
  add_foreign_key "t_desmontagemkitproduto", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk716507e03d508472"
  add_foreign_key "t_desmontagemkitproduto", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk716507e04cfaeacb"
  add_foreign_key "t_desmontagemkitproduto", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk716507e0fae1931c"
  add_foreign_key "t_despacho", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk6eb8cbf2230e4df4"
  add_foreign_key "t_despacho", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk6eb8cbf2512ff192"
  add_foreign_key "t_despachoorcamentoproduto", "t_despacho", column: "iddespacho", primary_key: "iddespacho", name: "fkd15192fb5999fbcc"
  add_foreign_key "t_despachoorcamentoproduto", "t_orcamentoproduto", column: "idorcamentoproduto", primary_key: "idorcamentoproduto", name: "fkd15192fbeca40d5e"
  add_foreign_key "t_despesa", "t_caixa", column: "idcaixapagamento", primary_key: "idcaixa", name: "fkf30e490afc13f154"
  add_foreign_key "t_despesa", "t_estabelecimento", column: "idestabelecimentopagamento", primary_key: "idestabelecimento", name: "fkf30e490a9038078"
  add_foreign_key "t_despesa", "t_fornecedorservico", column: "idfornecedorservico", primary_key: "idfornecedorservico", name: "fkf30e490aa93cbf7a"
  add_foreign_key "t_despesa", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fkf30e490a32a312a9"
  add_foreign_key "t_despesa", "t_pagamentotituloitem", column: "idpagamentotituloitem", primary_key: "idpagamentotituloitem", name: "fkf30e490a306c006f"
  add_foreign_key "t_despesa", "t_subgrupodespesa", column: "idsubgrupodespesa", primary_key: "idsubgrupodespesa", name: "fkf30e490a9e23213e"
  add_foreign_key "t_despesa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf30e490a512ff192"
  add_foreign_key "t_despesapagamento", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk8a03f13cef63c7d0"
  add_foreign_key "t_despesapagamento", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk8a03f13cbc34235f"
  add_foreign_key "t_devolucaoestoque", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk5d930455a9af59d5"
  add_foreign_key "t_devolucaoestoque", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk5d9304554cfaeacb"
  add_foreign_key "t_devolucaoestoque", "t_usuario", column: "idusuariorecebimento", primary_key: "idusuario", name: "fk5d9304553cf1ebc1"
  add_foreign_key "t_devolucaoestoqueitem", "t_devolucaoestoque", column: "iddevolucaoestoque", primary_key: "iddevolucaoestoque", name: "fk9941c1081d25d4a9"
  add_foreign_key "t_devolucaoestoqueitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk9941c1087f9a249e"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_conta", column: "idconta", primary_key: "idconta", name: "fkfb8281efd68ea597"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkfb8281ef8e0bb6a4"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkfb8281ef9c483131"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkfb8281ef2a4b1c73"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkfb8281ef1112efb"
  add_foreign_key "t_devolucaomercadoriafornecedor", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fkfb8281efc9afb7d9"
  add_foreign_key "t_devolucaomercadoriafornecedorhistorico", "t_devolucaomercadoriafornecedor", column: "iddevolucaomercadoriafornecedor", primary_key: "iddevolucaomercadoriafornecedor", name: "fkc79a3ac18d7fbe99"
  add_foreign_key "t_devolucaomercadoriafornecedorhistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc79a3ac1512ff192"
  add_foreign_key "t_devolucaomercadoriafornecedoritem", "t_devolucaomercadoriafornecedor", column: "iddevolucaomercadoriafornecedor", primary_key: "iddevolucaomercadoriafornecedor", name: "fk91a4e1a28d7fbe99"
  add_foreign_key "t_devolucaomercadoriafornecedoritem", "t_devolucaomercadoriafornecedoritemnota", column: "iddevolucaomercadoriafornecedoritemnota", primary_key: "iddevolucaomercadoriafornecedoritemnota", name: "fk91a4e1a2960ac0db"
  add_foreign_key "t_devolucaomercadoriafornecedoritem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk91a4e1a27f9a249e"
  add_foreign_key "t_devolucaomercadoriafornecedoritemnota", "t_devolucaomercadoriafornecedor", column: "iddevolucaomercadoriafornecedor", primary_key: "iddevolucaomercadoriafornecedor", name: "fk8b5c64b08d7fbe99"
  add_foreign_key "t_devolucaomercadoriafornecedoritemnota", "t_notafiscalentradaproduto", column: "idprodutonota", primary_key: "idnotafiscalentradaproduto", name: "fk8b5c64b0c0408dda"
  add_foreign_key "t_diaplanovendafutura", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkeeb8d3068e0bb6a4"
  add_foreign_key "t_diaplanovendafutura", "t_semanaplanovendafutura", column: "idsemanaplanovendafutura", primary_key: "idsemanaplanovendafutura", name: "fkeeb8d30666bf873b"
  add_foreign_key "t_divergenciamovimentacaoestoque", "t_movimentacaoestoque", column: "idmovimentacao", primary_key: "idmovimentacaoestoque", name: "fkbef248b7647a0074"
  add_foreign_key "t_divergenciamovimentacaoestoque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkbef248b7512ff192"
  add_foreign_key "t_divergenciaorcamento", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk13470932c030896d"
  add_foreign_key "t_divergenciaorcamento", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk13470932230e4df4"
  add_foreign_key "t_divergenciaorcamento", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk13470932d4c92730"
  add_foreign_key "t_duplicataareceber", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fka798e5d5c030896d"
  add_foreign_key "t_duplicataareceber", "t_conta", column: "idconta", primary_key: "idconta", name: "fka798e5d5d68ea597"
  add_foreign_key "t_duplicataareceber", "t_duplicataarecebercategoria", column: "idduplicataarecebercategoria", primary_key: "idduplicataarecebercategoria", name: "fka798e5d51e95a7bb"
  add_foreign_key "t_duplicataareceber", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fka798e5d58e0bb6a4"
  add_foreign_key "t_duplicataareceber", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fka798e5d5f2ba8032"
  add_foreign_key "t_duplicataareceber", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fka798e5d52a4b1c73"
  add_foreign_key "t_duplicataareceber", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fka798e5d5230e4df4"
  add_foreign_key "t_duplicataareceber", "t_portador", column: "idportador", primary_key: "idportador", name: "fka798e5d566abdf7d"
  add_foreign_key "t_duplicataareceber", "t_portador", column: "idportadorcobranca", primary_key: "idportador", name: "fka798e5d55e368e84"
  add_foreign_key "t_duplicataareceber", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fka798e5d5512ff192"
  add_foreign_key "t_duplicataareceber", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fka798e5d5fae1931c"
  add_foreign_key "t_duplicatadolote", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk2d79083b3031d808"
  add_foreign_key "t_duplicatadolote", "t_loteduplicatapagar", column: "idloteduplicatapagar", primary_key: "idloteduplicatapagar", name: "fk2d79083b68312890"
  add_foreign_key "t_duplicatadopagamento", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk2cc23a9f3031d808"
  add_foreign_key "t_duplicatadopagamento", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fk2cc23a9f31348803"
  add_foreign_key "t_duplicatafaseprocessodefabricacao", "t_duplicatapagar", column: "idduplicata", primary_key: "idduplicatapagar", name: "fkbd5f439f63f475d9"
  add_foreign_key "t_duplicatafaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fkbd5f439f31b6a6bd"
  add_foreign_key "t_duplicatafrete", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk12198fee3031d808"
  add_foreign_key "t_duplicatafrete", "t_fretecompartilhado", column: "idfretecompartilhado", primary_key: "idfretecompartilhado", name: "fk12198feebc4e121d"
  add_foreign_key "t_duplicatanfe", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fke095d5714fcd52eb"
  add_foreign_key "t_duplicatanfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fke095d5712a4b1c73"
  add_foreign_key "t_duplicatapagar", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk129ec5eb8e0bb6a4"
  add_foreign_key "t_duplicatapagar", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk129ec5eb9c483131"
  add_foreign_key "t_duplicatapagar", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk129ec5eb1112efb"
  add_foreign_key "t_duplicatapagar", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk129ec5ebb209b97e"
  add_foreign_key "t_duplicatapagar", "t_usuario", column: "idusuariopagamento", primary_key: "idusuario", name: "fk129ec5ebbfdd3ab2"
  add_foreign_key "t_duplicatapagarhistorico", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fkc0b29a453031d808"
  add_foreign_key "t_duplicatapagarhistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc0b29a45512ff192"
  add_foreign_key "t_duplicataprevisao", "t_pedido", column: "idpedido", primary_key: "idpedido", name: "fk5b9fbe675bea3011"
  add_foreign_key "t_edi", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk4cbf11fffee83d7"
  add_foreign_key "t_edi", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cbf11f8e0bb6a4"
  add_foreign_key "t_edi", "t_funcionario", column: "idcomprador", primary_key: "idfuncionario", name: "fk4cbf11f7f0af57e"
  add_foreign_key "t_edi", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk4cbf11f512ff192"
  add_foreign_key "t_enviofci", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk40a207048e0bb6a4"
  add_foreign_key "t_enviopagamentofornecedor", "t_bancoerp", column: "idbanco", primary_key: "idbancoerp", name: "fkbf4708e3a3aa0588"
  add_foreign_key "t_enviopagamentofornecedor", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkbf4708e39c483131"
  add_foreign_key "t_enviopagamentofornecedor", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fkbf4708e331348803"
  add_foreign_key "t_enviopagamentofornecedor", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fkbf4708e3b209b97e"
  add_foreign_key "t_enviopagamentofornecedorduplicata", "t_duplicatapagar", column: "idduplicata", primary_key: "idduplicatapagar", name: "fk56f9a36463f475d9"
  add_foreign_key "t_enviopagamentofornecedorduplicata", "t_enviopagamentofornecedor", column: "idenviopagamentofornecedor", primary_key: "idenviopagamentofornecedor", name: "fk56f9a364312194d1"
  add_foreign_key "t_espelhomfd", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fkd271a826ccadc7ed"
  add_foreign_key "t_espelhomfdavulso", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fke0611caeccadc7ed"
  add_foreign_key "t_estabelecimento", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk6ef7d529dfb101a3"
  add_foreign_key "t_estabelecimento", "t_estabelecimento", column: "idestabelecimentovinculado", primary_key: "idestabelecimento", name: "fk6ef7d52937d0895f"
  add_foreign_key "t_estabelecimento", "t_unidadenegocio", column: "idunidadenegocio", primary_key: "idunidadenegocio", name: "fk6ef7d5295fafba5c"
  add_foreign_key "t_estabelecimentocondicao", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk433e1513ffee83d7"
  add_foreign_key "t_estabelecimentocondicao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk433e15138e0bb6a4"
  add_foreign_key "t_estabelecimentocontafinanceira", "t_conta", column: "idconta", primary_key: "idconta", name: "fk219006a4d68ea597"
  add_foreign_key "t_estabelecimentocontafinanceira", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk219006a48e0bb6a4"
  add_foreign_key "t_estabelecimentocontafinanceira", "t_financeira", column: "idfinanceira", primary_key: "idfinanceira", name: "fk219006a4a1b93baa"
  add_foreign_key "t_estabelecimentocontaoperadora", "t_conta", column: "idconta", primary_key: "idconta", name: "fkcc87d27d68ea597"
  add_foreign_key "t_estabelecimentocontaoperadora", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkcc87d278e0bb6a4"
  add_foreign_key "t_estabelecimentocontaoperadora", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fkcc87d27c71f7168"
  add_foreign_key "t_estabelecimentocontaoperadora", "t_redecartao", column: "idredecartao", primary_key: "idredecartao", name: "fkcc87d2713c0c7d2"
  add_foreign_key "t_estabelecimentodefeito", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd86a323b8e0bb6a4"
  add_foreign_key "t_estabelecimentonotificacao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkbc5d46318e0bb6a4"
  add_foreign_key "t_estabelecimentonotificacao", "t_notificacao", column: "idnotificacao", primary_key: "idnotificacao", name: "fkbc5d46315995f381"
  add_foreign_key "t_estabelecimentoparametro", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkcc61ae108e0bb6a4"
  add_foreign_key "t_estabelecimentoparametro", "t_parametroestabelecimento", column: "idparametroestabelecimento", primary_key: "idparametroestabelecimento", name: "fkcc61ae108a8fd4da"
  add_foreign_key "t_estabelecimentopromocao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk2a96748b8e0bb6a4"
  add_foreign_key "t_estabelecimentopromocao", "t_promocao", column: "idpromocao", primary_key: "idpromocao", name: "fk2a96748ba8aacd05"
  add_foreign_key "t_estabelecimentorateio", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkbb943c8f8e0bb6a4"
  add_foreign_key "t_estabelecimentorateio", "t_subgrupodespesa", column: "idsubgrupodespesa", primary_key: "idsubgrupodespesa", name: "fkbb943c8f9e23213e"
  add_foreign_key "t_estabelecimentoreferenciaprodutofci", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk2601a8ee8e0bb6a4"
  add_foreign_key "t_estabelecimentoreferenciaprodutofci", "t_fci", column: "idfci", primary_key: "idfci", name: "fk2601a8eec3c7cf44"
  add_foreign_key "t_estabelecimentoreferenciaprodutofci", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk2601a8ee1c4571a"
  add_foreign_key "t_estabelecimentoremarcacao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkfa7601318e0bb6a4"
  add_foreign_key "t_estabelecimentoremarcacao", "t_remarcacaopreco", column: "idremarcacaopreco", primary_key: "idremarcacaopreco", name: "fkfa760131435069f3"
  add_foreign_key "t_estabelecimentosetor", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk164e3e1c8e0bb6a4"
  add_foreign_key "t_estabelecimentosetor", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk164e3e1c793c5f10"
  add_foreign_key "t_estabelecimentosetor", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk164e3e1cb653eec6"
  add_foreign_key "t_estoque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3fe62d6d8e0bb6a4"
  add_foreign_key "t_estoque", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk3fe62d6d7f9a249e"
  add_foreign_key "t_estoque", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk3fe62d6dd83577dc"
  add_foreign_key "t_estoque", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk3fe62d6db653eec6"
  add_foreign_key "t_estoque", "t_tributacaoproduto", column: "idtributacao", primary_key: "idtributacaoproduto", name: "fk3fe62d6d299ad6db"
  add_foreign_key "t_estoquecalculopreco", "t_estoque", column: "idestoque", primary_key: "idestoque", name: "fkee59b3d9d07d501b"
  add_foreign_key "t_estoqueminimo", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkc3380c068e0bb6a4"
  add_foreign_key "t_estoqueminimo", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkc3380c067f9a249e"
  add_foreign_key "t_estoquenumeroserie", "t_estoque", column: "idestoque", primary_key: "idestoque", name: "fk7f733733d07d501b"
  add_foreign_key "t_estoquenumeroserie", "t_notafiscalentradaproduto", column: "idnotafiscalentradaproduto", primary_key: "idnotafiscalentradaproduto", name: "fk7f73373367fa4677"
  add_foreign_key "t_estoquenumeroserie", "t_orcamentoproduto", column: "idorcamentoproduto", primary_key: "idorcamentoproduto", name: "fk7f733733eca40d5e"
  add_foreign_key "t_estoquenumeroseriecontadorservico", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fk56dcc49450c90864"
  add_foreign_key "t_estoquenumeroseriecontadorservico", "t_produto", column: "idservico", primary_key: "idproduto", name: "fk56dcc4948501c64"
  add_foreign_key "t_estoquenumeroseriecontadorservico", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk56dcc4944cfaeacb"
  add_foreign_key "t_estornocaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkd0888ed556552580"
  add_foreign_key "t_estornocaixa", "t_pagamentocarne", column: "idpagamentocarne", primary_key: "idpagamentocarne", name: "fkd0888ed5a6cd22db"
  add_foreign_key "t_estornocaixa", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fkd0888ed5bc34235f"
  add_foreign_key "t_exportacaoedoc", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkda35b5628e0bb6a4"
  add_foreign_key "t_exportacaomfd", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk1fcfd13c8e0bb6a4"
  add_foreign_key "t_exportacaosped", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkda3c3e6b8e0bb6a4"
  add_foreign_key "t_fasefichatecnica", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fkd9464caa3d508472"
  add_foreign_key "t_fasefichatecnica", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkd9464caa4cfaeacb"
  add_foreign_key "t_faseordemfabricacao", "t_fichatecnicafase", column: "idfichatecnicafase", primary_key: "idfichatecnicafase", name: "fkf8a05586c22d159"
  add_foreign_key "t_faseordemfabricacao", "t_ordemfabricacao", column: "idordemfabricacao", primary_key: "idordemfabricacao", name: "fkf8a0558643a9ab4f"
  add_foreign_key "t_faseordemfabricacao", "t_usuario", column: "idusuarioabertura", primary_key: "idusuario", name: "fkf8a05586b4c3ac90"
  add_foreign_key "t_faseordemfabricacao", "t_usuario", column: "idusuariofechamento", primary_key: "idusuario", name: "fkf8a05586860a346"
  add_foreign_key "t_faseordemfabricacaodevolucaoestoque", "t_devolucaoestoque", column: "iddevolucaoestoque", primary_key: "iddevolucaoestoque", name: "fk46ebf9501d25d4a9"
  add_foreign_key "t_faseordemfabricacaodevolucaoestoque", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk46ebf950a9af59d5"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk664b4320a9af59d5"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk664b43209c483131"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_maquina", column: "idmaquina", primary_key: "idmaquina", name: "fk664b43204875cc7c"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk664b43202a4b1c73"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk664b4320d4c92730"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk664b43204cfaeacb"
  add_foreign_key "t_faseordemfabricacaoenvioproducao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk664b4320fae1931c"
  add_foreign_key "t_faseordemfabricacaoenvioproducaoitem", "t_faseordemfabricacaoenvioproducao", column: "idfaseordemfabricacaoenvioproducao", primary_key: "idfaseordemfabricacaoenvioproducao", name: "fkfad7a253999c5217"
  add_foreign_key "t_faseordemfabricacaoenvioproducaoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkfad7a2537f9a249e"
  add_foreign_key "t_faseordemfabricacaoenvioproducaoitemprevistopararecebimento", "t_faseordemfabricacaoenvioproducao", column: "idfaseordemfabricacaoenvioproducao", primary_key: "idfaseordemfabricacaoenvioproducao", name: "fk741f5eaa999c5217"
  add_foreign_key "t_faseordemfabricacaoenvioproducaoitemprevistopararecebimento", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk741f5eaa1c4571a"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fkfab77242ffee83d7"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fkfab77242a9af59d5"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkfab772429c483131"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkfab772422a4b1c73"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkfab772421112efb"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fkfab77242d4c92730"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkfab772424cfaeacb"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkfab77242fae1931c"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoduplicatapagar", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk4aee1623031d808"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoduplicatapagar", "t_faseordemfabricacaorecebimentoproducao", column: "idfaseordemfabricacaorecebimentoproducao", primary_key: "idfaseordemfabricacaorecebimentoproducao", name: "fk4aee162e9789b1b"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoenviorecebido", "t_faseordemfabricacaoenvioproducao", column: "idfaseordemfabricacaoenvioproducao", primary_key: "idfaseordemfabricacaoenvioproducao", name: "fkee1e7338999c5217"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoenviorecebido", "t_faseordemfabricacaorecebimentoproducao", column: "idfaseordemfabricacaorecebimentoproducao", primary_key: "idfaseordemfabricacaorecebimentoproducao", name: "fkee1e7338e9789b1b"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoitem", "t_faseordemfabricacaorecebimentoproducao", column: "idfaseordemfabricacaorecebimentoproducao", primary_key: "idfaseordemfabricacaorecebimentoproducao", name: "fk11737075e9789b1b"
  add_foreign_key "t_faseordemfabricacaorecebimentoproducaoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk117370757f9a249e"
  add_foreign_key "t_faseordemfabricacaorequisicaoestoque", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk812efc09a9af59d5"
  add_foreign_key "t_faseordemfabricacaorequisicaoestoque", "t_requisicaoestoque", column: "idrequisicaoestoque", primary_key: "idrequisicaoestoque", name: "fk812efc09fd6e2369"
  add_foreign_key "t_faseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacaoanterior", primary_key: "idfaseprocessodefabricacao", name: "fkb9c1be8e6d3f1775"
  add_foreign_key "t_faseprocessodefabricacao", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkb9c1be8e9c483131"
  add_foreign_key "t_faseprocessodefabricacao", "t_fornecedor", column: "idfornecedorproximafase", primary_key: "idfornecedor", name: "fkb9c1be8e66b5af70"
  add_foreign_key "t_faseprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fkb9c1be8e1f4bf683"
  add_foreign_key "t_faseprocessodefabricacao", "t_romaneiodesaidadefabricacao", column: "idromaneiodesaidadefabricacao", primary_key: "idromaneiodesaidadefabricacao", name: "fkb9c1be8e7f713507"
  add_foreign_key "t_faseprocessodefabricacao", "t_tipofaseprocessodefabricacao", column: "idtipofaseprocessodefabricacao", primary_key: "idtipofaseprocessodefabricacao", name: "fkb9c1be8ee71695c5"
  add_foreign_key "t_faseprocessodefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb9c1be8e512ff192"
  add_foreign_key "t_fatura", "t_contrato", column: "idcontrato", primary_key: "idcontrato", name: "fk328161f6c255c804"
  add_foreign_key "t_fatura", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fk328161f64fcd52eb"
  add_foreign_key "t_fatura", "t_duplicataarecebercategoria", column: "idduplicataarecebercategoria", primary_key: "idduplicataarecebercategoria", name: "fk328161f61e95a7bb"
  add_foreign_key "t_fatura", "t_fatura", column: "idfaturaoriginal", primary_key: "idfatura", name: "fk328161f6b240075b"
  add_foreign_key "t_fatura", "t_motivoalterarfatura", column: "idmotivoalterarfatura", primary_key: "idmotivoalterarfatura", name: "fk328161f6e621b990"
  add_foreign_key "t_fatura", "t_motivocancelarfatura", column: "idmotivocancelarfatura", primary_key: "idmotivocancelarfatura", name: "fk328161f6c3a1a9c0"
  add_foreign_key "t_fatura", "t_notafiscalservico", column: "idnotafiscalservico", primary_key: "idnotafiscalservico", name: "fk328161f6415e6343"
  add_foreign_key "t_fatura", "t_recibo", column: "idrecibo", primary_key: "idrecibo", name: "fk328161f6218e8292"
  add_foreign_key "t_fatura", "t_solicitacao", column: "idsolicitacao", primary_key: "idsolicitacao", name: "fk328161f657fd5e69"
  add_foreign_key "t_fatura", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk328161f6512ff192"
  add_foreign_key "t_faturaarquivo", "t_fatura", column: "idfatura", primary_key: "idfatura", name: "fk4dc03bd7dcbf638a"
  add_foreign_key "t_faturafuncionarioparticipante", "t_fatura", column: "idfatura", primary_key: "idfatura", name: "fkbe679a17dcbf638a"
  add_foreign_key "t_faturafuncionarioparticipante", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkbe679a17793c5f10"
  add_foreign_key "t_faturahistorico", "t_fatura", column: "idfatura", primary_key: "idfatura", name: "fkadff629adcbf638a"
  add_foreign_key "t_faturahistorico", "t_motivoalterarfatura", column: "idmotivoalterarfatura", primary_key: "idmotivoalterarfatura", name: "fkadff629ae621b990"
  add_foreign_key "t_faturahistorico", "t_motivocancelarfatura", column: "idmotivocancelarfatura", primary_key: "idmotivocancelarfatura", name: "fkadff629ac3a1a9c0"
  add_foreign_key "t_faturahistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkadff629a512ff192"
  add_foreign_key "t_faturaitem", "t_fatura", column: "idfatura", primary_key: "idfatura", name: "fk6e95ea09dcbf638a"
  add_foreign_key "t_faturamentoestabmensal", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkfd983fd48e0bb6a4"
  add_foreign_key "t_faturamentofiscalporformadepagamento", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fka42ceee2ccadc7ed"
  add_foreign_key "t_faturamentofiscalporimpressora", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk5b63d3f9ccadc7ed"
  add_foreign_key "t_faturamentoprodutoestab", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk40238ec98e0bb6a4"
  add_foreign_key "t_faturamentoprodutoestab", "t_faturamentoproduto", column: "idfaturamentoproduto", primary_key: "idfaturamentoproduto", name: "fk40238ec9c1e3883b"
  add_foreign_key "t_faturamentoprodutoestab", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk40238ec97f9a249e"
  add_foreign_key "t_faturaservicoproducao", "t_contratocustomizacaoitem", column: "idcontratocustomizacaoitem", primary_key: "idcontratocustomizacaoitem", name: "fk829bf9fc12284ace"
  add_foreign_key "t_faturaservicoproducao", "t_fatura", column: "idfatura", primary_key: "idfatura", name: "fk829bf9fcdcbf638a"
  add_foreign_key "t_feriado", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk5cc968ab4cfaeacb"
  add_foreign_key "t_feriadoestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkabd8f098e0bb6a4"
  add_foreign_key "t_feriadoestabelecimento", "t_feriado", column: "idferiado", primary_key: "idferiado", name: "fkabd8f09d1f65ef1"
  add_foreign_key "t_fichatecnica", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk6f2855d1c4571a"
  add_foreign_key "t_fichatecnica", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk6f2855d3d508472"
  add_foreign_key "t_fichatecnica", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk6f2855d4cfaeacb"
  add_foreign_key "t_fichatecnicafase", "t_fasefichatecnica", column: "idfasefichatecnica", primary_key: "idfasefichatecnica", name: "fk95675f2a9d897c59"
  add_foreign_key "t_fichatecnicafase", "t_fichatecnica", column: "idfichatecnica", primary_key: "idfichatecnica", name: "fk95675f2aa1a6d41f"
  add_foreign_key "t_folhaadiantamento", "t_adiantamento", column: "idadiantamento", primary_key: "idadiantamento", name: "fk1fe5b5826f99b2e6"
  add_foreign_key "t_folhaadiantamento", "t_folhapagamentofuncionario", column: "idfolhapagamentofuncionario", primary_key: "idfolhapagamentofuncionario", name: "fk1fe5b5824d4c897"
  add_foreign_key "t_folhaadicionaldesconto", "t_folhapagamentofuncionario", column: "idfolhapagamentofuncionario", primary_key: "idfolhapagamentofuncionario", name: "fkc357db504d4c897"
  add_foreign_key "t_folhaadicionaldescontodecimoterceiro", "t_folhapagamentodecimoterceirofuncionario", column: "idfolhapagamentodecimoterceirofuncionario", primary_key: "idfolhapagamentodecimoterceirofuncionario", name: "fk4b615c1c2657c361"
  add_foreign_key "t_folhadecimoterceiroadiantamento", "t_adiantamentodecimoterceiro", column: "idadiantamentodecimoterceiro", primary_key: "idadiantamentodecimoterceiro", name: "fk99ea68ec1ec4f43"
  add_foreign_key "t_folhadecimoterceiroadiantamento", "t_folhapagamentodecimoterceirofuncionario", column: "idfolhapagamentodecimoterceirofuncionario", primary_key: "idfolhapagamentodecimoterceirofuncionario", name: "fk99ea68e2657c361"
  add_foreign_key "t_folhafuncionariocarne", "t_carne", column: "idcarne", primary_key: "idcarne", name: "fke364eac1ae1cbd45"
  add_foreign_key "t_folhafuncionariocarne", "t_folhapagamento", column: "idfolhapagamento", primary_key: "idfolhapagamento", name: "fke364eac1fd2319f"
  add_foreign_key "t_folhafuncionariocarne", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fke364eac1793c5f10"
  add_foreign_key "t_folhapagamento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkbdc498f58e0bb6a4"
  add_foreign_key "t_folhapagamento", "t_subgrupodespesa", column: "idsubgrupodespesa", primary_key: "idsubgrupodespesa", name: "fkbdc498f59e23213e"
  add_foreign_key "t_folhapagamentodecimoterceiro", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk80aad5018e0bb6a4"
  add_foreign_key "t_folhapagamentodecimoterceirofuncionario", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fkf7f3621aef63c7d0"
  add_foreign_key "t_folhapagamentodecimoterceirofuncionario", "t_folhapagamentodecimoterceiro", column: "idfolhapagamentodecimoterceiro", primary_key: "idfolhapagamentodecimoterceiro", name: "fkf7f3621a97201115"
  add_foreign_key "t_folhapagamentodecimoterceirofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkf7f3621a793c5f10"
  add_foreign_key "t_folhapagamentodecimoterceirohistorico", "t_folhapagamentodecimoterceiro", column: "idfolhapagamentodecimoterceiro", primary_key: "idfolhapagamentodecimoterceiro", name: "fkbaef2bef97201115"
  add_foreign_key "t_folhapagamentodecimoterceirohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkbaef2bef512ff192"
  add_foreign_key "t_folhapagamentofuncionario", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk67835da6ef63c7d0"
  add_foreign_key "t_folhapagamentofuncionario", "t_folhapagamento", column: "idfolhapagamento", primary_key: "idfolhapagamento", name: "fk67835da6fd2319f"
  add_foreign_key "t_folhapagamentofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk67835da6793c5f10"
  add_foreign_key "t_folhapagamentohistorico", "t_folhapagamento", column: "idfolhapagamento", primary_key: "idfolhapagamento", name: "fkf1209a7bfd2319f"
  add_foreign_key "t_folhapagamentohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf1209a7b512ff192"
  add_foreign_key "t_formapagamento", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fkd465f6f4c71f7168"
  add_foreign_key "t_formapagamentocarne", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fke8b131f7331bbf60"
  add_foreign_key "t_formapagamentocarne", "t_pagamentocarne", column: "idpagamentocarne", primary_key: "idpagamentocarne", name: "fke8b131f7a6cd22db"
  add_foreign_key "t_formapagamentocc", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk73961a5456552580"
  add_foreign_key "t_formapagamentocc", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk73961a54331bbf60"
  add_foreign_key "t_formapagamentonfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkff2d5a392a4b1c73"
  add_foreign_key "t_formapagamentopagamentotitulo", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk2f8648eb331bbf60"
  add_foreign_key "t_formapagamentopagamentotitulo", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk2f8648eb32a312a9"
  add_foreign_key "t_formapagamentorecebimentonaofiscal", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fka0ab7319331bbf60"
  add_foreign_key "t_formapagamentorecebimentonaofiscal", "t_recebimentonaofiscal", column: "idrecebimentonaofiscal", primary_key: "idrecebimentonaofiscal", name: "fka0ab73199297cdbb"
  add_foreign_key "t_formapagamentovenda", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fke9beb1c8331bbf60"
  add_foreign_key "t_formapagamentovenda", "t_venda", column: "idvenda", primary_key: "idvenda", name: "fke9beb1c84b328e8a"
  add_foreign_key "t_formapagamentovendacomplementar", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk100f5abf331bbf60"
  add_foreign_key "t_formapagamentovendacomplementar", "t_vendacomplementar", column: "idvendacomplementar", primary_key: "idvendacomplementar", name: "fk100f5abf118de558"
  add_foreign_key "t_formapagfechcaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk370b9e8c56552580"
  add_foreign_key "t_formapagfechcaixa", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk370b9e8c331bbf60"
  add_foreign_key "t_fornecedor", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk32312630dfb101a3"
  add_foreign_key "t_fornecedorinformacoesbancarias", "t_bancoerp", column: "idbanco", primary_key: "idbancoerp", name: "fk8cce5914a3aa0588"
  add_foreign_key "t_fornecedorinformacoesbancarias", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk8cce59149c483131"
  add_foreign_key "t_fornecedormarca", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkb2db11ec9c483131"
  add_foreign_key "t_fornecedormarca", "t_marca", column: "idmarca", primary_key: "idmarca", name: "fkb2db11ecf1e3e624"
  add_foreign_key "t_fornecedorservicocontato", "t_fornecedorservico", column: "idfornecedorservico", primary_key: "idfornecedorservico", name: "fk6e5448dba93cbf7a"
  add_foreign_key "t_fracionamentoprodutocoligado", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4c94c3288e0bb6a4"
  add_foreign_key "t_fracionamentoprodutocoligado", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk4c94c3283d508472"
  add_foreign_key "t_fracionamentoprodutocoligado", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk4c94c3284cfaeacb"
  add_foreign_key "t_fracionamentoprodutocoligado", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk4c94c328fae1931c"
  add_foreign_key "t_fretecompartilhado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkef3abd7c512ff192"
  add_foreign_key "t_fretenotafiscalentrada", "t_fretecompartilhado", column: "idfretecompartilhado", primary_key: "idfretecompartilhado", name: "fkadf9118cbc4e121d"
  add_foreign_key "t_fretenotafiscalentrada", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkadf9118c1112efb"
  add_foreign_key "t_funcionario", "t_atividade", column: "idatividade", primary_key: "idatividade", name: "fkee7e32505ed99c3b"
  add_foreign_key "t_funcionario", "t_atividade", column: "idatividade", primary_key: "idatividade", name: "fkee7e32508957e181"
  add_foreign_key "t_funcionario", "t_atividadenivel", column: "idatividadenivel", primary_key: "idatividadenivel", name: "fkee7e32502142c8ef"
  add_foreign_key "t_funcionario", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fkee7e3250dfb101a3"
  add_foreign_key "t_funcionario", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkee7e32508e0bb6a4"
  add_foreign_key "t_funcionario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkee7e3250512ff192"
  add_foreign_key "t_funcionariopontuacaoextra", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fkf723f180793c5f10"
  add_foreign_key "t_funcionariopontuacaoextrahistorico", "t_funcionariopontuacaoextra", column: "idfuncionariopontuacaoextra", primary_key: "idfuncionariopontuacaoextra", name: "fkb564ae502c831251"
  add_foreign_key "t_funcionariopontuacaoextrahistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb564ae50512ff192"
  add_foreign_key "t_fundocaixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc5774b5512ff192"
  add_foreign_key "t_grupohistorico", "t_grupo", column: "idgrupo", primary_key: "idgrupo", name: "fkebd2d8f2961d7988"
  add_foreign_key "t_grupohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkebd2d8f2512ff192"
  add_foreign_key "t_h2", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk279cb58e0bb6a4"
  add_foreign_key "t_h2", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk279cb5ccadc7ed"
  add_foreign_key "t_hierarquiaestabreposicao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk76744888e0bb6a4"
  add_foreign_key "t_histomudancavalorduplicata", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk2d238ae83031d808"
  add_foreign_key "t_histomudancavalorduplicata", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk2d238ae84cfaeacb"
  add_foreign_key "t_histomudancavalorduplicata", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk2d238ae8fae1931c"
  add_foreign_key "t_historicoassistenciaproduto", "t_assistenciaproduto", column: "idassistenciaproduto", primary_key: "idassistenciaproduto", name: "fk32723a754230207b"
  add_foreign_key "t_historicoassistenciaproduto", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk32723a75512ff192"
  add_foreign_key "t_historicoautorizada", "t_autorizada", column: "idautorizada", primary_key: "idautorizada", name: "fkc9340a8f17326438"
  add_foreign_key "t_historicoautorizada", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc9340a8f512ff192"
  add_foreign_key "t_historicobaixaservico", "t_baixaservico", column: "idbaixaservico", primary_key: "idbaixaservico", name: "fkcb0918f1c411445b"
  add_foreign_key "t_historicobaixaservico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkcb0918f1512ff192"
  add_foreign_key "t_historicobalancoautonomo", "t_balancoautonomo", column: "idbalancoautonomo", primary_key: "idbalancoautonomo", name: "fk1f67a1f3bb9dbd67"
  add_foreign_key "t_historicobalancoautonomo", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk1f67a1f3512ff192"
  add_foreign_key "t_historicocaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk22547d4f56552580"
  add_foreign_key "t_historicocaixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk22547d4f512ff192"
  add_foreign_key "t_historicocarne", "t_carne", column: "idcarne", primary_key: "idcarne", name: "fk66d395e6ae1cbd45"
  add_foreign_key "t_historicocarne", "t_portador", column: "idportador", primary_key: "idportador", name: "fk66d395e666abdf7d"
  add_foreign_key "t_historicocarne", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk66d395e6512ff192"
  add_foreign_key "t_historicocartorio", "t_cartorio", column: "idcartorio", primary_key: "idcartorio", name: "fk154d260eac470878"
  add_foreign_key "t_historicocartorio", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk154d260e512ff192"
  add_foreign_key "t_historicocheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk73fbf02697135217"
  add_foreign_key "t_historicocheque", "t_portador", column: "idportador", primary_key: "idportador", name: "fk73fbf02666abdf7d"
  add_foreign_key "t_historicocheque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk73fbf026512ff192"
  add_foreign_key "t_historicocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkf1e74c95c030896d"
  add_foreign_key "t_historicocliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf1e74c95512ff192"
  add_foreign_key "t_historicoclientevenda", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk229244c7c030896d"
  add_foreign_key "t_historicocompensacaocartao", "t_compensacaocartao", column: "idcompensacaocartao", primary_key: "idcompensacaocartao", name: "fk82a391d450184ca"
  add_foreign_key "t_historicocompensacaocartao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk82a391d4512ff192"
  add_foreign_key "t_historicoconferenciacaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk19d850f856552580"
  add_foreign_key "t_historicoconferenciacaixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk19d850f8512ff192"
  add_foreign_key "t_historicoconsertoproduto", "t_consertoproduto", column: "idconsertoproduto", primary_key: "idconsertoproduto", name: "fk8feadbbe3ac3d0b"
  add_foreign_key "t_historicoconsertoproduto", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8feadbb512ff192"
  add_foreign_key "t_historicocontratofinanceira", "t_contratofinanceira", column: "idcontratofinanceira", primary_key: "idcontratofinanceira", name: "fk762410df1b81f16c"
  add_foreign_key "t_historicocontratofinanceira", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk762410df512ff192"
  add_foreign_key "t_historicocrm", "t_crm", column: "idcrm", primary_key: "idcrm", name: "fk4b1421d94852f6cd"
  add_foreign_key "t_historicocrm", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk4b1421d9512ff192"
  add_foreign_key "t_historicodepositobancario", "t_depositobancario", column: "iddepositobancario", primary_key: "iddepositobancario", name: "fkf70699c18729eabd"
  add_foreign_key "t_historicodepositobancario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf70699c1512ff192"
  add_foreign_key "t_historicodespesa", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk3c0e60b0ef63c7d0"
  add_foreign_key "t_historicodespesa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk3c0e60b0512ff192"
  add_foreign_key "t_historicodevolucaoestoque", "t_devolucaoestoque", column: "iddevolucaoestoque", primary_key: "iddevolucaoestoque", name: "fk355c276f1d25d4a9"
  add_foreign_key "t_historicodevolucaoestoque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk355c276f512ff192"
  add_foreign_key "t_historicoduplicataareceber", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fkc8f425fb4fcd52eb"
  add_foreign_key "t_historicoduplicataareceber", "t_portador", column: "idportador", primary_key: "idportador", name: "fkc8f425fb66abdf7d"
  add_foreign_key "t_historicoduplicataareceber", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc8f425fb512ff192"
  add_foreign_key "t_historicoenviofci", "t_enviofci", column: "idenviofci", primary_key: "idenviofci", name: "fk8e76c03eb78608ae"
  add_foreign_key "t_historicoenviofci", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8e76c03e512ff192"
  add_foreign_key "t_historicofasefichatecnica", "t_fasefichatecnica", column: "idfasefichatecnica", primary_key: "idfasefichatecnica", name: "fkdb7bbfe49d897c59"
  add_foreign_key "t_historicofasefichatecnica", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkdb7bbfe4512ff192"
  add_foreign_key "t_historicofaseordemfabricacao", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk302c242ca9af59d5"
  add_foreign_key "t_historicofaseordemfabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk302c242c512ff192"
  add_foreign_key "t_historicofaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fkefb0b40831b6a6bd"
  add_foreign_key "t_historicofaseprocessodefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkefb0b408512ff192"
  add_foreign_key "t_historicofci", "t_fci", column: "idfci", primary_key: "idfci", name: "fk1925d367c3c7cf44"
  add_foreign_key "t_historicofci", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk1925d367512ff192"
  add_foreign_key "t_historicoferiado", "t_feriado", column: "idferiado", primary_key: "idferiado", name: "fka5c98051d1f65ef1"
  add_foreign_key "t_historicoferiado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fka5c98051512ff192"
  add_foreign_key "t_historicofichatecnica", "t_fichatecnica", column: "idfichatecnica", primary_key: "idfichatecnica", name: "fk9b924977a1a6d41f"
  add_foreign_key "t_historicofichatecnica", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9b924977512ff192"
  add_foreign_key "t_historicofornecedor", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk9feb14ca9c483131"
  add_foreign_key "t_historicofornecedor", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9feb14ca512ff192"
  add_foreign_key "t_historicofretecompartilhado", "t_fretecompartilhado", column: "idfretecompartilhado", primary_key: "idfretecompartilhado", name: "fk2f094656bc4e121d"
  add_foreign_key "t_historicofretecompartilhado", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk2f094656512ff192"
  add_foreign_key "t_historicofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk380216f6793c5f10"
  add_foreign_key "t_historicofuncionario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk380216f6512ff192"
  add_foreign_key "t_historicolancamentolote", "t_conta", column: "idconta", primary_key: "idconta", name: "fke85bcd3d68ea597"
  add_foreign_key "t_historicolancamentolote", "t_lancamentolote", column: "idlancamentolote", primary_key: "idlancamentolote", name: "fke85bcd334d58f84"
  add_foreign_key "t_historicolancamentolote", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fke85bcd3512ff192"
  add_foreign_key "t_historicolistaevento", "t_listaevento", column: "idlistaevento", primary_key: "idlistaevento", name: "fkd513bb933c95fb2c"
  add_foreign_key "t_historicolistaevento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd513bb93512ff192"
  add_foreign_key "t_historicolote", "t_lote", column: "idlote", primary_key: "idlote", name: "fkb978279db15470"
  add_foreign_key "t_historicolote", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb978279512ff192"
  add_foreign_key "t_historicolotedespesa", "t_lotedespesa", column: "idlotedespesa", primary_key: "idlotedespesa", name: "fk3ecaa95cf0db0948"
  add_foreign_key "t_historicolotedespesa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk3ecaa95c512ff192"
  add_foreign_key "t_historicoloteduplicata", "t_loteduplicata", column: "idloteduplicata", primary_key: "idloteduplicata", name: "fk8f83a28e9464789e"
  add_foreign_key "t_historicoloteduplicata", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8f83a28e512ff192"
  add_foreign_key "t_historicomovimentacaoestoque", "t_movimentacaoestoque", column: "idmovimentacaoestoque", primary_key: "idmovimentacaoestoque", name: "fk99a54e10bc82d1f0"
  add_foreign_key "t_historicomovimentacaoestoque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk99a54e10512ff192"
  add_foreign_key "t_historicomovimentacaoestoquesetor", "t_movimentacaoestoquesetor", column: "idmovimentacaoestoquesetor", primary_key: "idmovimentacaoestoquesetor", name: "fkf7603595e68677a"
  add_foreign_key "t_historicomovimentacaoestoquesetor", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf7603595512ff192"
  add_foreign_key "t_historiconaturezadaoperacao", "t_naturezadaoperacao", column: "idnaturezadaoperacao", primary_key: "idnaturezadaoperacao", name: "fk3fd5b9eec14522d5"
  add_foreign_key "t_historiconaturezadaoperacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk3fd5b9ee512ff192"
  add_foreign_key "t_historiconfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk9979fdc82a4b1c73"
  add_foreign_key "t_historiconfe", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9979fdc8512ff192"
  add_foreign_key "t_historicoordemfabricacao", "t_ordemfabricacao", column: "idordemfabricacao", primary_key: "idordemfabricacao", name: "fkaedfcdb943a9ab4f"
  add_foreign_key "t_historicoordemfabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkaedfcdb9512ff192"
  add_foreign_key "t_historicoparametro", "t_parametro", column: "idparametro", primary_key: "idparametro", name: "fk552b2d34c929e033"
  add_foreign_key "t_historicoparametro", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk552b2d34512ff192"
  add_foreign_key "t_historicoparametroestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk892b07608e0bb6a4"
  add_foreign_key "t_historicoparametroestabelecimento", "t_parametroestabelecimento", column: "idparametroestabelecimento", primary_key: "idparametroestabelecimento", name: "fk892b07608a8fd4da"
  add_foreign_key "t_historicoparametroestabelecimento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk892b0760512ff192"
  add_foreign_key "t_historicopendenciaatendimentofuturo", "t_pendenciaatendimentofuturo", column: "idpendenciaatendimentofuturo", primary_key: "idpendenciaatendimentofuturo", name: "fk59014bfb6ef0c821"
  add_foreign_key "t_historicopendenciaatendimentofuturo", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk59014bfb512ff192"
  add_foreign_key "t_historicoplanejamentofaseprocessodefabricacao", "t_planejamentofaseprocessodefabricacao", column: "idplanejamentofaseprocessodefabricacao", primary_key: "idplanejamentofaseprocessodefabricacao", name: "fk5bd518c6b97c2099"
  add_foreign_key "t_historicoplanejamentofaseprocessodefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk5bd518c6512ff192"
  add_foreign_key "t_historicoprecoproduto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3f6fc80f8e0bb6a4"
  add_foreign_key "t_historicoprecoproduto", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk3f6fc80f7f9a249e"
  add_foreign_key "t_historicoprecoproduto", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk3f6fc80fc9afb7d9"
  add_foreign_key "t_historicoprecoproduto", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk3f6fc80f512ff192"
  add_foreign_key "t_historicoprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fkccc7ea9b1f4bf683"
  add_foreign_key "t_historicoprocessodefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkccc7ea9b512ff192"
  add_foreign_key "t_historicoprorrogarcheque", "t_prorrogarcheque", column: "idprorrogarcheque", primary_key: "idprorrogarcheque", name: "fkc0f0a8728297ff99"
  add_foreign_key "t_historicoprorrogarcheque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc0f0a872512ff192"
  add_foreign_key "t_historicoprorrogarduplicataareceber", "t_prorrogarduplicataareceber", column: "idprorrogarduplicataareceber", primary_key: "idprorrogarduplicataareceber", name: "fk9319862f399a70e9"
  add_foreign_key "t_historicoprorrogarduplicataareceber", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9319862f512ff192"
  add_foreign_key "t_historicoremarcacaopreco", "t_remarcacaopreco", column: "idremarcacaopreco", primary_key: "idremarcacaopreco", name: "fka9d1782435069f3"
  add_foreign_key "t_historicoremarcacaopreco", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fka9d1782512ff192"
  add_foreign_key "t_historicorequisicaoestoque", "t_requisicaoestoque", column: "idrequisicaoestoque", primary_key: "idrequisicaoestoque", name: "fk60c491cafd6e2369"
  add_foreign_key "t_historicorequisicaoestoque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk60c491ca512ff192"
  add_foreign_key "t_historicoreservamercadoria", "t_reservamercadoria", column: "idreservamercadoria", primary_key: "idreservamercadoria", name: "fk9024fbbaf62e12c9"
  add_foreign_key "t_historicoreservamercadoria", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9024fbba512ff192"
  add_foreign_key "t_historicoromaneioentradapedido", "t_romaneioentradapedido", column: "idromaneioentradapedido", primary_key: "idromaneioentradapedido", name: "fkf7ce512972abeb5f"
  add_foreign_key "t_historicoromaneioentradapedido", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf7ce5129512ff192"
  add_foreign_key "t_historicotransportadora", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk58d75737b209b97e"
  add_foreign_key "t_historicotransportadora", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk58d75737512ff192"
  add_foreign_key "t_historicovendacombloqueio", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk85eaafcc8e0bb6a4"
  add_foreign_key "t_historicovendacombloqueio", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk85eaafcc512ff192"
  add_foreign_key "t_historicovendacombloqueio", "t_venda", column: "idvenda", primary_key: "idvenda", name: "fk85eaafcc4b328e8a"
  add_foreign_key "t_horariofuncionario", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk1f03ee84793c5f10"
  add_foreign_key "t_horariousuario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkeb85fc57512ff192"
  add_foreign_key "t_horautil", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk47887a038e0bb6a4"
  add_foreign_key "t_imagemdigitalcliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fke5944effc030896d"
  add_foreign_key "t_imposto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd09ca4208e0bb6a4"
  add_foreign_key "t_imposto", "t_subgrupodespesa", column: "idsubgrupodespesa", primary_key: "idsubgrupodespesa", name: "fkd09ca4209e23213e"
  add_foreign_key "t_influenciador", "t_cargoinfluenciador", column: "idcargoinfluenciador", primary_key: "idcargoinfluenciador", name: "fkb4285ef43b4ffcd"
  add_foreign_key "t_influenciador", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fkb4285ef4dfb101a3"
  add_foreign_key "t_influenciadorcliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkde07b866c030896d"
  add_foreign_key "t_influenciadorcliente", "t_influenciador", column: "idinfluenciador", primary_key: "idinfluenciador", name: "fkde07b866c8d4ee37"
  add_foreign_key "t_informacaobancariacliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk9df339f9c030896d"
  add_foreign_key "t_informacaobancariacliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9df339f9512ff192"
  add_foreign_key "t_informacaoetiqueta", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk3e0eb181c4571a"
  add_foreign_key "t_informacaoetiqueta", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "t_informacaoetiqueta_referenciaproduto_fk"
  add_foreign_key "t_informacaopatrimonialcliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk776b4fbcc030896d"
  add_foreign_key "t_informacaopatrimonialcliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk776b4fbc512ff192"
  add_foreign_key "t_inutilizacaonumeracaonfe", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk8856d97d8e0bb6a4"
  add_foreign_key "t_inutilizacaonumeracaonfe", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8856d97d512ff192"
  add_foreign_key "t_inventariofiscal", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk8ad35d1a8e0bb6a4"
  add_foreign_key "t_inventariofiscalitem", "t_inventariofiscal", column: "idinventariofiscal", primary_key: "idinventariofiscal", name: "fk97cbb2ddb36a9a"
  add_foreign_key "t_inventariofiscalitem", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk97cbb2d1c4571a"
  add_foreign_key "t_itemafastadiantnormal", "t_afastamento", column: "idafastamento", primary_key: "idafastamento", name: "fk3df97be7f003c4aa"
  add_foreign_key "t_itemafastadiantnormal", "t_lancamentoadiantamentonormal", column: "idlancamentoadiantamentonormal", primary_key: "idlancamentoadiantamentonormal", name: "fk3df97be768c40168"
  add_foreign_key "t_itemajustefiscal", "t_ajusteestoquefiscal", column: "idajusteestoquefiscal", primary_key: "idajusteestoquefiscal", name: "fk6ca03c7434f600d"
  add_foreign_key "t_itemajustefiscal", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk6ca03c741c4571a"
  add_foreign_key "t_itemdesmontagemkitproduto", "t_desmontagemkitproduto", column: "iddesmontagemkitproduto", primary_key: "iddesmontagemkitproduto", name: "fk1aba740dd0375102"
  add_foreign_key "t_itemdesmontagemkitproduto", "t_produto", column: "idprodutokit", primary_key: "idproduto", name: "fk1aba740de8a22fb8"
  add_foreign_key "t_itemfracionamentoprodutocoligado", "t_fracionamentoprodutocoligado", column: "idfracionamentoprodutocoligado", primary_key: "idfracionamentoprodutocoligado", name: "fkce77ae3b3f6f770e"
  add_foreign_key "t_itemfracionamentoprodutocoligado", "t_referenciaproduto", column: "idreferenciaprodutobase", primary_key: "idreferenciaproduto", name: "fkce77ae3b17dd77eb"
  add_foreign_key "t_itemfracionamentoprodutocoligado", "t_referenciaproduto", column: "idreferenciaprodutocoligado", primary_key: "idreferenciaproduto", name: "fkce77ae3b88a8e868"
  add_foreign_key "t_itemmontagemkitproduto", "t_montagemkitproduto", column: "idmontagemkitproduto", primary_key: "idmontagemkitproduto", name: "fkbafeeef7ab95f606"
  add_foreign_key "t_itemmontagemkitproduto", "t_produto", column: "idprodutokit", primary_key: "idproduto", name: "fkbafeeef7e8a22fb8"
  add_foreign_key "t_itemvalidacao", "t_mercadoriaemestoque", column: "me", primary_key: "idmercadoriaemestoque", name: "fkc3f4132e1213a815"
  add_foreign_key "t_itemvalidacao", "t_pafecf", column: "r01", primary_key: "idpafecf", name: "fkc3f4132ec2bf5a32"
  add_foreign_key "t_itemvalidacao", "t_r02", column: "r02", primary_key: "idr02", name: "fkc3f4132e28131ddc"
  add_foreign_key "t_itemvalidacao", "t_r03", column: "r03", primary_key: "idr03", name: "fkc3f4132e28131dde"
  add_foreign_key "t_itemvalidacao", "t_r04", column: "r04", primary_key: "idr04", name: "fkc3f4132e28131de0"
  add_foreign_key "t_itemvalidacao", "t_r05", column: "r05", primary_key: "idr05", name: "fkc3f4132e28131de2"
  add_foreign_key "t_itemvalidacao", "t_r06", column: "r06", primary_key: "idr06", name: "fkc3f4132e28131de4"
  add_foreign_key "t_itemvalidacao", "t_r07", column: "r07", primary_key: "idr07", name: "fkc3f4132e28131de6"
  add_foreign_key "t_kardex", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3cda6b268e0bb6a4"
  add_foreign_key "t_kardex", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk3cda6b267f9a249e"
  add_foreign_key "t_kardex", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk3cda6b26d83577dc"
  add_foreign_key "t_kardex", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk3cda6b261c4571a"
  add_foreign_key "t_kardex", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk3cda6b26b653eec6"
  add_foreign_key "t_kardexestoquenumeroserie", "t_chamado", column: "idchamado", primary_key: "idchamado", name: "fk110e96ee698a850b"
  add_foreign_key "t_kardexestoquenumeroserie", "t_contratoplanoinstalacao", column: "idcontratoplanoinstalacao", primary_key: "idcontratoplanoinstalacao", name: "fk110e96ee78c1c9ca"
  add_foreign_key "t_kardexestoquenumeroserie", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk110e96ee8e0bb6a4"
  add_foreign_key "t_kardexestoquenumeroserie", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fk110e96ee50c90864"
  add_foreign_key "t_kardexestoquenumeroserie", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk110e96ee230e4df4"
  add_foreign_key "t_kardexestoquenumeroserie", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk110e96ee7f9a249e"
  add_foreign_key "t_kardexestoquenumeroserie", "t_troca", column: "idtroca", primary_key: "idtroca", name: "fk110e96ee68762ed1"
  add_foreign_key "t_kardexfiscal", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk7a56b0648e0bb6a4"
  add_foreign_key "t_kardexfiscal", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk7a56b0647f9a249e"
  add_foreign_key "t_kardexfiscal", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk7a56b0641c4571a"
  add_foreign_key "t_kitproduto", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkce6c782e512ff192"
  add_foreign_key "t_kitprodutoitem", "t_kitproduto", column: "idkitproduto", primary_key: "idkitproduto", name: "fkffb8286197e6687a"
  add_foreign_key "t_kitprodutoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkffb828617f9a249e"
  add_foreign_key "t_lancamentoadiantamentonormal", "t_adiantamento", column: "idadiantamento", primary_key: "idadiantamento", name: "fke28df8fd6f99b2e6"
  add_foreign_key "t_lancamentoconta", "t_conta", column: "idconta", primary_key: "idconta", name: "fk2e59e40ad68ea597"
  add_foreign_key "t_lancamentoconta", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk2e59e40a512ff192"
  add_foreign_key "t_lancamentoconta", "t_usuario", column: "idusuarioconciliacao", primary_key: "idusuario", name: "fk2e59e40a14c81681"
  add_foreign_key "t_lancamentoconta", "t_usuario", column: "idusuariodelecao", primary_key: "idusuario", name: "fk2e59e40ae1811ea3"
  add_foreign_key "t_lancamentoconta", "t_usuario", column: "idusuariovisto", primary_key: "idusuario", name: "fk2e59e40ab77454a7"
  add_foreign_key "t_lancamentocontahistorico", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk6687d2e6dcecfc3"
  add_foreign_key "t_lancamentocontahistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk6687d2e6512ff192"
  add_foreign_key "t_lancamentocontratofinanceira", "t_conta", column: "idconta", primary_key: "idconta", name: "fkd42e99fd68ea597"
  add_foreign_key "t_lancamentocontratofinanceira", "t_contratofinanceira", column: "idcontratofinanceira", primary_key: "idcontratofinanceira", name: "fkd42e99f1b81f16c"
  add_foreign_key "t_lancamentocontratofinanceira", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd42e99f8e0bb6a4"
  add_foreign_key "t_lancamentocorretorvendas", "t_corretorvendas", column: "idcorretorvendas", primary_key: "idcorretorvendas", name: "fk36af7acd2261cb"
  add_foreign_key "t_lancamentocorretorvendas", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk36af7a8e0bb6a4"
  add_foreign_key "t_lancamentocorretorvendas", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk36af7a512ff192"
  add_foreign_key "t_lancamentocorretorvendasdespesa", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fka610093bef63c7d0"
  add_foreign_key "t_lancamentocorretorvendasdespesa", "t_lancamentocorretorvendas", column: "idlancamentocorretorvendas", primary_key: "idlancamentocorretorvendas", name: "fka610093bb483d09f"
  add_foreign_key "t_lancamentoipi", "t_despesa", column: "iddespesadepagamento", primary_key: "iddespesa", name: "fkbe89f39dab95f221"
  add_foreign_key "t_lancamentoipi", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkbe89f39d2a4b1c73"
  add_foreign_key "t_lancamentoipi", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkbe89f39d4cfaeacb"
  add_foreign_key "t_lancamentoipi", "t_usuario", column: "idusuariopagamento", primary_key: "idusuario", name: "fkbe89f39dbfdd3ab2"
  add_foreign_key "t_lancamentolote", "t_conta", column: "idconta", primary_key: "idconta", name: "fke07a9b39d68ea597"
  add_foreign_key "t_lancamentolote", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fke07a9b398e0bb6a4"
  add_foreign_key "t_lancamentolote", "t_lote", column: "idlote", primary_key: "idlote", name: "fke07a9b39db15470"
  add_foreign_key "t_lancamentolote", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fke07a9b39c71f7168"
  add_foreign_key "t_lancamentolote", "t_redecartao", column: "idredecartao", primary_key: "idredecartao", name: "fke07a9b3913c0c7d2"
  add_foreign_key "t_limitedecredito", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk6b89b240c030896d"
  add_foreign_key "t_limitedecredito", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk6b89b240512ff192"
  add_foreign_key "t_listaevento", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkb85e6aedc030896d"
  add_foreign_key "t_listaevento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkb85e6aed8e0bb6a4"
  add_foreign_key "t_listaevento", "t_tipolistaevento", column: "idtipolistaevento", primary_key: "idtipolistaevento", name: "fkb85e6aedbc89dda4"
  add_foreign_key "t_listaevento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb85e6aed512ff192"
  add_foreign_key "t_lote", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk94b6085f8e0bb6a4"
  add_foreign_key "t_lote", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk94b6085f32a312a9"
  add_foreign_key "t_lote", "t_planooperadoracartao", column: "idplanooperadoracartao", primary_key: "idplanooperadoracartao", name: "fk94b6085f5ff74318"
  add_foreign_key "t_lote", "t_recebimentonaofiscal", column: "idrecebimentonaofiscal", primary_key: "idrecebimentonaofiscal", name: "fk94b6085f9297cdbb"
  add_foreign_key "t_lote", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk94b6085f512ff192"
  add_foreign_key "t_lote", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk94b6085ffae1931c"
  add_foreign_key "t_lote", "t_venda", column: "idvenda", primary_key: "idvenda", name: "fk94b6085f4b328e8a"
  add_foreign_key "t_lotecheque", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkffbde3604cfaeacb"
  add_foreign_key "t_lotecheque", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkffbde360fae1931c"
  add_foreign_key "t_lotedespesaitem", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk892878e9ef63c7d0"
  add_foreign_key "t_lotedespesaitem", "t_lotedespesa", column: "idlotedespesa", primary_key: "idlotedespesa", name: "fk892878e9f0db0948"
  add_foreign_key "t_loteduplicataitem", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fke77b5a9b3031d808"
  add_foreign_key "t_loteduplicataitem", "t_loteduplicata", column: "idloteduplicata", primary_key: "idloteduplicata", name: "fke77b5a9b9464789e"
  add_foreign_key "t_loteduplicatapagar", "t_estabelecimento", column: "idlojapagamento", primary_key: "idestabelecimento", name: "fk84a00bfcbf1af1c"
  add_foreign_key "t_loteduplicatapagar", "t_usuario", column: "idusuariocadastrar", primary_key: "idusuario", name: "fk84a00bf9a0c5133"
  add_foreign_key "t_loteduplicatapagar", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk84a00bffae1931c"
  add_foreign_key "t_loteduplicatapagar", "t_usuario", column: "idusuarioconfirmacaopagamento", primary_key: "idusuario", name: "fk84a00bf805770a8"
  add_foreign_key "t_maquina", "t_aplicacaomaquina", column: "idaplicacaomaquina", primary_key: "idaplicacaomaquina", name: "fkc839211920a58307"
  add_foreign_key "t_maquina", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkc83921194cfaeacb"
  add_foreign_key "t_maquina", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkc8392119fae1931c"
  add_foreign_key "t_marcafornecedor", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk2fbda2969c483131"
  add_foreign_key "t_marcafornecedor", "t_marca", column: "idmarca", primary_key: "idmarca", name: "fk2fbda296f1e3e624"
  add_foreign_key "t_mensagemusuario", "t_usuario", column: "usuariodestinatario", primary_key: "idusuario", name: "fkad9747857de33de"
  add_foreign_key "t_mensagemusuario", "t_usuario", column: "usuarioremetente", primary_key: "idusuario", name: "fkad97478aa55bf94"
  add_foreign_key "t_mercadoriaemestoque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fka6a12bfe8e0bb6a4"
  add_foreign_key "t_mercadoriaemestoque", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fka6a12bfeccadc7ed"
  add_foreign_key "t_mercadoriaemestoque", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fka6a12bfe7f9a249e"
  add_foreign_key "t_metaestabelecimentodiaria", "t_metaestabelecimentomensal", column: "idmetaestabelecimentomensal", primary_key: "idmetaestabelecimentomensal", name: "fk396be125765fcc1"
  add_foreign_key "t_metaestabelecimentomensal", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk12bfe94c8e0bb6a4"
  add_foreign_key "t_metaestabelecimentomensalhistorico", "t_metaestabelecimentomensal", column: "idmetaestabelecimentomensal", primary_key: "idmetaestabelecimentomensal", name: "fkfed4bc045765fcc1"
  add_foreign_key "t_metaestabelecimentomensalhistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkfed4bc04512ff192"
  add_foreign_key "t_metavendedor", "t_metaestabelecimentodiaria", column: "idmetaestabelecimentodiaria", primary_key: "idmetaestabelecimentodiaria", name: "fk13244c373913a64d"
  add_foreign_key "t_modelocampo", "t_modelofase", column: "idmodelofase", primary_key: "idmodelofase", name: "fk387e5bfd130a9fa4"
  add_foreign_key "t_modelofase", "t_modeloprocessofabricacaointerno", column: "idmodeloprocessofabricacaointerno", primary_key: "idmodeloprocessofabricacaointerno", name: "fk3bb0e45e34c33346"
  add_foreign_key "t_modelofaseanterior", "t_modelofase", column: "idfaseanterior", primary_key: "idmodelofase", name: "fk4e0d6976ad0e1f36"
  add_foreign_key "t_modelofaseanterior", "t_modelofase", column: "idmodelofase", primary_key: "idmodelofase", name: "fk4e0d6976130a9fa4"
  add_foreign_key "t_modelofaseposterior", "t_modelofase", column: "idfaseposterior", primary_key: "idmodelofase", name: "fk6f82b8a1716594d"
  add_foreign_key "t_modelofaseposterior", "t_modelofase", column: "idmodelofase", primary_key: "idmodelofase", name: "fk6f82b8a1130a9fa4"
  add_foreign_key "t_modeloprocessofabricacaointerno", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk83116057512ff192"
  add_foreign_key "t_modeloprocessofabricacaointerno", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk831160573d508472"
  add_foreign_key "t_montagemkitproduto", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkcf9224048e0bb6a4"
  add_foreign_key "t_montagemkitproduto", "t_notafiscaleletronica", column: "idnfeentrada", primary_key: "idnotafiscaleletronica", name: "fkcf922404dfbec7e5"
  add_foreign_key "t_montagemkitproduto", "t_notafiscaleletronica", column: "idnfesaida", primary_key: "idnotafiscaleletronica", name: "fkcf9224046cf38aa6"
  add_foreign_key "t_montagemkitproduto", "t_referenciaproduto", column: "idreferenciaprodutokit", primary_key: "idreferenciaproduto", name: "fkcf922404f2307258"
  add_foreign_key "t_montagemkitproduto", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fkcf9224043d508472"
  add_foreign_key "t_montagemkitproduto", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkcf9224044cfaeacb"
  add_foreign_key "t_montagemkitproduto", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkcf922404fae1931c"
  add_foreign_key "t_movcaixapagamdespesa", "t_movimentacaocaixa", column: "idmovimentacaocaixa", primary_key: "idmovimentacaocaixa", name: "fk9424ecfe662b1b1a"
  add_foreign_key "t_movcaixapagamdespesa", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk9424ecfebc34235f"
  add_foreign_key "t_movimentacaocaixa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkf76f596656552580"
  add_foreign_key "t_movimentacaocaixa", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkf76f5966c030896d"
  add_foreign_key "t_movimentacaocaixa", "t_conta", column: "idconta", primary_key: "idconta", name: "fkf76f5966d68ea597"
  add_foreign_key "t_movimentacaocaixa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf76f5966512ff192"
  add_foreign_key "t_movimentacaocaixa", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fkf76f5966d4c92730"
  add_foreign_key "t_movimentacaoconta", "t_compensacaocheque", column: "idcompensacaocheque", primary_key: "idcompensacaocheque", name: "fkf775c8e1227dae83"
  add_foreign_key "t_movimentacaoconta", "t_conta", column: "idcontadestino", primary_key: "idconta", name: "fkf775c8e1ab8d9ab7"
  add_foreign_key "t_movimentacaoconta", "t_conta", column: "idcontaorigem", primary_key: "idconta", name: "fkf775c8e15fce1d40"
  add_foreign_key "t_movimentacaoconta", "t_tipomovimentacaoconta", column: "idtipomovimentacaoconta", primary_key: "idtipomovimentacaoconta", name: "fkf775c8e16da1e3a9"
  add_foreign_key "t_movimentacaoconta", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkf775c8e1512ff192"
  add_foreign_key "t_movimentacaoestoque", "t_estabelecimento", column: "idestabelecimentodestino", primary_key: "idestabelecimento", name: "fk62197f6ac1a2991a"
  add_foreign_key "t_movimentacaoestoque", "t_estabelecimento", column: "idestabelecimentoorigem", primary_key: "idestabelecimento", name: "fk62197f6a93ab368d"
  add_foreign_key "t_movimentacaoestoque", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk62197f6ad4c92730"
  add_foreign_key "t_movimentacaoestoque", "t_usuario", column: "idusuarioautorizacaorecebimento", primary_key: "idusuario", name: "fk62197f6a3699a763"
  add_foreign_key "t_movimentacaoestoque", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk62197f6a4cfaeacb"
  add_foreign_key "t_movimentacaoestoque", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk62197f6afae1931c"
  add_foreign_key "t_movimentacaoestoque", "t_usuario", column: "idusuariorecebimento", primary_key: "idusuario", name: "fk62197f6a3cf1ebc1"
  add_foreign_key "t_movimentacaoestoqueenviada", "t_movimentacaoestoque", column: "idmovimentacaoestoque", primary_key: "idmovimentacaoestoque", name: "fk7cb94b38bc82d1f0"
  add_foreign_key "t_movimentacaoestoqueenviada", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk7cb94b387f9a249e"
  add_foreign_key "t_movimentacaoestoqueenviada", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk7cb94b38d83577dc"
  add_foreign_key "t_movimentacaoestoquerecebida", "t_movimentacaoestoque", column: "idmovimentacaoestoque", primary_key: "idmovimentacaoestoque", name: "fk642363e3bc82d1f0"
  add_foreign_key "t_movimentacaoestoquerecebida", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk642363e37f9a249e"
  add_foreign_key "t_movimentacaoestoquerecebida", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk642363e3d83577dc"
  add_foreign_key "t_movimentacaoestoquereservamercadoria", "t_movimentacaoestoque", column: "idmovimentacaoestoque", primary_key: "idmovimentacaoestoque", name: "fk8e26f075bc82d1f0"
  add_foreign_key "t_movimentacaoestoquereservamercadoria", "t_reservamercadoria", column: "idreservamercadoria", primary_key: "idreservamercadoria", name: "fk8e26f075f62e12c9"
  add_foreign_key "t_movimentacaoestoquesetor", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk76a0dc7b8e0bb6a4"
  add_foreign_key "t_movimentacaoestoquesetor", "t_setor", column: "idsetordestino", primary_key: "idsetor", name: "fk76a0dc7beef7b27a"
  add_foreign_key "t_movimentacaoestoquesetor", "t_setor", column: "idsetororigem", primary_key: "idsetor", name: "fk76a0dc7bf7a1cdef"
  add_foreign_key "t_movimentacaoestoquesetor", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk76a0dc7bd4c92730"
  add_foreign_key "t_movimentacaoestoquesetor", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk76a0dc7b4cfaeacb"
  add_foreign_key "t_movimentacaoestoquesetor", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk76a0dc7bfae1931c"
  add_foreign_key "t_movimentacaoestoquesetor", "t_usuario", column: "idusuariorecebimento", primary_key: "idusuario", name: "fk76a0dc7b3cf1ebc1"
  add_foreign_key "t_movimentacaoestoquesetoritemenviado", "t_movimentacaoestoquesetor", column: "idmovimentacaoestoquesetor", primary_key: "idmovimentacaoestoquesetor", name: "fk66a95002e68677a"
  add_foreign_key "t_movimentacaoestoquesetoritemenviado", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk66a950027f9a249e"
  add_foreign_key "t_movimentacaoestoquesetoritemenviado", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk66a95002d83577dc"
  add_foreign_key "t_movimentacaoestoquesetoritemrecebido", "t_movimentacaoestoquesetor", column: "idmovimentacaoestoquesetor", primary_key: "idmovimentacaoestoquesetor", name: "fkb833f6b5e68677a"
  add_foreign_key "t_movimentacaoestoquesetoritemrecebido", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkb833f6b57f9a249e"
  add_foreign_key "t_movimentacaoestoquesetoritemrecebido", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fkb833f6b5d83577dc"
  add_foreign_key "t_mudancaportador", "t_portador", column: "idportadornovo", primary_key: "idportador", name: "fk539c8b639c450eb7"
  add_foreign_key "t_mudancaportador", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk539c8b63512ff192"
  add_foreign_key "t_mudancaportador", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk539c8b63fae1931c"
  add_foreign_key "t_mudancaportadoritem", "t_mudancaportador", column: "idmudancaportador", primary_key: "idmudancaportador", name: "fkd1f51116c7e586ed"
  add_foreign_key "t_mudancaportadoritem", "t_portador", column: "idportadorantigo", primary_key: "idportador", name: "fkd1f511169d01cdc7"
  add_foreign_key "t_municipio", "t_regiao", column: "idregiao", primary_key: "idregiao", name: "fk88959a2973dccd7"
  add_foreign_key "t_municipio", "t_uf", column: "iduf", primary_key: "iduf", name: "fk88959a212256ff3"
  add_foreign_key "t_nog", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk4cc143b512ff192"
  add_foreign_key "t_notafiscaleletronica", "t_cancelamentonfe", column: "idcancelamentonfe", primary_key: "idcancelamentonfe", name: "fk4bf125c3c2a35563"
  add_foreign_key "t_notafiscaleletronica", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk4bf125c3c030896d"
  add_foreign_key "t_notafiscaleletronica", "t_desmontagemkitproduto", column: "iddesmontagemkitproduto", primary_key: "iddesmontagemkitproduto", name: "fk4bf125c3d0375102"
  add_foreign_key "t_notafiscaleletronica", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4bf125c38e0bb6a4"
  add_foreign_key "t_notafiscaleletronica", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk4bf125c39c483131"
  add_foreign_key "t_notafiscaleletronica", "t_montagemkitproduto", column: "idmontagemkitproduto", primary_key: "idmontagemkitproduto", name: "fk4bf125c3ab95f606"
  add_foreign_key "t_notafiscaleletronica", "t_movimentacaoestoque", column: "idmovimentacaoestoque", primary_key: "idmovimentacaoestoque", name: "fk4bf125c3bc82d1f0"
  add_foreign_key "t_notafiscaleletronica", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fk4bf125c31f4bf683"
  add_foreign_key "t_notafiscaleletronica", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk4bf125c3c9afb7d9"
  add_foreign_key "t_notafiscaleletronica", "t_recebimento", column: "idrecebimentoentrada", primary_key: "idrecebimento", name: "fk4bf125c37eac21fc"
  add_foreign_key "t_notafiscaleletronica", "t_recebimento", column: "idrecebimentosaida", primary_key: "idrecebimento", name: "fk4bf125c35a3012bd"
  add_foreign_key "t_notafiscaleletronica", "t_remessaavenda", column: "idremessaavenda", primary_key: "idremessaavenda", name: "fk4bf125c382a1985c"
  add_foreign_key "t_notafiscaleletronica", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk4bf125c34cfaeacb"
  add_foreign_key "t_notafiscalemitidafaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk47cc729f31b6a6bd"
  add_foreign_key "t_notafiscalemitidafaseprocessodefabricacao", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk47cc729f2a4b1c73"
  add_foreign_key "t_notafiscalentradadestinatario", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk6754cc118e0bb6a4"
  add_foreign_key "t_notafiscalentradadestinatario", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk6754cc111112efb"
  add_foreign_key "t_notafiscalentradaduplicata", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk79beee871112efb"
  add_foreign_key "t_notafiscalentradaemitente", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk4080496d9c483131"
  add_foreign_key "t_notafiscalentradaemitente", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk4080496d1112efb"
  add_foreign_key "t_notafiscalentradafaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk62bd5b0331b6a6bd"
  add_foreign_key "t_notafiscalentradafaseprocessodefabricacao", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk62bd5b031112efb"
  add_foreign_key "t_notafiscalentradafrete", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk21df1b0a1112efb"
  add_foreign_key "t_notafiscalentradahistorico", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkfe5e61b01112efb"
  add_foreign_key "t_notafiscalentradahistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkfe5e61b0512ff192"
  add_foreign_key "t_notafiscalentradaimposto", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fkbd47f6eb1112efb"
  add_foreign_key "t_notafiscalentradaproduto", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fk3808c0b91112efb"
  add_foreign_key "t_notafiscalmodelo1", "t_cancelamentonfe", column: "idcancelamentonfe", primary_key: "idcancelamentonfe", name: "fk2163e674c2a35563"
  add_foreign_key "t_notafiscalmodelo1", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk2163e674c030896d"
  add_foreign_key "t_notafiscalmodelo1", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk2163e6748e0bb6a4"
  add_foreign_key "t_notafiscalmodelo1", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk2163e6742a4b1c73"
  add_foreign_key "t_notafiscalmodelo1", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk2163e674230e4df4"
  add_foreign_key "t_notafiscalmodelo1", "t_remessaavenda", column: "idremessaavenda", primary_key: "idremessaavenda", name: "fk2163e67482a1985c"
  add_foreign_key "t_notafiscalmodelo1", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk2163e6744cfaeacb"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_cancelamentonfe", column: "idcancelamentonfe", primary_key: "idcancelamentonfe", name: "fkb01929c9c2a35563"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkb01929c9c030896d"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkb01929c98e0bb6a4"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fkb01929c92a4b1c73"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fkb01929c9230e4df4"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_remessaavenda", column: "idremessaavenda", primary_key: "idremessaavenda", name: "fkb01929c982a1985c"
  add_foreign_key "t_notafiscalmodelo1serie1", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkb01929c94cfaeacb"
  add_foreign_key "t_notafiscalpaulista", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk7f6356b6ccadc7ed"
  add_foreign_key "t_notafiscalpaulista", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk7f6356b6512ff192"
  add_foreign_key "t_notafiscalseried", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk8eeb593fc030896d"
  add_foreign_key "t_notafiscalseried", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk8eeb593f8e0bb6a4"
  add_foreign_key "t_notafiscalseried", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk8eeb593f2a4b1c73"
  add_foreign_key "t_notafiscalseried", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8eeb593f512ff192"
  add_foreign_key "t_notafiscalseried", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk8eeb593ffae1931c"
  add_foreign_key "t_notafiscalservicoarquivo", "t_notafiscalservico", column: "idnotafiscalservico", primary_key: "idnotafiscalservico", name: "fkf8caf2c5415e6343"
  add_foreign_key "t_notificacaousuario", "t_estabelecimentonotificacao", column: "idestabelecimentonotificacao", primary_key: "idestabelecimentonotificacao", name: "fk8541609ffb13f5bf"
  add_foreign_key "t_notificacaousuario", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk8541609f512ff192"
  add_foreign_key "t_numeroserie", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fkad820f5550c90864"
  add_foreign_key "t_observacaoduplicatacliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk211ba797c030896d"
  add_foreign_key "t_observacaoduplicatacliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk211ba797512ff192"
  add_foreign_key "t_ocorrenciadespesa", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fkb74e9713ef63c7d0"
  add_foreign_key "t_ocorrenciadespesa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb74e9713512ff192"
  add_foreign_key "t_ofx", "t_conta", column: "idconta", primary_key: "idconta", name: "fk4cc16f6d68ea597"
  add_foreign_key "t_ofx", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk4cc16f64cfaeacb"
  add_foreign_key "t_ofxtransacao", "t_ofx", column: "idofx", primary_key: "idofx", name: "fk652d74229123e7fb"
  add_foreign_key "t_ofxtransacao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk652d74224cfaeacb"
  add_foreign_key "t_orcamento", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fka66e73a556552580"
  add_foreign_key "t_orcamento", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fka66e73a5c030896d"
  add_foreign_key "t_orcamento", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fka66e73a5ffee83d7"
  add_foreign_key "t_orcamento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fka66e73a58e0bb6a4"
  add_foreign_key "t_orcamento", "t_estabelecimento", column: "idestabelecimentosistema", primary_key: "idestabelecimento", name: "fka66e73a5e1f36534"
  add_foreign_key "t_orcamento", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fka66e73a5f2ba8032"
  add_foreign_key "t_orcamento", "t_notafiscalseried", column: "idnotafiscalseried1", primary_key: "idnotafiscalseried", name: "fka66e73a541526f77"
  add_foreign_key "t_orcamento", "t_orcamento", column: "idorcamentovinculado", primary_key: "idorcamento", name: "fka66e73a51296cf37"
  add_foreign_key "t_orcamento", "t_preorcamento", column: "idpreorcamento", primary_key: "idpreorcamento", name: "fka66e73a51b229aa6"
  add_foreign_key "t_orcamento", "t_troca", column: "idtroca", primary_key: "idtroca", name: "fka66e73a568762ed1"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fka66e73a5512ff192"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fka66e73a5d4c92730"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fka66e73a5fae1931c"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuarioconferencia", primary_key: "idusuario", name: "fka66e73a582dd4f8d"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuarioliberacao", primary_key: "idusuario", name: "fka66e73a5ac6d984e"
  add_foreign_key "t_orcamento", "t_usuario", column: "idusuariovendaespecial", primary_key: "idusuario", name: "fka66e73a54d3ca1c"
  add_foreign_key "t_orcamentocheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk992e422697135217"
  add_foreign_key "t_orcamentocheque", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk992e4226230e4df4"
  add_foreign_key "t_orcamentocomplementar", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fked42391c56552580"
  add_foreign_key "t_orcamentocomplementar", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fked42391cc030896d"
  add_foreign_key "t_orcamentocomplementar", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fked42391cffee83d7"
  add_foreign_key "t_orcamentocomplementar", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fked42391c8e0bb6a4"
  add_foreign_key "t_orcamentocomplementar", "t_estabelecimento", column: "idestabelecimentosistema", primary_key: "idestabelecimento", name: "fked42391ce1f36534"
  add_foreign_key "t_orcamentocomplementar", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fked42391cf2ba8032"
  add_foreign_key "t_orcamentocomplementar", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fked42391c230e4df4"
  add_foreign_key "t_orcamentocomplementar", "t_orcamentocomplementar", column: "idorcamentovinculado", primary_key: "idorcamentocomplementar", name: "fked42391c6a76bdae"
  add_foreign_key "t_orcamentocomplementar", "t_preorcamento", column: "idpreorcamento", primary_key: "idpreorcamento", name: "fked42391c1b229aa6"
  add_foreign_key "t_orcamentocomplementar", "t_troca", column: "idtroca", primary_key: "idtroca", name: "fked42391c68762ed1"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fked42391c512ff192"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fked42391cd4c92730"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fked42391cfae1931c"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuarioconferencia", primary_key: "idusuario", name: "fked42391c82dd4f8d"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuarioliberacao", primary_key: "idusuario", name: "fked42391cac6d984e"
  add_foreign_key "t_orcamentocomplementar", "t_usuario", column: "idusuariovendaespecial", primary_key: "idusuario", name: "fked42391c4d3ca1c"
  add_foreign_key "t_orcamentoproduto", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk4de27f94230e4df4"
  add_foreign_key "t_orcamentoproduto", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk4de27f947f9a249e"
  add_foreign_key "t_orcamentoproduto", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk4de27f94d83577dc"
  add_foreign_key "t_orcamentoprodutocomplementar", "t_orcamentocomplementar", column: "idorcamentocomplementar", primary_key: "idorcamentocomplementar", name: "fk5450d68b7d03d5c2"
  add_foreign_key "t_orcamentoprodutocomplementar", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk5450d68b7f9a249e"
  add_foreign_key "t_orcamentoprodutocomplementar", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk5450d68bd83577dc"
  add_foreign_key "t_orcamentoprodutodeposito", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3299cd458e0bb6a4"
  add_foreign_key "t_orcamentoprodutodeposito", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk3299cd45230e4df4"
  add_foreign_key "t_orcamentoprodutodeposito", "t_orcamentocomplementar", column: "idorcamento", primary_key: "idorcamentocomplementar", name: "fk3299cd457aee3c6b"
  add_foreign_key "t_orcamentoprodutodeposito", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk3299cd457f9a249e"
  add_foreign_key "t_orcamentoprodutodeposito", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk3299cd45d83577dc"
  add_foreign_key "t_orcamentoprodutodevolucao", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fkad9339ba230e4df4"
  add_foreign_key "t_orcamentoprodutodevolucao", "t_orcamentocomplementar", column: "idorcamento", primary_key: "idorcamentocomplementar", name: "fkad9339ba7aee3c6b"
  add_foreign_key "t_orcamentoprodutodevolucao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkad9339ba7f9a249e"
  add_foreign_key "t_ordemfabricacao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk1b86bc138e0bb6a4"
  add_foreign_key "t_ordemfabricacao", "t_fichatecnica", column: "idfichatecnica", primary_key: "idfichatecnica", name: "fk1b86bc13a1a6d41f"
  add_foreign_key "t_ordemfabricacao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk1b86bc134cfaeacb"
  add_foreign_key "t_ordemfabricacao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk1b86bc13fae1931c"
  add_foreign_key "t_ordemfabricacaoproporcaoproducao", "t_ordemfabricacao", column: "idordemfabricacao", primary_key: "idordemfabricacao", name: "fkd734c9eb43a9ab4f"
  add_foreign_key "t_ordemfabricacaoproporcaoproducao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkd734c9eb7f9a249e"
  add_foreign_key "t_origemexterna", "t_conta", column: "idconta", primary_key: "idconta", name: "fk7f76dd0dd68ea597"
  add_foreign_key "t_origemexterna", "t_portador", column: "idportador", primary_key: "idportador", name: "fk7f76dd0d66abdf7d"
  add_foreign_key "t_pafecf", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk7bf8491e8e0bb6a4"
  add_foreign_key "t_pagamentocarne", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkb2fff47056552580"
  add_foreign_key "t_pagamentocarne", "t_caixa", column: "idcaixacancelamento", primary_key: "idcaixa", name: "fkb2fff470871dee0a"
  add_foreign_key "t_pagamentocarne", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkb2fff470c030896d"
  add_foreign_key "t_pagamentocarne", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkb2fff4704cfaeacb"
  add_foreign_key "t_pagamentocarne", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkb2fff470fae1931c"
  add_foreign_key "t_pagamentocheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fkad5b62dc97135217"
  add_foreign_key "t_pagamentocheque", "t_conta", column: "idconta", primary_key: "idconta", name: "fkad5b62dcd68ea597"
  add_foreign_key "t_pagamentocheque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkad5b62dc512ff192"
  add_foreign_key "t_pagamentochequeloja", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkf91acef656552580"
  add_foreign_key "t_pagamentochequeloja", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkf91acef68e0bb6a4"
  add_foreign_key "t_pagamentochequeloja", "t_pagamentocheque", column: "idpagamentocheque", primary_key: "idpagamentocheque", name: "fkf91acef6f8745f79"
  add_foreign_key "t_pagamentodespesa", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkdfc48ba56552580"
  add_foreign_key "t_pagamentodespesa", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkdfc48ba512ff192"
  add_foreign_key "t_pagamentodespesa", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkdfc48bafae1931c"
  add_foreign_key "t_pagamentodespesacheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk47593b5b97135217"
  add_foreign_key "t_pagamentodespesacheque", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk47593b5bbc34235f"
  add_foreign_key "t_pagamentodespesalancamento", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk60bfb9b4dcecfc3"
  add_foreign_key "t_pagamentodespesalancamento", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk60bfb9b4bc34235f"
  add_foreign_key "t_pagamentodespesalancamentoagendado", "t_conta", column: "idconta", primary_key: "idconta", name: "fk65d94b8bd68ea597"
  add_foreign_key "t_pagamentodespesalancamentoagendado", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fk65d94b8bbc34235f"
  add_foreign_key "t_pagamentoduplicata", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk58cade6c512ff192"
  add_foreign_key "t_pagamentoduplicata", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk58cade6cfae1931c"
  add_foreign_key "t_pagamentoduplicatacheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fkf0693cd97135217"
  add_foreign_key "t_pagamentoduplicatacheque", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fkf0693cd31348803"
  add_foreign_key "t_pagamentoduplicatasareceber", "t_conta", column: "idconta", primary_key: "idconta", name: "fkb21a5bc0d68ea597"
  add_foreign_key "t_pagamentoduplicatasareceber", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb21a5bc0512ff192"
  add_foreign_key "t_pagamentoduplicatasareceber", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkb21a5bc0fae1931c"
  add_foreign_key "t_pagamentoduplicatasareceberitem", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fk6731ead34fcd52eb"
  add_foreign_key "t_pagamentoduplicatasareceberitem", "t_pagamentoduplicatasareceber", column: "idpagamentoduplicatasareceber", primary_key: "idpagamentoduplicatasareceber", name: "fk6731ead3371d0521"
  add_foreign_key "t_pagamentoloteduplicata", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk8282af384cfaeacb"
  add_foreign_key "t_pagamentoloteduplicata", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk8282af38fae1931c"
  add_foreign_key "t_pagamentoloteduplicataconta", "t_conta", column: "idconta", primary_key: "idconta", name: "fkc2375317d68ea597"
  add_foreign_key "t_pagamentoloteduplicataconta", "t_pagamentoloteduplicata", column: "idpagamentoloteduplicata", primary_key: "idpagamentoloteduplicata", name: "fkc23753172c34cbfb"
  add_foreign_key "t_pagamentotitulo", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkca72bc7456552580"
  add_foreign_key "t_pagamentotitulo", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkca72bc74c030896d"
  add_foreign_key "t_pagamentotitulo", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fkca72bc74ffee83d7"
  add_foreign_key "t_pagamentotitulo", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fkca72bc74dcecfc3"
  add_foreign_key "t_pagamentotitulo", "t_troca", column: "idtroca", primary_key: "idtroca", name: "fkca72bc7468762ed1"
  add_foreign_key "t_pagamentotitulo", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkca72bc74512ff192"
  add_foreign_key "t_pagamentotitulo", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fkca72bc74d4c92730"
  add_foreign_key "t_pagamentotitulo", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkca72bc74fae1931c"
  add_foreign_key "t_pagamentotitulo", "t_usuario", column: "idusuariovisto", primary_key: "idusuario", name: "fkca72bc74b77454a7"
  add_foreign_key "t_pagamentotituloitem", "t_depositobancario", column: "iddepositobancariovinculado", primary_key: "iddepositobancario", name: "fka13a51a72743cabc"
  add_foreign_key "t_pagamentotituloitem", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fka13a51a732a312a9"
  add_foreign_key "t_pagamentotituloitemimpostoretido", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fkb9b33917ef63c7d0"
  add_foreign_key "t_pagamentotituloitemimpostoretido", "t_imposto", column: "idimposto", primary_key: "idimposto", name: "fkb9b33917dbefab9a"
  add_foreign_key "t_pagamentotituloitemimpostoretido", "t_pagamentotituloitem", column: "idpagamentotituloitem", primary_key: "idpagamentotituloitem", name: "fkb9b33917306c006f"
  add_foreign_key "t_pagamentotitulolancamentodesfazimento", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk70de4443dcecfc3"
  add_foreign_key "t_pagamentotitulolancamentodesfazimento", "t_pagamentotitulo", column: "idpagamentotitulo", primary_key: "idpagamentotitulo", name: "fk70de444332a312a9"
  add_foreign_key "t_pagduplicatalancamento", "t_lancamentoconta", column: "idlancamentoconta", primary_key: "idlancamentoconta", name: "fk831415b6dcecfc3"
  add_foreign_key "t_pagduplicatalancamento", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fk831415b631348803"
  add_foreign_key "t_pagduplicatalancamentoagendado", "t_conta", column: "idconta", primary_key: "idconta", name: "fk9cd4158dd68ea597"
  add_foreign_key "t_pagduplicatalancamentoagendado", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fk9cd4158d31348803"
  add_foreign_key "t_paglotechequeitem", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk1935d9b397135217"
  add_foreign_key "t_paglotechequeitem", "t_lotecheque", column: "idlotecheque", primary_key: "idlotecheque", name: "fk1935d9b366be6c1f"
  add_foreign_key "t_paglotechequeitem", "t_pagamentoloteduplicata", column: "idpagamentoloteduplicata", primary_key: "idpagamentoloteduplicata", name: "fk1935d9b32c34cbfb"
  add_foreign_key "t_pagloteduplicataitem", "t_duplicatapagar", column: "idduplicata", primary_key: "idduplicatapagar", name: "fk4a2b771b63f475d9"
  add_foreign_key "t_pagloteduplicataitem", "t_loteduplicatapagar", column: "idloteduplicata", primary_key: "idloteduplicatapagar", name: "fk4a2b771bb6bdf879"
  add_foreign_key "t_pagloteduplicataitem", "t_pagamentoloteduplicata", column: "idpagamentoloteduplicata", primary_key: "idpagamentoloteduplicata", name: "fk4a2b771b2c34cbfb"
  add_foreign_key "t_parametro", "t_tipoparametro", column: "idtipoparametro", primary_key: "idtipoparametro", name: "fk9ce266ee5c3d462b"
  add_foreign_key "t_parametroestabelecimento", "t_tipoparametro", column: "idtipoparametro", primary_key: "idtipoparametro", name: "fkd8fac6665c3d462b"
  add_foreign_key "t_parecergerenciadependencia", "t_parecergerencia", column: "idparecerdependencia", primary_key: "idparecergerencia", name: "fk5f32068757be9f3"
  add_foreign_key "t_parecergerenciadependencia", "t_parecergerencia", column: "idparecergerencia", primary_key: "idparecergerencia", name: "fk5f3206874d94e28d"
  add_foreign_key "t_parecergerenciagruporesponsavel", "t_grupo", column: "idgrupo", primary_key: "idgrupo", name: "fk18de4b6961d7988"
  add_foreign_key "t_parecergerenciagruporesponsavel", "t_parecergerencia", column: "idparecergerencia", primary_key: "idparecergerencia", name: "fk18de4b64d94e28d"
  add_foreign_key "t_pedido", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk43c2c190ffee83d7"
  add_foreign_key "t_pedido", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk43c2c1908e0bb6a4"
  add_foreign_key "t_pedido", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk43c2c1909c483131"
  add_foreign_key "t_pedido", "t_marca", column: "idmarca", primary_key: "idmarca", name: "fk43c2c190f1e3e624"
  add_foreign_key "t_pedido", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk43c2c190512ff192"
  add_foreign_key "t_pedido", "t_usuario", column: "idusuarioaprovacao", primary_key: "idusuario", name: "fk43c2c190845195a6"
  add_foreign_key "t_pedido", "t_usuario", column: "idusuariofechamento", primary_key: "idusuario", name: "fk43c2c190860a346"
  add_foreign_key "t_pedidodevenda", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk5d7fd4ebc030896d"
  add_foreign_key "t_pedidodevenda", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk5d7fd4ebffee83d7"
  add_foreign_key "t_pedidodevenda", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk5d7fd4eb8e0bb6a4"
  add_foreign_key "t_pedidodevenda", "t_estabelecimento", column: "idestabelecimentoatendimento", primary_key: "idestabelecimento", name: "fk5d7fd4ebf3b3d562"
  add_foreign_key "t_pedidodevenda", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk5d7fd4eb331bbf60"
  add_foreign_key "t_pedidodevenda", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk5d7fd4ebf2ba8032"
  add_foreign_key "t_pedidodevenda", "t_pedidodevendacliente", column: "idpedidodevendacliente", primary_key: "idpedidodevendacliente", name: "fk5d7fd4eb17b93be5"
  add_foreign_key "t_pedidodevenda", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk5d7fd4eb512ff192"
  add_foreign_key "t_pedidodevenda", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk5d7fd4ebd4c92730"
  add_foreign_key "t_pedidodevenda", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk5d7fd4ebfae1931c"
  add_foreign_key "t_pedidodevenda", "t_usuario", column: "idusuarioliberacao", primary_key: "idusuario", name: "fk5d7fd4ebac6d984e"
  add_foreign_key "t_pedidodevendacliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk4dc962afc030896d"
  add_foreign_key "t_pedidodevendacliente", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk4dc962afffee83d7"
  add_foreign_key "t_pedidodevendacliente", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4dc962af8e0bb6a4"
  add_foreign_key "t_pedidodevendacliente", "t_estabelecimento", column: "idestabelecimentoatendimento", primary_key: "idestabelecimento", name: "fk4dc962aff3b3d562"
  add_foreign_key "t_pedidodevendacliente", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk4dc962af331bbf60"
  add_foreign_key "t_pedidodevendacliente", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk4dc962aff2ba8032"
  add_foreign_key "t_pedidodevendacliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk4dc962af512ff192"
  add_foreign_key "t_pedidodevendacliente", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk4dc962afd4c92730"
  add_foreign_key "t_pedidodevendacliente", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk4dc962affae1931c"
  add_foreign_key "t_pedidodevendacliente", "t_usuario", column: "idusuarioliberacao", primary_key: "idusuario", name: "fk4dc962afac6d984e"
  add_foreign_key "t_pedidodevendahistorico", "t_pedidodevenda", column: "idpedidodevenda", primary_key: "idpedidodevenda", name: "fkd95263651d652cdb"
  add_foreign_key "t_pedidodevendahistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkd9526365512ff192"
  add_foreign_key "t_pedidoduplicataadiantamento", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fk334db8a83031d808"
  add_foreign_key "t_pedidoduplicataadiantamento", "t_pedido", column: "idpedido", primary_key: "idpedido", name: "fk334db8a85bea3011"
  add_foreign_key "t_pedidoedi", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk3655b3daffee83d7"
  add_foreign_key "t_pedidoedi", "t_edi", column: "idedi", primary_key: "idedi", name: "fk3655b3da2d0d47f8"
  add_foreign_key "t_pedidoedi", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3655b3da8e0bb6a4"
  add_foreign_key "t_pedidoedi", "t_funcionario", column: "idcomprador", primary_key: "idfuncionario", name: "fk3655b3da7f0af57e"
  add_foreign_key "t_pedidogenerico", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fkfa7e5308ffee83d7"
  add_foreign_key "t_pedidogenerico", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkfa7e53088e0bb6a4"
  add_foreign_key "t_pedidogenerico", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fkfa7e53089c483131"
  add_foreign_key "t_pedidogenerico", "t_pedido", column: "idpedidoassociado", primary_key: "idpedido", name: "fkfa7e5308b7b19909"
  add_foreign_key "t_pedidogenerico", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fkfa7e5308b209b97e"
  add_foreign_key "t_pedidogenericoembarque", "t_pedidogenerico", column: "idpedidogenerico", primary_key: "idpedidogenerico", name: "fka11e7b9e5af05621"
  add_foreign_key "t_pedidogenericohistorico", "t_pedidogenerico", column: "idpedidogenerico", primary_key: "idpedidogenerico", name: "fk78db11885af05621"
  add_foreign_key "t_pedidogenericohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk78db1188512ff192"
  add_foreign_key "t_pedidogenericoproduto", "t_grade", column: "idgrade", primary_key: "idgrade", name: "fk9d1f8691f149c15a"
  add_foreign_key "t_pedidogenericoproduto", "t_pedidogenerico", column: "idpedidogenerico", primary_key: "idpedidogenerico", name: "fk9d1f86915af05621"
  add_foreign_key "t_pedidogenericoproduto", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk9d1f86911c4571a"
  add_foreign_key "t_pedidogenericoproduto", "t_referenciaproduto", column: "idreferenciaprodutocadastrada", primary_key: "idreferenciaproduto", name: "fk9d1f8691961dc202"
  add_foreign_key "t_pedidogenericoproduto", "t_unidade", column: "idunidade", primary_key: "idunidade", name: "fk9d1f86918247fc08"
  add_foreign_key "t_pedidogenericoprodutodistribuicao", "t_corgrade", column: "idcorgrade", primary_key: "idcorgrade", name: "fk3fcbbf69b231e2d6"
  add_foreign_key "t_pedidogenericoprodutodistribuicao", "t_pedidogenericoproduto", column: "idpedidogenericoproduto", primary_key: "idpedidogenericoproduto", name: "fk3fcbbf69be7de891"
  add_foreign_key "t_pedidogenericoprodutodistribuicao", "t_tamanhograde", column: "idtamanhograde", primary_key: "idtamanhograde", name: "fk3fcbbf693f3faa3a"
  add_foreign_key "t_pedidohistorico", "t_pedido", column: "idpedido", primary_key: "idpedido", name: "fkab06f0405bea3011"
  add_foreign_key "t_pedidohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkab06f040512ff192"
  add_foreign_key "t_pendenciaatendimentofuturo", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkab3d1618e0bb6a4"
  add_foreign_key "t_pendenciaatendimentofuturo", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fkab3d161b653eec6"
  add_foreign_key "t_pendenciaatendimentofuturo", "t_usuario", column: "idusuarioatendimento", primary_key: "idusuario", name: "fkab3d161e34f961c"
  add_foreign_key "t_pendenciaatendimentofuturo", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkab3d1614cfaeacb"
  add_foreign_key "t_pendenciaatendimentofuturoitem", "t_pendenciaatendimentofuturo", column: "idpendenciaatendimentofuturo", primary_key: "idpendenciaatendimentofuturo", name: "fkffdcabf46ef0c821"
  add_foreign_key "t_pendenciaatendimentofuturoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkffdcabf47f9a249e"
  add_foreign_key "t_perdaprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fk10e3fa251f4bf683"
  add_foreign_key "t_perdaprocessodefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk10e3fa257f9a249e"
  add_foreign_key "t_perfilnegociocliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk7a190307c030896d"
  add_foreign_key "t_perfilnegociocliente", "t_perfilnegocio", column: "idperfilnegocio", primary_key: "idperfilnegocio", name: "fk7a190307fd477715"
  add_foreign_key "t_planejamentofaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk446cfa4c31b6a6bd"
  add_foreign_key "t_planejamentofaseprocessodefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk446cfa4c512ff192"
  add_foreign_key "t_planofinanceira", "t_financeira", column: "idfinanceira", primary_key: "idfinanceira", name: "fkbde97319a1b93baa"
  add_foreign_key "t_planooperadoracartao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk82eb3c08e0bb6a4"
  add_foreign_key "t_planooperadoracartao", "t_operadoracartao", column: "idoperadoracartao", primary_key: "idoperadoracartao", name: "fk82eb3c0c71f7168"
  add_foreign_key "t_planooperadoracartao", "t_redecartao", column: "idredecartao", primary_key: "idredecartao", name: "fk82eb3c013c0c7d2"
  add_foreign_key "t_planovendafutura", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk74ec77a08e0bb6a4"
  add_foreign_key "t_planovendafutura", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk74ec77a03d508472"
  add_foreign_key "t_planovendafutura", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk74ec77a0d4c92730"
  add_foreign_key "t_planovendafutura", "t_usuario", column: "idusuariocadastrofinal", primary_key: "idusuario", name: "fk74ec77a0d0ffa9e9"
  add_foreign_key "t_planovendafutura", "t_usuario", column: "idusuariocadastroparcial", primary_key: "idusuario", name: "fk74ec77a0888a22a5"
  add_foreign_key "t_planovendafutura", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk74ec77a0fae1931c"
  add_foreign_key "t_pontodevenda", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fka490b63c8e0bb6a4"
  add_foreign_key "t_pontodevenda", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fka490b63cb653eec6"
  add_foreign_key "t_pontodevenda", "t_usuario", column: "idusuariodesbloqueio", primary_key: "idusuario", name: "fka490b63c408e73c0"
  add_foreign_key "t_pontuacaofuncionario", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk99d608068e0bb6a4"
  add_foreign_key "t_pontuacaofuncionario", "t_usuario", column: "idusuarioalteracao", primary_key: "idusuario", name: "fk99d608063d508472"
  add_foreign_key "t_pontuacaofuncionario", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk99d608064cfaeacb"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_atividade", column: "idatividade", primary_key: "idatividade", name: "fk3009081988e72579"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_atividade", column: "idatividade", primary_key: "idatividade", name: "fk300908198957e181"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_atividadenivel", column: "idatividadenivel", primary_key: "idatividadenivel", name: "fk300908192142c8ef"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_atividadenivel", column: "idatividadenivel", primary_key: "idatividadenivel", name: "fk300908197ef73ff7"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk30090819793c5f10"
  add_foreign_key "t_pontuacaofuncionarioitem", "t_pontuacaofuncionario", column: "idpontuacaofuncionario", primary_key: "idpontuacaofuncionario", name: "fk30090819f1a52850"
  add_foreign_key "t_portador", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk5cc8c0f2793c5f10"
  add_foreign_key "t_precontrato", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fke8358734c030896d"
  add_foreign_key "t_precontrato", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fke8358734dfb101a3"
  add_foreign_key "t_precontrato", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fke83587348e0bb6a4"
  add_foreign_key "t_precontrato", "t_funcionario", column: "idconsultorresponsavel", primary_key: "idfuncionario", name: "fke83587347eab96dc"
  add_foreign_key "t_precontrato", "t_precontrato", column: "idprecontratooriginal", primary_key: "idprecontrato", name: "fke83587343237d484"
  add_foreign_key "t_precontrato", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fke83587344cfaeacb"
  add_foreign_key "t_precontratoarquivo", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk399154d9ddb64eb3"
  add_foreign_key "t_precontratocontato", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fkcabf9836ddb64eb3"
  add_foreign_key "t_precontratocustomizacao", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk92d35866ddb64eb3"
  add_foreign_key "t_precontratocustomizacao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk92d358664cfaeacb"
  add_foreign_key "t_precontratocustomizacaoitem", "t_contratotipoinstalacao", column: "idcontratotipoinstalacao", primary_key: "idcontratotipoinstalacao", name: "fkcf27287934a93e2e"
  add_foreign_key "t_precontratocustomizacaoitem", "t_contratotipoleitura", column: "idcontratotipoleitura", primary_key: "idcontratotipoleitura", name: "fkcf272879c0be16d4"
  add_foreign_key "t_precontratocustomizacaoitem", "t_contratotipolocacao", column: "idcontratotipolocacao", primary_key: "idcontratotipolocacao", name: "fkcf272879e22417f4"
  add_foreign_key "t_precontratocustomizacaoitem", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fkcf272879dfb101a3"
  add_foreign_key "t_precontratocustomizacaoitem", "t_precontratocustomizacao", column: "idprecontratocustomizacao", primary_key: "idprecontratocustomizacao", name: "fkcf27287932025cb7"
  add_foreign_key "t_precontratocustomizacaoitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkcf2728797f9a249e"
  add_foreign_key "t_precontratofuncionarioparticipante", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk203a6f19793c5f10"
  add_foreign_key "t_precontratofuncionarioparticipante", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk203a6f19ddb64eb3"
  add_foreign_key "t_precontratolocatarioresponsavel", "t_locatarioresponsavelfuncao", column: "idlocatarioresponsavelfuncao", primary_key: "idlocatarioresponsavelfuncao", name: "fk9c6b022a250583b"
  add_foreign_key "t_precontratolocatarioresponsavel", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk9c6b022addb64eb3"
  add_foreign_key "t_precontratolocatarioresponsavelcontato", "t_precontratolocatarioresponsavel", column: "idprecontratolocatarioresponsavel", primary_key: "idprecontratolocatarioresponsavel", name: "fkd602cca091465d1f"
  add_foreign_key "t_precontratoparecergerencia", "t_parecergerencia", column: "idparecergerencia", primary_key: "idparecergerencia", name: "fk9a7928b64d94e28d"
  add_foreign_key "t_precontratoparecergerencia", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk9a7928b6ddb64eb3"
  add_foreign_key "t_precontratoparecergerencia", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9a7928b6512ff192"
  add_foreign_key "t_precontratoperguntapersonalizada", "t_perguntapersonalizada", column: "idperguntapersonalizada", primary_key: "idperguntapersonalizada", name: "fk8c0d12094d5ba34f"
  add_foreign_key "t_precontratoperguntapersonalizada", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fk8c0d1209ddb64eb3"
  add_foreign_key "t_precontratoregiao", "t_precontrato", column: "idprecontrato", primary_key: "idprecontrato", name: "fke4536977ddb64eb3"
  add_foreign_key "t_precontratoregiao", "t_regiao", column: "idregiao", primary_key: "idregiao", name: "fke4536977973dccd7"
  add_foreign_key "t_preorcamento", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk589fd8b8c030896d"
  add_foreign_key "t_preorcamento", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk589fd8b8ffee83d7"
  add_foreign_key "t_preorcamento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk589fd8b88e0bb6a4"
  add_foreign_key "t_preorcamento", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk589fd8b8f2ba8032"
  add_foreign_key "t_preorcamento", "t_pedidodevenda", column: "idpedidodevenda", primary_key: "idpedidodevenda", name: "fk589fd8b81d652cdb"
  add_foreign_key "t_preorcamento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk589fd8b8512ff192"
  add_foreign_key "t_preorcamento", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk589fd8b8d4c92730"
  add_foreign_key "t_preorcamento", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk589fd8b8fae1931c"
  add_foreign_key "t_preorcamento", "t_usuario", column: "idusuarioliberacao", primary_key: "idusuario", name: "fk589fd8b8ac6d984e"
  add_foreign_key "t_processodefabricacao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk758668218e0bb6a4"
  add_foreign_key "t_processodefabricacao", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk758668211c4571a"
  add_foreign_key "t_processodefabricacao", "t_usuario", column: "idusuarioabertura", primary_key: "idusuario", name: "fk75866821b4c3ac90"
  add_foreign_key "t_processodefabricacao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk75866821fae1931c"
  add_foreign_key "t_processodefabricacao", "t_usuario", column: "idusuarioencerramento", primary_key: "idusuario", name: "fk75866821c7179e2d"
  add_foreign_key "t_procfaturamentoestabmensal", "t_faturamentoestabmensal", column: "idfaturamentoestabmensal", primary_key: "idfaturamentoestabmensal", name: "fk75a09d4a849066c"
  add_foreign_key "t_produto", "t_cor", column: "idcor", primary_key: "idcor", name: "fk4b5d6deec3c7bfb8"
  add_foreign_key "t_produto", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk4b5d6dee1c4571a"
  add_foreign_key "t_produto", "t_tamanho", column: "idtamanho", primary_key: "idtamanho", name: "fk4b5d6deeec8be9d4"
  add_foreign_key "t_produtoagregado", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk35216f2c8e0bb6a4"
  add_foreign_key "t_produtoagregado", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk35216f2c7f9a249e"
  add_foreign_key "t_produtoagregado", "t_romaneiodeentrada", column: "idromaneiodeentrada", primary_key: "idromaneiodeentrada", name: "fk35216f2c77f09f53"
  add_foreign_key "t_produtoagregado", "t_romaneiodesaidadefabricacao", column: "idromaneiodefabricacao", primary_key: "idromaneiodesaidadefabricacao", name: "fk35216f2ce4a28582"
  add_foreign_key "t_produtoagregado", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk35216f2cb653eec6"
  add_foreign_key "t_produtoagregado", "t_tipoprodutoagregado", column: "idtipoprodutoagregado", primary_key: "idtipoprodutoagregado", name: "fk35216f2c4b3b9554"
  add_foreign_key "t_produtoagregadohistorico", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fke19bd2248e0bb6a4"
  add_foreign_key "t_produtoagregadohistorico", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fke19bd224d83577dc"
  add_foreign_key "t_produtoagregadohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fke19bd224512ff192"
  add_foreign_key "t_produtoajuste", "t_ajusteestoque", column: "idajusteestoque", primary_key: "idajusteestoque", name: "fk794e78c6ea746931"
  add_foreign_key "t_produtoajuste", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk794e78c67f9a249e"
  add_foreign_key "t_produtobaixaservico", "t_baixaservico", column: "idbaixaservico", primary_key: "idbaixaservico", name: "fk1f232fdac411445b"
  add_foreign_key "t_produtobaixaservico", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk1f232fda7f9a249e"
  add_foreign_key "t_produtocodigobarra", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk45664bbb7f9a249e"
  add_foreign_key "t_produtodaremessa", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkac8d6dab7f9a249e"
  add_foreign_key "t_produtodaremessa", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fkac8d6dabd83577dc"
  add_foreign_key "t_produtodaremessa", "t_remessaavenda", column: "idremessaavenda", primary_key: "idremessaavenda", name: "fkac8d6dab82a1985c"
  add_foreign_key "t_produtodopedido", "t_pedido", column: "idpedido", primary_key: "idpedido", name: "fk108bdf7e5bea3011"
  add_foreign_key "t_produtodopedido", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk108bdf7e7f9a249e"
  add_foreign_key "t_produtoedi", "t_edi", column: "idedi", primary_key: "idedi", name: "fk309246bc2d0d47f8"
  add_foreign_key "t_produtoedi", "t_grupoproduto", column: "idgrupoproduto", primary_key: "idgrupoproduto", name: "fk309246bc7064b194"
  add_foreign_key "t_produtoedi", "t_material", column: "idmaterial", primary_key: "idmaterial", name: "fk309246bcef91922"
  add_foreign_key "t_produtoedi", "t_produtoespecifico", column: "idprodutoespecifico", primary_key: "idprodutoespecifico", name: "fk309246bcc42510ae"
  add_foreign_key "t_produtoedi", "t_produtogenerico", column: "idprodutogenerico", primary_key: "idprodutogenerico", name: "fk309246bc431d6dae"
  add_foreign_key "t_produtoedi", "t_secao", column: "idsecao", primary_key: "idsecao", name: "fk309246bcf290322a"
  add_foreign_key "t_produtoedi", "t_unidade", column: "idunidade", primary_key: "idunidade", name: "fk309246bc8247fc08"
  add_foreign_key "t_produtoentradafaseordemfabricacao", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fka6d156c8a9af59d5"
  add_foreign_key "t_produtoentradafaseordemfabricacao", "t_produtoentradafichatecnicafase", column: "idprodutoentradafichatecnicafase", primary_key: "idprodutoentradafichatecnicafase", name: "fka6d156c82fcea495"
  add_foreign_key "t_produtoentradafaseordemfabricacao", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fka6d156c81c4571a"
  add_foreign_key "t_produtoentradafichatecnicafase", "t_fichatecnicafase", column: "idfichatecnicafase", primary_key: "idfichatecnicafase", name: "fk15513548c22d159"
  add_foreign_key "t_produtoentradafichatecnicafase", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk155135481c4571a"
  add_foreign_key "t_produtoespecifico", "t_produtogenerico", column: "idprodutogenerico", primary_key: "idprodutogenerico", name: "fk60b92726431d6dae"
  add_foreign_key "t_produtoestabelecimentoedi", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk54093a848e0bb6a4"
  add_foreign_key "t_produtoestabelecimentoedi", "t_produtoedi", column: "idprodutoedi", primary_key: "idprodutoedi", name: "fk54093a84194edade"
  add_foreign_key "t_produtofaseprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk208abcd131b6a6bd"
  add_foreign_key "t_produtofaseprocessodefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk208abcd17f9a249e"
  add_foreign_key "t_produtofiscalkamaleon", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk4f91c6ee31b6a6bd"
  add_foreign_key "t_produtofiscalkamaleon", "t_notafiscalentradaproduto", column: "idnotafiscalentradaproduto", primary_key: "idnotafiscalentradaproduto", name: "fk4f91c6ee67fa4677"
  add_foreign_key "t_produtofiscalkamaleon", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk4f91c6ee7f9a249e"
  add_foreign_key "t_produtofiscalkamaleon", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk4f91c6eec9afb7d9"
  add_foreign_key "t_produtofiscalkamaleon", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk4f91c6ee512ff192"
  add_foreign_key "t_produtofiscalkamaleon", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk4f91c6eefae1931c"
  add_foreign_key "t_produtogenerico", "t_grupoproduto", column: "idgrupoproduto", primary_key: "idgrupoproduto", name: "fk33cdc1667064b194"
  add_foreign_key "t_produtolistaevento", "t_listaevento", column: "idlistaevento", primary_key: "idlistaevento", name: "fkd2bb8faa3c95fb2c"
  add_foreign_key "t_produtolistaevento", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fkd2bb8faa7f9a249e"
  add_foreign_key "t_produtonfe", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fka76444ff2a4b1c73"
  add_foreign_key "t_produtonfe", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fka76444ff7f9a249e"
  add_foreign_key "t_produtonfeicmsufdestino", "t_produtonfe", column: "idprodutonfe", primary_key: "idprodutonfe", name: "fkde809f183bfe1b6b"
  add_foreign_key "t_produtonfmodelo1", "t_notafiscalmodelo1", column: "idnotafiscalmodelo1", primary_key: "idnotafiscalmodelo1", name: "fk32fb6385e71a9adb"
  add_foreign_key "t_produtonfmodelo1", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk32fb63857f9a249e"
  add_foreign_key "t_produtonfmodelo1serie1", "t_notafiscalmodelo1serie1", column: "idnotafiscalmodelo1serie1", primary_key: "idnotafiscalmodelo1serie1", name: "fke2a8d61ac99cb325"
  add_foreign_key "t_produtonfmodelo1serie1", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fke2a8d61a7f9a249e"
  add_foreign_key "t_produtonfseried1", "t_notafiscalseried", column: "idnotafiscalseried1", primary_key: "idnotafiscalseried", name: "fk60174be341526f77"
  add_foreign_key "t_produtonfseried1", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk60174be37f9a249e"
  add_foreign_key "t_produtopedidodevenda", "t_pedidodevenda", column: "idpedidodevenda", primary_key: "idpedidodevenda", name: "fk49618a481d652cdb"
  add_foreign_key "t_produtopedidodevenda", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk49618a487f9a249e"
  add_foreign_key "t_produtopedidodevendacliente", "t_pedidodevendacliente", column: "idpedidodevendacliente", primary_key: "idpedidodevendacliente", name: "fk644f5ab217b93be5"
  add_foreign_key "t_produtopedidodevendacliente", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk644f5ab27f9a249e"
  add_foreign_key "t_produtopedidoedi", "t_pedidoedi", column: "idpedidoedi", primary_key: "idpedidoedi", name: "fkd87a9fb7101b920e"
  add_foreign_key "t_produtoperdaprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fk6db024821f4bf683"
  add_foreign_key "t_produtoperdaprocessodefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk6db024827f9a249e"
  add_foreign_key "t_produtoplanejamentofabricacao", "t_planejamentofaseprocessodefabricacao", column: "idplanejamentofaseprocessodefabricacao", primary_key: "idplanejamentofaseprocessodefabricacao", name: "fk7245a241b97c2099"
  add_foreign_key "t_produtoplanejamentofabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk7245a2417f9a249e"
  add_foreign_key "t_produtopreorcamento", "t_preorcamento", column: "idpreorcamento", primary_key: "idpreorcamento", name: "fk3f3383bb1b229aa6"
  add_foreign_key "t_produtopreorcamento", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk3f3383bb7f9a249e"
  add_foreign_key "t_produtopreorcamento", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk3f3383bbd83577dc"
  add_foreign_key "t_produtoprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fk2eefd46431b6a6bd"
  add_foreign_key "t_produtoprocessodefabricacao", "t_notafiscalentradaproduto", column: "idnotafiscalentradaproduto", primary_key: "idnotafiscalentradaproduto", name: "fk2eefd46467fa4677"
  add_foreign_key "t_produtoprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fk2eefd4641f4bf683"
  add_foreign_key "t_produtoprocessodefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk2eefd4647f9a249e"
  add_foreign_key "t_produtoprocessodefabricacao", "t_romaneiodeentrada", column: "idromaneiodeentrada", primary_key: "idromaneiodeentrada", name: "fk2eefd46477f09f53"
  add_foreign_key "t_produtopromocao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk8c8d78507f9a249e"
  add_foreign_key "t_produtopromocao", "t_promocao", column: "idpromocao", primary_key: "idpromocao", name: "fk8c8d7850a8aacd05"
  add_foreign_key "t_produtopromocao", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk8c8d78501c4571a"
  add_foreign_key "t_produtoremarcacaopreco", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk8a44e4397f9a249e"
  add_foreign_key "t_produtoremarcacaopreco", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk8a44e4391c4571a"
  add_foreign_key "t_produtoremarcacaopreco", "t_remarcacaopreco", column: "idremarcacaopreco", primary_key: "idremarcacaopreco", name: "fk8a44e439435069f3"
  add_foreign_key "t_produtoromaneiodesaidadefabricacao", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk1dd669d17f9a249e"
  add_foreign_key "t_produtoromaneiodesaidadefabricacao", "t_produtoagregado", column: "idprodutoagregado", primary_key: "idprodutoagregado", name: "fk1dd669d1d83577dc"
  add_foreign_key "t_produtoromaneiodesaidadefabricacao", "t_romaneiodesaidadefabricacao", column: "idromaneiodesaidadefabricacao", primary_key: "idromaneiodesaidadefabricacao", name: "fk1dd669d17f713507"
  add_foreign_key "t_produtoromaneioentradapedido", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk23a128807f9a249e"
  add_foreign_key "t_produtoromaneioentradapedido", "t_romaneioentradapedido", column: "idromaneioentradapedido", primary_key: "idromaneioentradapedido", name: "fk23a1288072abeb5f"
  add_foreign_key "t_produtosaidafaseordemfabricacao", "t_faseordemfabricacao", column: "idfaseordemfabricacao", primary_key: "idfaseordemfabricacao", name: "fk8eb05967a9af59d5"
  add_foreign_key "t_produtosaidafaseordemfabricacao", "t_produtosaidafichatecnicafase", column: "idprodutosaidafichatecnicafase", primary_key: "idprodutosaidafichatecnicafase", name: "fk8eb0596771f51d57"
  add_foreign_key "t_produtosaidafaseordemfabricacao", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk8eb059671c4571a"
  add_foreign_key "t_produtosaidafichatecnicafase", "t_fichatecnicafase", column: "idfichatecnicafase", primary_key: "idfichatecnicafase", name: "fkb9674f09c22d159"
  add_foreign_key "t_produtosaidafichatecnicafase", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fkb9674f091c4571a"
  add_foreign_key "t_produtotroca", "t_motivotroca", column: "idmotivotroca", primary_key: "idmotivotroca", name: "fk5fcfc0814598ff51"
  add_foreign_key "t_produtotroca", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk5fcfc0817f9a249e"
  add_foreign_key "t_produtotroca", "t_troca", column: "idtroca", primary_key: "idtroca", name: "fk5fcfc08168762ed1"
  add_foreign_key "t_programacaopagamento", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fkb5410c5def63c7d0"
  add_foreign_key "t_programacaopagamento", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fkb5410c5d3031d808"
  add_foreign_key "t_programacaopagamento", "t_pagamentodespesa", column: "idpagamentodespesa", primary_key: "idpagamentodespesa", name: "fkb5410c5dbc34235f"
  add_foreign_key "t_programacaopagamento", "t_pagamentoduplicata", column: "idpagamentoduplicata", primary_key: "idpagamentoduplicata", name: "fkb5410c5d31348803"
  add_foreign_key "t_programacaopagamentoconta", "t_conta", column: "idconta", primary_key: "idconta", name: "fk880e6512d68ea597"
  add_foreign_key "t_programacaopagamentoconta", "t_formapagamento", column: "idformapagamento", primary_key: "idformapagamento", name: "fk880e6512331bbf60"
  add_foreign_key "t_programacaopagamentoconta", "t_programacaopagamento", column: "idprogramacaopagamento", primary_key: "idprogramacaopagamento", name: "fk880e651291a34525"
  add_foreign_key "t_programacaopagamentohistorico", "t_programacaopagamento", column: "idprogramacaopagamento", primary_key: "idprogramacaopagamento", name: "fke0cb7c1391a34525"
  add_foreign_key "t_programacaopagamentohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fke0cb7c13512ff192"
  add_foreign_key "t_promocao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk20cc27ed8e0bb6a4"
  add_foreign_key "t_promocao", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk20cc27edb653eec6"
  add_foreign_key "t_promocao", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk20cc27edd4c92730"
  add_foreign_key "t_promocao", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk20cc27ed4cfaeacb"
  add_foreign_key "t_promocao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk20cc27edfae1931c"
  add_foreign_key "t_promocao", "t_usuario", column: "idusuarioencerramento", primary_key: "idusuario", name: "fk20cc27edc7179e2d"
  add_foreign_key "t_prorrogarcheque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk79b14f0c8e0bb6a4"
  add_foreign_key "t_prorrogarcheque", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk79b14f0c512ff192"
  add_foreign_key "t_prorrogarchequeitem", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk54c37c3f97135217"
  add_foreign_key "t_prorrogarchequeitem", "t_prorrogarcheque", column: "idprorrogarcheque", primary_key: "idprorrogarcheque", name: "fk54c37c3f8297ff99"
  add_foreign_key "t_prorrogarduplicataareceber", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk640c7755512ff192"
  add_foreign_key "t_prorrogarduplicataareceberitem", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fkac600c284fcd52eb"
  add_foreign_key "t_prorrogarduplicataareceberitem", "t_prorrogarduplicataareceber", column: "idprorrogarduplicataareceber", primary_key: "idprorrogarduplicataareceber", name: "fkac600c28399a70e9"
  add_foreign_key "t_protestoduplicataareceber", "t_cartorio", column: "idcartorio", primary_key: "idcartorio", name: "fkd2327325ac470878"
  add_foreign_key "t_protestoduplicataareceber", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkd23273254cfaeacb"
  add_foreign_key "t_protestoduplicataareceber", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkd2327325fae1931c"
  add_foreign_key "t_protestoduplicataareceberitem", "t_duplicataareceber", column: "idduplicataareceber", primary_key: "idduplicataareceber", name: "fkbfed47d84fcd52eb"
  add_foreign_key "t_protestoduplicataareceberitem", "t_protestoduplicataareceber", column: "idprotestoduplicataareceber", primary_key: "idprotestoduplicataareceber", name: "fkbfed47d8d6695cab"
  add_foreign_key "t_protestoduplicataareceberitem", "t_usuario", column: "idusuarioenvio", primary_key: "idusuario", name: "fkbfed47d8b68714df"
  add_foreign_key "t_protestoduplicataareceberitem", "t_usuario", column: "idusuarioremocao", primary_key: "idusuario", name: "fkbfed47d8c62aff68"
  add_foreign_key "t_r02", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f698e0bb6a4"
  add_foreign_key "t_r02", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f69ccadc7ed"
  add_foreign_key "t_r03", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f6a8e0bb6a4"
  add_foreign_key "t_r03", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f6accadc7ed"
  add_foreign_key "t_r03", "t_r02", column: "idr02", primary_key: "idr02", name: "fk4cc1f6a2e0836e1"
  add_foreign_key "t_r04", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f6b8e0bb6a4"
  add_foreign_key "t_r04", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f6bccadc7ed"
  add_foreign_key "t_r05", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f6c8e0bb6a4"
  add_foreign_key "t_r05", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f6cccadc7ed"
  add_foreign_key "t_r05", "t_r04", column: "idr04", primary_key: "idr04", name: "fk4cc1f6c2e0836e5"
  add_foreign_key "t_r06", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f6d8e0bb6a4"
  add_foreign_key "t_r06", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f6dccadc7ed"
  add_foreign_key "t_r07", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk4cc1f6e8e0bb6a4"
  add_foreign_key "t_r07", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk4cc1f6eccadc7ed"
  add_foreign_key "t_r07", "t_r06", column: "idr06", primary_key: "idr06", name: "fk4cc1f6e2e0836e9"
  add_foreign_key "t_rateiosdespesa", "t_despesa", column: "iddespesa", primary_key: "iddespesa", name: "fk35afa193ef63c7d0"
  add_foreign_key "t_rateiosdespesa", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk35afa1938e0bb6a4"
  add_foreign_key "t_recebimento", "t_notafiscaleletronica", column: "idnotaentrada", primary_key: "idnotafiscaleletronica", name: "fk7bf223eace76032e"
  add_foreign_key "t_recebimento", "t_notafiscaleletronica", column: "idnotasaida", primary_key: "idnotafiscaleletronica", name: "fk7bf223eac9a3042f"
  add_foreign_key "t_recebimento", "t_romaneiodeentrada", column: "idromaneiodeentrada", primary_key: "idromaneiodeentrada", name: "fk7bf223ea77f09f53"
  add_foreign_key "t_recebimento", "t_romaneioentradapedido", column: "idromaneioentradapedido", primary_key: "idromaneioentradapedido", name: "fk7bf223ea72abeb5f"
  add_foreign_key "t_recebimento", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk7bf223eab653eec6"
  add_foreign_key "t_recebimento", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk7bf223eab209b97e"
  add_foreign_key "t_recebimentocte", "t_cte", column: "idcte", primary_key: "idcte", name: "fk70e0f5ca4b4be88f"
  add_foreign_key "t_recebimentocte", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk70e0f5cac9afb7d9"
  add_foreign_key "t_recebimentoduplicata", "t_duplicatapagar", column: "idduplicatapagar", primary_key: "idduplicatapagar", name: "fke8f9103d3031d808"
  add_foreign_key "t_recebimentoduplicata", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fke8f9103dc9afb7d9"
  add_foreign_key "t_recebimentohistorico", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk44572726c9afb7d9"
  add_foreign_key "t_recebimentohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk44572726512ff192"
  add_foreign_key "t_recebimentonaofiscal", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk2056cd3056552580"
  add_foreign_key "t_recebimentonaofiscal", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk2056cd30c030896d"
  add_foreign_key "t_recebimentonaofiscal", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk2056cd30793c5f10"
  add_foreign_key "t_recebimentonaofiscal", "t_pontodevenda", column: "idpontodevenda", primary_key: "idpontodevenda", name: "fk2056cd303d38c966"
  add_foreign_key "t_recebimentonaofiscal", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk2056cd30512ff192"
  add_foreign_key "t_recebimentonaofiscal", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk2056cd30fae1931c"
  add_foreign_key "t_recebimentonotafiscalentrada", "t_notafiscalentrada", column: "idnotafiscalentrada", primary_key: "idnotafiscalentrada", name: "fke0529ee11112efb"
  add_foreign_key "t_recebimentonotafiscalentrada", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fke0529ee1c9afb7d9"
  add_foreign_key "t_recebimentopedido", "t_pedido", column: "idpedido", primary_key: "idpedido", name: "fka1400fcf5bea3011"
  add_foreign_key "t_recebimentopedido", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fka1400fcfc9afb7d9"
  add_foreign_key "t_recebimentoproduto", "t_notafiscalentradaproduto", column: "idnotafiscalentradaproduto", primary_key: "idnotafiscalentradaproduto", name: "fk9d89e7af67fa4677"
  add_foreign_key "t_recebimentoproduto", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk9d89e7af7f9a249e"
  add_foreign_key "t_recebimentoproduto", "t_recebimento", column: "idrecebimento", primary_key: "idrecebimento", name: "fk9d89e7afc9afb7d9"
  add_foreign_key "t_reducoeszrestantespafecf", "t_pafecf", column: "idpafecf", primary_key: "idpafecf", name: "fk2fe553a3ccadc7ed"
  add_foreign_key "t_referenciacomercialcliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkc4b6ecd8c030896d"
  add_foreign_key "t_referenciacomercialcliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkc4b6ecd8512ff192"
  add_foreign_key "t_referenciapessoalcliente", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk343731b2c030896d"
  add_foreign_key "t_referenciapessoalcliente", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk343731b2512ff192"
  add_foreign_key "t_referenciaproduto", "t_composicaoproduto", column: "idcomposicaoproduto", primary_key: "idcomposicaoproduto", name: "fk9556c7c817b7c8"
  add_foreign_key "t_referenciaproduto", "t_condicaodelavagem", column: "idcondicaodelavagem", primary_key: "idcondicaodelavagem", name: "fk9556c7cf642d5b4"
  add_foreign_key "t_referenciaproduto", "t_edi", column: "idedi", primary_key: "idedi", name: "fk9556c7c2d0d47f8"
  add_foreign_key "t_referenciaproduto", "t_fornecedor", column: "idfornecedor", primary_key: "idfornecedor", name: "fk9556c7c9c483131"
  add_foreign_key "t_referenciaproduto", "t_grade", column: "idgrade", primary_key: "idgrade", name: "fk9556c7cf149c15a"
  add_foreign_key "t_referenciaproduto", "t_grupoproduto", column: "idgrupoproduto", primary_key: "idgrupoproduto", name: "fk9556c7c7064b194"
  add_foreign_key "t_referenciaproduto", "t_kitproduto", column: "idkitproduto", primary_key: "idkitproduto", name: "fk9556c7c97e6687a"
  add_foreign_key "t_referenciaproduto", "t_marca", column: "idmarca", primary_key: "idmarca", name: "fk9556c7cf1e3e624"
  add_foreign_key "t_referenciaproduto", "t_material", column: "idmaterial", primary_key: "idmaterial", name: "fk9556c7cef91922"
  add_foreign_key "t_referenciaproduto", "t_produto", column: "idprodutofaturamentogenerico", primary_key: "idproduto", name: "fk9556c7c86348a60"
  add_foreign_key "t_referenciaproduto", "t_produtoespecifico", column: "idprodutoespecifico", primary_key: "idprodutoespecifico", name: "fk9556c7cc42510ae"
  add_foreign_key "t_referenciaproduto", "t_produtogenerico", column: "idprodutogenerico", primary_key: "idprodutogenerico", name: "fk9556c7c431d6dae"
  add_foreign_key "t_referenciaproduto", "t_referenciaproduto", column: "idreferenciaprodutobase", primary_key: "idreferenciaproduto", name: "fk9556c7c17dd77eb"
  add_foreign_key "t_referenciaproduto", "t_referenciaprodutomodelo", column: "idreferenciaprodutomodelo", primary_key: "idreferenciaprodutomodelo", name: "fk9556c7c8644dc86"
  add_foreign_key "t_referenciaproduto", "t_secao", column: "idsecao", primary_key: "idsecao", name: "fk9556c7cf290322a"
  add_foreign_key "t_referenciaproduto", "t_segmentoproduto", column: "idsegmentoproduto", primary_key: "idsegmentoproduto", name: "fk9556c7c429bb246"
  add_foreign_key "t_referenciaproduto", "t_unidade", column: "idunidade", primary_key: "idunidade", name: "fk9556c7c8247fc08"
  add_foreign_key "t_referenciaproduto", "t_unidade", column: "idunidadecompra", primary_key: "idunidade", name: "fk9556c7c63aa3f46"
  add_foreign_key "t_referenciaproduto", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk9556c7c512ff192"
  add_foreign_key "t_referenciaprodutohistorico", "t_referenciaproduto", column: "idreferenciaproduto", primary_key: "idreferenciaproduto", name: "fk287ced41c4571a"
  add_foreign_key "t_referenciaprodutohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk287ced4512ff192"
  add_foreign_key "t_referenciaprodutomodeloservicorealizado", "t_produto", column: "idservico", primary_key: "idproduto", name: "fk68ee45008501c64"
  add_foreign_key "t_referenciaprodutomodeloservicorealizado", "t_referenciaprodutomodelo", column: "idreferenciaprodutomodelo", primary_key: "idreferenciaprodutomodelo", name: "fk68ee45008644dc86"
  add_foreign_key "t_registromeiodepagamento", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fkde90544956552580"
  add_foreign_key "t_registromeiodepagamento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkde9054498e0bb6a4"
  add_foreign_key "t_relatoriogrupo", "t_grupo", column: "idgrupo", primary_key: "idgrupo", name: "fke54f9dff961d7988"
  add_foreign_key "t_relatoriogrupo", "t_relatorio", column: "idrelatorio", primary_key: "idrelatorio", name: "fke54f9dffce4e8e07"
  add_foreign_key "t_remarcacaopreco", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkf70bd9fc8e0bb6a4"
  add_foreign_key "t_remarcacaopreco", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fkf70bd9fcb653eec6"
  add_foreign_key "t_remarcacaopreco", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fkf70bd9fcd4c92730"
  add_foreign_key "t_remarcacaopreco", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fkf70bd9fc4cfaeacb"
  add_foreign_key "t_remarcacaopreco", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkf70bd9fcfae1931c"
  add_foreign_key "t_remessaavenda", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk18d072a68e0bb6a4"
  add_foreign_key "t_remessaavenda", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk18d072a6b653eec6"
  add_foreign_key "t_remessaavenda", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk18d072a64cfaeacb"
  add_foreign_key "t_remessaavenda", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk18d072a6fae1931c"
  add_foreign_key "t_remessaavenda", "t_usuario", column: "idusuariofinalizacao", primary_key: "idusuario", name: "fk18d072a6e47ee5c3"
  add_foreign_key "t_renegociacaoduplicata", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkb1d6e6d4512ff192"
  add_foreign_key "t_requisicaoestoque", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk3f6951a48e0bb6a4"
  add_foreign_key "t_requisicaoestoque", "t_funcionario", column: "idfuncionarioentrega", primary_key: "idfuncionario", name: "fk3f6951a494623508"
  add_foreign_key "t_requisicaoestoque", "t_setor", column: "idsetor", primary_key: "idsetor", name: "fk3f6951a4b653eec6"
  add_foreign_key "t_requisicaoestoque", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk3f6951a4d4c92730"
  add_foreign_key "t_requisicaoestoque", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk3f6951a44cfaeacb"
  add_foreign_key "t_requisicaoestoqueitem", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fke182ced77f9a249e"
  add_foreign_key "t_requisicaoestoqueitem", "t_requisicaoestoque", column: "idrequisicaoestoque", primary_key: "idrequisicaoestoque", name: "fke182ced7fd6e2369"
  add_foreign_key "t_requisicaoestoqueitemnumeroserie", "t_estoquenumeroserie", column: "idestoquenumeroserie", primary_key: "idestoquenumeroserie", name: "fk536d076950c90864"
  add_foreign_key "t_requisicaoestoqueitemnumeroserie", "t_requisicaoestoqueitem", column: "idrequisicaoestoqueitem", primary_key: "idrequisicaoestoqueitem", name: "fk536d076989c0b12f"
  add_foreign_key "t_reservamercadoria", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk4595eb74c030896d"
  add_foreign_key "t_reservamercadoria", "t_estabelecimento", column: "idestabelecimentodestino", primary_key: "idestabelecimento", name: "fk4595eb74c1a2991a"
  add_foreign_key "t_reservamercadoria", "t_estabelecimento", column: "idestabelecimentoorigem", primary_key: "idestabelecimento", name: "fk4595eb7493ab368d"
  add_foreign_key "t_reservamercadoria", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk4595eb74f2ba8032"
  add_foreign_key "t_reservamercadoria", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk4595eb74230e4df4"
  add_foreign_key "t_reservamercadoria", "t_produto", column: "idproduto", primary_key: "idproduto", name: "fk4595eb747f9a249e"
  add_foreign_key "t_romaneiodeentrada", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkcf9085bd8e0bb6a4"
  add_foreign_key "t_romaneiodeentrada", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkcf9085bd512ff192"
  add_foreign_key "t_romaneiodeentrada", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkcf9085bdfae1931c"
  add_foreign_key "t_romaneiodeentrega", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkcf90951e8e0bb6a4"
  add_foreign_key "t_romaneiodeentrega", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkcf90951e512ff192"
  add_foreign_key "t_romaneiodeentrega", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fkcf90951efae1931c"
  add_foreign_key "t_romaneiodeentrega", "t_usuario", column: "idusuariochegada", primary_key: "idusuario", name: "fkcf90951eb157aa43"
  add_foreign_key "t_romaneiodesaidadefabricacao", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk7a81baf48e0bb6a4"
  add_foreign_key "t_romaneiodesaidadefabricacao", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk7a81baf4512ff192"
  add_foreign_key "t_romaneiodesaidadefabricacao", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk7a81baf4fae1931c"
  add_foreign_key "t_romaneioentradapedido", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk6df39823512ff192"
  add_foreign_key "t_romaneioentradapedido", "t_usuario", column: "idusuarioestabelecimento", primary_key: "idusuario", name: "fk6df39823a7d5fd00"
  add_foreign_key "t_romaneioorcamento", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk91542917230e4df4"
  add_foreign_key "t_romaneioorcamento", "t_romaneiodeentrega", column: "idromaneiodeentrega", primary_key: "idromaneiodeentrega", name: "fk9154291789202c5f"
  add_foreign_key "t_romaneioprocessodefabricacao", "t_faseprocessodefabricacao", column: "idfaseprocessodefabricacao", primary_key: "idfaseprocessodefabricacao", name: "fkd8ec3cf31b6a6bd"
  add_foreign_key "t_romaneioprocessodefabricacao", "t_processodefabricacao", column: "idprocessodefabricacao", primary_key: "idprocessodefabricacao", name: "fkd8ec3cf1f4bf683"
  add_foreign_key "t_romaneioprocessodefabricacao", "t_romaneiodeentrada", column: "idromaneiodeentrada", primary_key: "idromaneiodeentrada", name: "fkd8ec3cf77f09f53"
  add_foreign_key "t_semanaplanovendafutura", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk692799198e0bb6a4"
  add_foreign_key "t_semanaplanovendafutura", "t_planovendafutura", column: "idplanovendafutura", primary_key: "idplanovendafutura", name: "fk69279919649cdb29"
  add_foreign_key "t_subgrupodespesa", "t_grupodespesa", column: "idgrupodespesa", primary_key: "idgrupodespesa", name: "fk95d1a9c1b4e85712"
  add_foreign_key "t_subgrupodespesaauditada", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk67b847c48e0bb6a4"
  add_foreign_key "t_subgrupodespesaauditada", "t_subgrupodespesa", column: "idsubgrupodespesa", primary_key: "idsubgrupodespesa", name: "fk67b847c49e23213e"
  add_foreign_key "t_substituircheque", "t_cheque", column: "idcheque", primary_key: "idcheque", name: "fk5c69c47e97135217"
  add_foreign_key "t_substituirchequeitem", "t_cheque", column: "idchequenovo", primary_key: "idcheque", name: "fkd0f9c891cb372451"
  add_foreign_key "t_substituirchequeitem", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fkd0f9c891c030896d"
  add_foreign_key "t_substituirchequeitem", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd0f9c8918e0bb6a4"
  add_foreign_key "t_substituirchequeitem", "t_portador", column: "idportador", primary_key: "idportador", name: "fkd0f9c89166abdf7d"
  add_foreign_key "t_substituirchequeitem", "t_substituircheque", column: "idsubstituircheque", primary_key: "idsubstituircheque", name: "fkd0f9c8917a37739b"
  add_foreign_key "t_tamanhograde", "t_grade", column: "idgrade", primary_key: "idgrade", name: "fk257264cef149c15a"
  add_foreign_key "t_tamanhograde", "t_tamanho", column: "idtamanho", primary_key: "idtamanho", name: "fk257264ceec8be9d4"
  add_foreign_key "t_tipoprodutomodelofaseentrada", "t_modelofase", column: "idmodelofase", primary_key: "idmodelofase", name: "fkbba1686a130a9fa4"
  add_foreign_key "t_tipoprodutomodelofaseentrada", "t_tipoprodutomodelofase", column: "idtipoprodutomodelofase", primary_key: "idtipoprodutomodelofase", name: "fkbba1686a28712b2"
  add_foreign_key "t_tipoprodutomodelofasesaida", "t_modelofase", column: "idmodelofase", primary_key: "idmodelofase", name: "fk82f0a86b130a9fa4"
  add_foreign_key "t_tipoprodutomodelofasesaida", "t_tipoprodutomodelofase", column: "idtipoprodutomodelofase", primary_key: "idtipoprodutomodelofase", name: "fk82f0a86b28712b2"
  add_foreign_key "t_tituloplanovendafutura", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk68f40939ffee83d7"
  add_foreign_key "t_tituloplanovendafutura", "t_diaplanovendafutura", column: "iddiaplanovendafutura", primary_key: "iddiaplanovendafutura", name: "fk68f409397431d963"
  add_foreign_key "t_tituloplanovendafutura", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk68f409398e0bb6a4"
  add_foreign_key "t_transportadora", "t_endereco", column: "idendereco", primary_key: "idendereco", name: "fk4d4a459ddfb101a3"
  add_foreign_key "t_transportadorainformacoesbancarias", "t_bancoerp", column: "idbanco", primary_key: "idbancoerp", name: "fk4428001a3aa0588"
  add_foreign_key "t_transportadorainformacoesbancarias", "t_transportadora", column: "idtransportadora", primary_key: "idtransportadora", name: "fk4428001b209b97e"
  add_foreign_key "t_tributacaoestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkd03b70438e0bb6a4"
  add_foreign_key "t_tributacaoestabelecimento", "t_tributacaoproduto", column: "idtributacao", primary_key: "idtributacaoproduto", name: "fkd03b7043299ad6db"
  add_foreign_key "t_troca", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk27d0a0456552580"
  add_foreign_key "t_troca", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk27d0a04c030896d"
  add_foreign_key "t_troca", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fk27d0a048e0bb6a4"
  add_foreign_key "t_troca", "t_listaevento", column: "idlistaevento", primary_key: "idlistaevento", name: "fk27d0a043c95fb2c"
  add_foreign_key "t_troca", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk27d0a04512ff192"
  add_foreign_key "t_troca", "t_usuario", column: "idusuarioautorizacao", primary_key: "idusuario", name: "fk27d0a04d4c92730"
  add_foreign_key "t_troca", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk27d0a04fae1931c"
  add_foreign_key "t_usuario", "t_grupo", column: "idgrupo", primary_key: "idgrupo", name: "fk55e49223961d7988"
  add_foreign_key "t_usuarioestabelecimento", "t_estabelecimento", column: "idestabelecimento", primary_key: "idestabelecimento", name: "fkef302a918e0bb6a4"
  add_foreign_key "t_usuarioestabelecimento", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fkef302a91512ff192"
  add_foreign_key "t_usuariohistorico", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk601b150d512ff192"
  add_foreign_key "t_usuariohistorico", "t_usuario", column: "idusuarioalterado", primary_key: "idusuario", name: "fk601b150ddea24768"
  add_foreign_key "t_valecredito", "t_funcionario", column: "idfuncionario", primary_key: "idfuncionario", name: "fk95819327793c5f10"
  add_foreign_key "t_valecredito", "t_usuario", column: "idusuariocadastro", primary_key: "idusuario", name: "fk958193274cfaeacb"
  add_foreign_key "t_venda", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fk2934c9156552580"
  add_foreign_key "t_venda", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fk2934c91c030896d"
  add_foreign_key "t_venda", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fk2934c91ffee83d7"
  add_foreign_key "t_venda", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fk2934c912a4b1c73"
  add_foreign_key "t_venda", "t_notafiscalmodelo1serie1", column: "idnotafiscalmodelo1serie1", primary_key: "idnotafiscalmodelo1serie1", name: "fk2934c91c99cb325"
  add_foreign_key "t_venda", "t_notafiscalservico", column: "idnotafiscalservico", primary_key: "idnotafiscalservico", name: "fk2934c91415e6343"
  add_foreign_key "t_venda", "t_orcamento", column: "idorcamento", primary_key: "idorcamento", name: "fk2934c91230e4df4"
  add_foreign_key "t_venda", "t_pontodevenda", column: "idpontodevenda", primary_key: "idpontodevenda", name: "fk2934c913d38c966"
  add_foreign_key "t_venda", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fk2934c91512ff192"
  add_foreign_key "t_venda", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fk2934c91fae1931c"
  add_foreign_key "t_vendacomplementar", "t_caixa", column: "idcaixa", primary_key: "idcaixa", name: "fka1ad100856552580"
  add_foreign_key "t_vendacomplementar", "t_cliente", column: "idcliente", primary_key: "idcliente", name: "fka1ad1008c030896d"
  add_foreign_key "t_vendacomplementar", "t_condicaopagamento", column: "idcondicaopagamento", primary_key: "idcondicaopagamento", name: "fka1ad1008ffee83d7"
  add_foreign_key "t_vendacomplementar", "t_notafiscaleletronica", column: "idnotafiscaleletronica", primary_key: "idnotafiscaleletronica", name: "fka1ad10082a4b1c73"
  add_foreign_key "t_vendacomplementar", "t_notafiscalmodelo1serie1", column: "idnotafiscalmodelo1serie1", primary_key: "idnotafiscalmodelo1serie1", name: "fka1ad1008c99cb325"
  add_foreign_key "t_vendacomplementar", "t_orcamentocomplementar", column: "idorcamentocomplementar", primary_key: "idorcamentocomplementar", name: "fka1ad10087d03d5c2"
  add_foreign_key "t_vendacomplementar", "t_pontodevenda", column: "idpontodevenda", primary_key: "idpontodevenda", name: "fka1ad10083d38c966"
  add_foreign_key "t_vendacomplementar", "t_usuario", column: "idusuario", primary_key: "idusuario", name: "fka1ad1008512ff192"
  add_foreign_key "t_vendacomplementar", "t_usuario", column: "idusuariocancelamento", primary_key: "idusuario", name: "fka1ad1008fae1931c"
  add_foreign_key "t_vendedordameta", "t_funcionario", column: "idvendedor", primary_key: "idfuncionario", name: "fk2c8a3b54f2ba8032"
  add_foreign_key "t_vendedordameta", "t_metavendedor", column: "idmetavendedor", primary_key: "idmetavendedor", name: "fk2c8a3b543771d785"
end
