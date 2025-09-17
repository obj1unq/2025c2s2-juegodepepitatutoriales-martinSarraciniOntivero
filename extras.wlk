import pepita.*
import pepitaGame.*
object silvestre{
    var property position = game.at(3,0)
    method image(){
        return "silvestre.png"
    }
   /* method minimoParaAvanzar(){
        return position == game.at(4,0)
    }*/
    method position(){
         if(pepita.position().x().between(0, 3)){
            return position
        }else{
            return game.at(pepita.position().x(), position.y())
        }
    }
}

