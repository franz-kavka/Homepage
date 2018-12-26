set names utf8;
set foreign_key_checks =0;
drop database if exists homepage;
create database if not exists homepage;
use homepage;

drop table if exists articles;

create table articles(
article_id int not null primary key auto_increment,
article_title varchar(100),
article_body text,
insert_date date,
article_img varchar(255)
);

insert into articles(article_title,article_body,insert_date) values("初投稿","ゲームマーケット秋のサークルカットを入稿しました！<br>土曜試遊卓アリのブースにて出展します。<br><br>また、１８会ブースにも置いていただくので、<br><br>そちらでも購入できます。<br<br>めっちゃ気合い入れてドット描いたんでよろしくお願いします！<br>#ゲムマ<br>#ゲームマーケット<br>#ゲームマーケット2018秋",cast('2009-08-03' as date));
insert into articles(article_title,article_body,insert_date,article_img) values("​激論勇者のルールと補足","本作は何度もテストプレイを重ねましたが、処女作ということもありルール上の抜けや分かりにくい・一部バランス崩壊部分などがあります。そこで当HPでは可能な限りその抜けを補うため、随時バージョンを更新していきます。<br>ところどころ紙のルールブックに書いてあるものと異なる場合がありますが、こちらの情報を優先したほうが本作をより楽しめるものだと思ってくだされば幸いです。また、質問などがありましたらメールかあるいはツイッターにDMをください。可能な限り早く回答したうえで、より快適に遊べるように役立たせていただきます。<br>基本的には激論勇者を購入していただいた方向けに書いておりますが、購入していなくとも興味を持ってくださっている方にも本作のルールを理解できるよう丁寧に書くつもりです。",cast('2018-08-03' as date),"https://static.wixstatic.com/media/b56aa5_a48ebc8b34ec4e49b2b63621a18d6eb9~mv2.png/v1/fill/w_450,h_335,al_c,q_80,usm_0.66_1.00_0.01/b56aa5_a48ebc8b34ec4e49b2b63621a18d6eb9~mv2.webp");
insert into articles(article_title,article_body,insert_date,article_img) values("​入稿完了","入稿が済んだ報告をもらったのでこれでゲムマ秋の作業は一旦完了！！<br>嘘をついて相手に変な格好をさせたり、<br>逆に嘘を暴いて悪魔に堕とす２人用ブラフゲームです<br><br>イラストは２８種全部描きおろしのドット絵！<br><br>ゲームマーケット秋新作「Devil'sManner」<br>よろしくお願いします！",cast('2018-08-03' as date),"https://pbs.twimg.com/media/DoqA1oPV4AA1OD2.jpg");
insert into articles(article_title,article_body,insert_date,article_img) values("​雑記","ゲムマ用のポスター届いた！<br>描いた自分が言うのもあれだけど、かっこいいなこれ！<br>あとは注文の関係で余った残りをどうするか……。",cast('2018-09-03' as date),"https://pbs.twimg.com/media/DrEbonDV4AAQ7cg.jpg");
insert into articles(article_title,article_body,insert_date,article_img) values("サークルカット入稿","ゲームマーケット秋のサークルカットを入稿しました！<br>土曜試遊卓アリのブースにて出展します。<br><br>また、１８会ブースにも置いていただくので、<br><br>そちらでも購入できます。<br<br>めっちゃ気合い入れてドット描いたんでよろしくお願いします！<br>#ゲムマ<br>#ゲームマーケット<br>#ゲームマーケット2018秋",cast('2018-10-03' as date),"https://pbs.twimg.com/media/Dm4a7ifVsAA0Ccc?format=jpg&name=small");
insert into articles(article_title,article_body,insert_date,article_img) values("デビルズマナー販売","そういえば今更ですがデビルズマナーをボドゲーマさんに登録しました！<br><a href='https://t.co/SNJojetG0D'>リンクはこちら！</a>",cast('2018-11-22' as date),"https://pbs.twimg.com/media/Dp8AkRsVYAAuOr6.jpg");
insert into articles(article_title,article_body,insert_date,article_img) values("ゲムマお疲れさまでした！","ゲムマお疲れ様でした！僕は後半疲れで死んでましたが、試遊卓で楽しんで頂けたようで良かったです！",cast('2018-11-25' as date),"https://pbs.twimg.com/media/Dsz0jnTUwAA6IG9.jpg");

create table news(
news_id int not null primary key auto_increment,
news_body varchar(255),
insert_date date
);

insert into news(news_body,insert_date) values("上京！",cast('2018-05-03' as date));
insert into news(news_body,insert_date) values("富士山登頂！",cast('2018-08-25' as date));
insert into news(news_body,insert_date) values("マグマスタジオへの所属が決定しました！",cast('2018-11-01' as date));
insert into news(news_body,insert_date) values("【ゲームマーケット2018秋】F-37 ALL DICE 出店！",cast('2018-11-05' as date));
create table shop(
shop_id int not null primary key auto_increment,
shop_title varchar(20),
shop_price int(10),
shop_intro varchar(100),
shop_stock int(255),
shop_picurl varchar(100)
);

insert into shop(shop_title,shop_price,shop_intro,shop_stock,shop_picurl) values("激論勇者",2000,"口も八丁手も八丁バラエティ！",100,"./pic/gekiron.png");
insert into shop(shop_title,shop_price,shop_intro,shop_stock,shop_picurl) values("Devil's Manner",2000,"相手を騙して悪魔に堕とせ--",100,"./pic/devils.jpg");

create table gallery(
gallery_id int not null primary key auto_increment,
gallery_picurl varchar(255)
);
insert into gallery(gallery_picurl) values("./pic/dragon.png");
insert into gallery(gallery_picurl) values("https://pbs.twimg.com/media/DjP1TKFVsAAV-4S.jpg");
insert into gallery(gallery_picurl) values("https://pbs.twimg.com/media/DixEI-4VsAAEjsO.jpg");
insert into gallery(gallery_picurl) values("https://pbs.twimg.com/media/DjP1wSPU8AAqMvc.jpg");
insert into gallery(gallery_picurl) values("https://pbs.twimg.com/media/Dh5aCacV4AAF9AI.jpg");
insert into gallery(gallery_picurl) values("https://pbs.twimg.com/media/DjP1P1xU8AAJWpO.jpg");
insert into gallery(gallery_picurl) values("./pic/telesa.gif");

create table orders(
order_id int not null primary key auto_increment,
order_name varchar(20),
order_yubin varchar(10),
order_pref varchar(100),
order_jusyo varchar(100),
order_tatemono varchar(100),
order_mail varchar(100),
order_message varchar(255),
order_item varchar(100),
order_price int(10),
order_count int(10),
ship_flg int(10),
insert_date date,
order_payment varchar(10),
order_number int(6)
);

create table admin(
admin_id varchar(100),
admin_pass varchar(100)
);
insert into admin(admin_id,admin_pass) values("chokerin","yokogawa");
