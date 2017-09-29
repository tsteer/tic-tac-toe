require_relative 'tic_tac_toe'

RSpec.describe do
  context 'playing tic tac toe' do
    let(:current_game) { TicTacToe.new }

    context 'when starting a new game' do
      it 'has an empty board' do
        game_board = ['','','','','','','','','']

        expect(TicTacToe.new.board).to eq(game_board)
      end
    end

    context 'when playing the game' do
      let(:current_game) { TicTacToe.new }

      context 'with invalid positions' do
        it 'a player cannot place a piece off the board' do
          game_board = ['x','','','','','','','','']
          
          expect(current_game.place(9,'x')).to eq('invalid position')
        end

        it 'a player can only place valid pieces' do

          expect(current_game.place(8, '$')).to eq('invalid piece')
        end

        it 'accepts valid player pieces' do
          expect(current_game.place(8, 'o')).to_not eq('invalid piece')
        end

        it 'cannot place a piece on the same spot twice' do
          game_board = ['x','','','','','','','','']
          current_game.place(0,'x')

          expect(current_game.place(0, 'o')).to eq('invalid position')
        end
      end

      context 'with valid positions' do
        it 'a player can place a piece on the board' do
          game_board = ['x','','','','','','','','']

          current_game.place(0,'x')
          
          expect(current_game.board).to eq(game_board)
        end

        it 'a player can place a piece on the board' do
          game_board = ['','x','','','','','','','']
          current_game.place(1,'x')

          expect(current_game.board).to eq(game_board)
        end

        it 'a player can place multiple pieces on the board' do
          game_board = ['x','','x','','x','','','','']
        
          current_game.place(0, 'x')
          current_game.place(2, 'x')
          current_game.place(4, 'x')

          expect(current_game.board).to eq(game_board)
        end

        context 'and a player has won' do
          it 'recognises a win' do
            current_game.place(0, 'x')
            current_game.place(3, 'x')

            expect(current_game.place(6, 'x')).to eq("Player x has won")
          end

          it 'recognises a win' do
            current_game.place(0, 'x')
            current_game.place(1, 'x')

            expect(current_game.place(2, 'x')).to eq("Player x has won")
          end

          it 'recognises a win' do
            current_game.place(0, 'x')
            current_game.place(4, 'x')

            expect(current_game.place(8, 'x')).to eq("Player x has won")
          end
        end

        context 'and a player has not won' do
          it 'recognises a player has not won' do
            current_game.place(0, 'x')
            current_game.place(3, 'x')

            expect(current_game.place(8, 'x')).to_not eq("Player x has won")
          end
        end
      end

      context 'when playing against the computer' do
        it 'places a piece in response to a user placing a piece' do
          current_game.place(3, 'x')

          expect(current_game.board).to include('o')
        end
      end
    end
  end
end
