class Team
  attr_accessor :name,:win,:lose,:draw
      def initialize(name,win,lose,draw)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
      end
      def calc_win_rate
         return self.win.to_f/(self.win + self.lose)
      end
      def show_team_result
        p "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
      end
end
giants = Team.new("読売ジャイアンツ",67,45,8)
tigers = Team.new("阪神タイガース",60,53,7)
dragons = Team.new("中日ドラゴンズ",60,55,5)
beysters = Team.new("横浜ベイスターズ",56,58,6)
carp = Team.new("広島東洋カープ",52,56,12)
swallows = Team.new("ヤクルトスワローズ",41,69,10)

teams = [giants,tigers,dragons,beysters,carp,swallows]
 teams.each do |team|
   team.show_team_result
  end
 