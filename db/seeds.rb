# encoding: utf-8

# This file should all the record creation needed to seed the database with its default values.



# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 movie_list = [
  [ "超人", "chaoren2.jpg","遥远的宇宙深处，随着氪星的毁灭，超人的传奇故事拉开序幕。氪星人乔·艾尔（罗素·克劳 Russell Crowe 饰）抵死反抗佐德将军（迈克尔·珊农 Michael Shannon 饰）的邪恶计划，冒险将刚出生不久的儿子卡尔·艾尔被送到银河系另一边的地球。卡尔降落在美国堪萨斯一座小镇，他幸运地成为乔纳森·肯特（凯文·科斯特纳 Kevin Costner 饰）和玛莎（黛安·莲恩 Diane Lane 饰）的养子，并且得名克拉克。克拉克从小显露出与众不同的能力与特征，但这些带给他惊讶的同时还有数不清的烦恼。通过养父的引导，克拉克（亨利·卡维尔 Henry Cavill 饰）慢慢弄清自己的身世以及所肩负的使命。终于有一天，遥远的故乡“同胞”莅临。 
　　站在故乡与地球、邪恶与正义的两端，超人即将面临重大的抉择……","cook.mp4"],
  [ "圣诞玫瑰", "shengdanmeigui.jpg","律师陈志天（郭富城 饰）为了追求心中的良知而成为了一名检控官，他接手的第一个案件是一起性侵案：下肢残疾的钢琴女教师李静（桂纶镁 饰）声称在做身体检查的时候遭到了医生周文瑄（张震 饰）的性侵，而李静同时也是周文瑄女儿婷婷的钢琴老师。陈志天坚信李静受到了侵犯，竭尽全力为她讨回公道。而周文瑄也声称自己无罪，并找来了陈志天的前同事薛肇文（夏雨 饰）担任他的辩护律师。这起性侵案在社会上引起了很大的反响，原被告双方原本的生活都受到了严重干扰。然而原告与被告之间有什么不可告人的秘密，这起性侵案背后又有多少不为人知的隐情？ 
　　徐克监制，香港演员杨采妮执导的首部电影。","cook.mp4"],
  [ "B+侦探","zhentan.jpg","故事接着《C+侦探》展开。阿探（郭富城 饰）的破案能力得到了充分证明，好友风泽（廖启智 饰）也倍感风光，但风泽却在警局内仍不得志，被调到以争功闻名的卢长官（谭耀文 饰）手下。风泽调任不久，辖区内便发生连环凶案，先后四名死者互无关联，且凶手同样在现场留下了颇为刻意的线索。阿探协助风泽，在卢长官的白眼下提出了凶手的多种可能，最后初步锁定凶手为一名精神分裂症患者。在排查期间，嫌疑犯梁伟业（张兆辉 饰）病发劫持人质，阿探施计将其擒获，但遗憾的发现梁并非真凶。不久，阿探被卢警官的手下恐吓，而风泽又被人撞伤，怒不可遏的阿探找到卢警官，却被告知这个嫌疑犯的攻击性超出他的想象……",
  	"cook.mp4" ]
]

movie_list.each do |name,poster,summary,video_file|
  Movie.create( name: name, poster: poster, summary:summary,video_file:video_file)
end