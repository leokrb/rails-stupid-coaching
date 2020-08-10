# frozen_string_literal: true

# QuestionsController
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @input = params[:answer]
    @answer = if @input.include? '?'
                'Silly question, get dressed and go to work!'
              elsif @input == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
