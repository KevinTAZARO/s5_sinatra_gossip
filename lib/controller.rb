class ApplicationController < Sinatra::Base
  get '/' do #quand le serveur rencontre une requete "/" renvoie à l'index et affiche tous les gossip
    erb :index
  end

end