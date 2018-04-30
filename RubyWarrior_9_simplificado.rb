
class Player
  def play_turn(warrior)

	#fase 9 - controle de acao por turno Ruby Warrior
    @turno = warrior.health == 20 ? 0 : @turno
    
	if @turno == 0
		warrior.pivot!
        @turno += 1
	elsif @turno >0 and @turno <= 2
		warrior.walk!
        @turno += 1
	elsif @turno >2 and @turno <= 4
		warrior.attack!
        @turno += 1		
	elsif @turno == 5
        warrior.walk!
        @turno += 1      
	elsif @turno == 6
        warrior.rescue!
        @turno += 1      
	elsif @turno == 7
        warrior.pivot!
        @turno += 1      
	elsif @turno > 7 and @turno <= 12
        warrior.rest!
        @turno += 1           
	elsif @turno > 12 and @turno <= 15
        warrior.walk!
        @turno += 1     
	elsif @turno > 15 and @turno <= 23
        warrior.shoot!
        @turno += 1           
	elsif @turno == 24 
        warrior.walk!
        @turno += 1   
	elsif @turno == 25 
        warrior.shoot!
        @turno += 1       
	elsif @turno > 25 and @turno <= 28
        warrior.walk!
        @turno += 1       
	elsif @turno == 29
        warrior.rescue!
        @turno += 1          
	elsif @turno == 30
        warrior.pivot!
        @turno += 1          
  else
        warrior.walk!
        @turno += 1 
    end
    
  end
end
  
