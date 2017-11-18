class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :projectCode
      t.string :projectDescription
      t.string :projectResume
      t.string :projectStatus
      t.datetime :projectLaunchDate
      t.datetime :projectCloserDate
      t.string :projectImage
      t.string :projectCityLocation
      t.string :projectCountryLocation
      t.string :projectStage
      t.string :projectKeyWords
      t.integer :projectTeamSize
      t.string :projectVideo
      t.integer :projectCollectGoal
      t.string :projectFundsCurrency
      t.integer :projectCollectTime
      t.integer :createdBy

      t.timestamps
    end
  end
end
