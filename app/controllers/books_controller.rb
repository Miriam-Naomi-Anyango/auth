class BooksController < ApplicationController
    before_action :authorize :authorize, only: [:index, :show]
end
