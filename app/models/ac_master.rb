class AcMaster < ActiveRecord::Base
	validates :name,:code,  uniqueness: true
	validates :code, length: { is: 8 }
	has_many :journals, dependent: :destroy


    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << csv_column_names
        all.each do |ac_master|
          csv << ac_master.csv_column_values
        end
      end
    end

    def self.csv_column_names
      ["id","code","name","cd_division","level","upper_code","detail"]
    end

  	def csv_column_values
      [id,code,name,cd_division,level,upper_code,detail]
  	end

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      
      @ac_master = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      
      @ac_master.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      
      @ac_master.save!
      end
    end


    def self.updatable_attributes
      ["id","code","name","cd_division","level","upper_code","detail"]
    end


end
