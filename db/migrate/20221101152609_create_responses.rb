class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.integer :id # Respondent ID
      t.string :undergrad_continent # Multiple option:  "In which region did you complete your undergraduate study?"
      t.float :hb_a_1_1 # Open numeric: "For the purposes of this question, assume that human scientific activity continues without major negative disruption. How many years until you expect: A 10% probability of HLMI existing?"
      t.float :hb_a_2_1 # Open numeric: "For the purposes of this question, assume that human scientific activity continues without major negative disruption. How many years until you expect: A 50% probability of HLMI existing?"
      t.float :hb_a_3_1 # Open numeric: "For the purposes of this question, assume that human scientific activity continues without major negative disruption. How many years until you expect: A 90% probability of HLMI existing?"
      t.string :dem_1 # Multiple option: "How much thought have you given in the past to when HLMI (or something similar) will be developed?"
      t.float :vb_1_1 # Open numeric: "Assume for the purpose of this question that HLMI will at some point exist. How positive or negative do you expect the overall impact of this to be on humanity, in the long run? Please answer by saying how probable you find the following kinds of impact, with probabilities adding to 100%: Extremely good (e.g. rapid growth in human flourishing)"
      t.float :vb_1_2 # Open numeric: "Assume for the purpose of this question that HLMI will at some point exist. How positive or negative do you expect the overall impact of this to be on humanity, in the long run? Please answer by saying how probable you find the following kinds of impact, with probabilities adding to 100%: On balance good"
      t.float :vb_1_3 # Open numeric: "Assume for the purpose of this question that HLMI will at some point exist. How positive or negative do you expect the overall impact of this to be on humanity, in the long run? Please answer by saying how probable you find the following kinds of impact, with probabilities adding to 100%: More or less neutral"
      t.float :vb_1_4 # Open numeric: "Assume for the purpose of this question that HLMI will at some point exist. How positive or negative do you expect the overall impact of this to be on humanity, in the long run? Please answer by saying how probable you find the following kinds of impact, with probabilities adding to 100%: On balance bad"
      t.float :vb_1_5 # Open numeric: "Assume for the purpose of this question that HLMI will at some point exist. How positive or negative do you expect the overall impact of this to be on humanity, in the long run? Please answer by saying how probable you find the following kinds of impact, with probabilities adding to 100%: Extremely bad (e.g. human extinction)"
      t.string :dem_2 # Multiple option: "How much thought have you given in the past to social impacts of smarter-than-human machines?"
      t.string :sr_1 # Multiple option: "How much should society prioritize AI safety research, relative to how much it is currently prioritized?"

      t.timestamps
    end
  end
end
