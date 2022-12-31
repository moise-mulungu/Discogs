class RenameReleasedYearToRealeasedOn < ActiveRecord::Migration[7.0]
  def change
    change :release_on do |t|
      t.rename :released_year, :released_on
      t.change :released_on, :datetime
    end
  end
end
