# frozen_string_literal: true

class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def delete
  end
end
