class SetDefaultsToColumnIdUsuarioToUsers < ActiveRecord::Migration[5.0]
  def self.up
    execute <<-__EOI
    ALTER TABLE t_usuario ALTER COLUMN idusuario SET DEFAULT nextval('s_usuario');
    __EOI
  end
end
