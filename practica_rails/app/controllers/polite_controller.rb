class PoliteController < ApplicationController
  def salute
    greetings = [
      "Good day sir/ma’am.",
      "Hello there!",
      "Greetings, good friend.",
      "Salutations!",
      "How do you do?"
    ]
    @greeting = greetings.sample
  end
end
