require 'gossip'

class ApplicationController < Sinatra::Base
    get '/' do #quand le serveur rencontre une requete "/" renvoie à l'index et affiche tous les gossip
        erb :index, locals: {gossips: Gossip.all}
    end

    #Creation d'un nouveau gossip
    get '/gossips/new/' do
        erb :new_gossip
    end

    #Traitement du formulaire pour la creation de gossip
    post '/gossips/new/' do
        Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end

    get '/gossips/:id/' do
        id = params["id"].to_i
        erb :show, locals: {gossip: Gossip.find(id)}
    end

end