FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    r l dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folder     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r   ��  i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k    8       l     ��  ��      Open BrainVoyager     �   $   O p e n   B r a i n V o y a g e r      O    
    I   	������
�� .miscactvnull��� ��� null��  ��    m       �                                                                                      @ alis    �  blintz                     �J�rH+   -BrainVoyager QX.app                                             @��u�        ����  	                BrainVoyager QX_2.6     �K/�      ���.     -  &z  =blintz:Applications: BrainVoyager QX_2.6: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.6/BrainVoyager QX.app  / ��        l   ��������  ��  ��       !   l   �� " #��   " d ^ Set variable "theScript" to the path of the Ruby script located in the app's package contents    # � $ $ �   S e t   v a r i a b l e   " t h e S c r i p t "   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s !  % & % r     ' ( ' n     ) * ) 1    ��
�� 
strq * l    +���� + n     , - , 1    ��
�� 
psxp - l    .���� . c     / 0 / l    1���� 1 l    2���� 2 b     3 4 3 l    5���� 5 I   �� 6 7
�� .earsffdralis        afdr 6  f     7 �� 8��
�� 
rtyp 8 m    ��
�� 
ctxt��  ��  ��   4 m     9 9 � : : * C o n t e n t s : F M R _ M a k e r . r b��  ��  ��  ��   0 m    ��
�� 
alis��  ��  ��  ��   ( o      ���� 0 	thescript 	theScript &  ; < ; l   ��������  ��  ��   <  = > = l   �� ? @��   ? ] W Set variable "thePath" to the path of the folder that was dropped onto the application    @ � A A �   S e t   v a r i a b l e   " t h e P a t h "   t o   t h e   p a t h   o f   t h e   f o l d e r   t h a t   w a s   d r o p p e d   o n t o   t h e   a p p l i c a t i o n >  B C B r    & D E D n    $ F G F 1   " $��
�� 
strq G l   " H���� H c    " I J I n      K L K 1     ��
�� 
psxp L o    ���� 0 dropped_folder   J m     !��
�� 
ctxt��  ��   E o      ���� 0 thepath thePath C  M N M l  ' '��������  ��  ��   N  O P O l  ' '�� Q R��   Q � � Set variable "variables" to execute the shell script - this will allow the Ruby script to send variables back to the Applescript    R � S S   S e t   v a r i a b l e   " v a r i a b l e s "   t o   e x e c u t e   t h e   s h e l l   s c r i p t   -   t h i s   w i l l   a l l o w   t h e   R u b y   s c r i p t   t o   s e n d   v a r i a b l e s   b a c k   t o   t h e   A p p l e s c r i p t P  T U T l  ' '�� V W��   V R L Execute the Ruby script, and send the variable "thePath" to the Ruby script    W � X X �   E x e c u t e   t h e   R u b y   s c r i p t ,   a n d   s e n d   t h e   v a r i a b l e   " t h e P a t h "   t o   t h e   R u b y   s c r i p t U  Y Z Y r   ' 4 [ \ [ I  ' 2�� ]��
�� .sysoexecTEXT���     TEXT ] b   ' . ^ _ ^ b   ' , ` a ` b   ' * b c b m   ' ( d d � e e 
 R u b y   c o   ( )���� 0 	thescript 	theScript a m   * + f f � g g    _ o   , -���� 0 thepath thePath��   \ o      ���� 0 returned_items   Z  h i h l  5 5��������  ��  ��   i  j k j l  5 5�� l m��   l s m Once the Ruby script finishes running, information sent back will be stored in the variable "returned_items"    m � n n �   O n c e   t h e   R u b y   s c r i p t   f i n i s h e s   r u n n i n g ,   i n f o r m a t i o n   s e n t   b a c k   w i l l   b e   s t o r e d   i n   t h e   v a r i a b l e   " r e t u r n e d _ i t e m s " k  o p o l  5 5�� q r��   q P J returned_items will be a very long string that looks something like this:    r � s s �   r e t u r n e d _ i t e m s   w i l l   b e   a   v e r y   l o n g   s t r i n g   t h a t   l o o k s   s o m e t h i n g   l i k e   t h i s : p  t u t l  5 5�� v w��   v c ] fmr_source_file_path1,name1,fmr_filename,bv_folder&&fmr_source_file_path2,name1...etc.&&etc.    w � x x �   f m r _ s o u r c e _ f i l e _ p a t h 1 , n a m e 1 , f m r _ f i l e n a m e , b v _ f o l d e r & & f m r _ s o u r c e _ f i l e _ p a t h 2 , n a m e 1 . . . e t c . & & e t c . u  y z y l  5 5�� { |��   { � � Sets/lists of information needed to process a single FMR file are separated by &&, while items within each set/list are separated by commas    | � } }   S e t s / l i s t s   o f   i n f o r m a t i o n   n e e d e d   t o   p r o c e s s   a   s i n g l e   F M R   f i l e   a r e   s e p a r a t e d   b y   & & ,   w h i l e   i t e m s   w i t h i n   e a c h   s e t / l i s t   a r e   s e p a r a t e d   b y   c o m m a s z  ~  ~ l  5 5�� � ���   � W Q First, we will pull apart the sets/lists by setting text item delimiters to "&&"    � � � � �   F i r s t ,   w e   w i l l   p u l l   a p a r t   t h e   s e t s / l i s t s   b y   s e t t i n g   t e x t   i t e m   d e l i m i t e r s   t o   " & & "   � � � r   5 : � � � m   5 6 � � � � �  & & � n      � � � 1   7 9��
�� 
txdl � 1   6 7��
�� 
ascr �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   � O I Now set a new variable, file_groups, to the text items of returned_items    � � � � �   N o w   s e t   a   n e w   v a r i a b l e ,   f i l e _ g r o u p s ,   t o   t h e   t e x t   i t e m s   o f   r e t u r n e d _ i t e m s �  � � � r   ; @ � � � n   ; > � � � 2  < >��
�� 
citm � o   ; <���� 0 returned_items   � o      ���� 0 file_groups   �  � � � l  A A��������  ��  ��   �  � � � l  A A�� � ���   � \ V Since we've separated each list and stored it in an array, we can iterate through the    � � � � �   S i n c e   w e ' v e   s e p a r a t e d   e a c h   l i s t   a n d   s t o r e d   i t   i n   a n   a r r a y ,   w e   c a n   i t e r a t e   t h r o u g h   t h e �  � � � l  A A�� � ���   � _ Y array and set variables for each piece of information we need to send to BrainVoyager by    � � � � �   a r r a y   a n d   s e t   v a r i a b l e s   f o r   e a c h   p i e c e   o f   i n f o r m a t i o n   w e   n e e d   t o   s e n d   t o   B r a i n V o y a g e r   b y �  � � � l  A A�� � ���   � * $ setting text item delimiters to ","    � � � � H   s e t t i n g   t e x t   i t e m   d e l i m i t e r s   t o   " , " �  ��� � Y   A8 ��� � ��� � k   O3 � �  � � � r   O W � � � n   O U � � � 4   P U�� �
�� 
cobj � o   S T���� 0 i   � o   O P���� 0 file_groups   � o      ���� 0 variable   �  � � � r   X _ � � � m   X [ � � � � �  , � n      � � � 1   \ ^��
�� 
txdl � 1   [ \��
�� 
ascr �  � � � r   ` e � � � n   ` c � � � 2  a c��
�� 
citm � o   ` a���� 0 variable   � o      ���� 0 
final_list   �  � � � r   f n � � � n   f l � � � 4  g l�� �
�� 
cobj � m   j k����  � o   f g���� 0 
final_list   � o      ���� 0 source_file   �  � � � r   o w � � � n   o u � � � 4  p u�� �
�� 
cobj � m   s t����  � o   o p���� 0 
final_list   � o      ���� 0 	file_name   �  � � � r   x � � � � n   x ~ � � � 4  y ~�� �
�� 
cobj � m   | }����  � o   x y���� 0 
final_list   � o      ���� 0 	save_path   �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 
final_list   � o      ���� 0 fmr_filename   �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 
final_list   � o      ���� 0 save_folder   �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 
final_list   � o      ���� 0 
run_folder   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � a [ Tell BrainVoyager to make a new FMR file using the parameters in the variables we just set    � � � � �   T e l l   B r a i n V o y a g e r   t o   m a k e   a   n e w   F M R   f i l e   u s i n g   t h e   p a r a m e t e r s   i n   t h e   v a r i a b l e s   w e   j u s t   s e t �  � � � O   � � � � � k   � � � �  � � � I  � ����� �
�� .BVQXcFMMnull��� ��� null��   � �� � �
�� 
ffSf � o   � ����� 0 source_file   � �� � �
�� 
SkVl � m   � �����   � �� 
�� 
NSRs  m   � ����� @ ����
�� 
NSCs m   � ����� @��   �  l  � ���~�}�  �~  �}    l  � ��|�|   f ` BrainVoyager's syntax makes no sense, but this means save the FMR file with the name of the run    �		 �   B r a i n V o y a g e r ' s   s y n t a x   m a k e s   n o   s e n s e ,   b u t   t h i s   m e a n s   s a v e   t h e   F M R   f i l e   w i t h   t h e   n a m e   o f   t h e   r u n 

 I  � ��{
�{ .BVQXsiDcnull���     docu 4   � ��z
�z 
docu m   � � �  u n t i t l e d . f m r �y�x
�y 
siFl o   � ��w�w 0 	save_path  �x    l  � ��v�u�t�v  �u  �t    l  � ��s�s     Close the FMR file    � &   C l o s e   t h e   F M R   f i l e �r I  � ��q
�q .coreclosnull���     obj  4   � ��p
�p 
docu o   � ��o�o 0 fmr_filename   �n�m
�n 
savo m   � ��l
�l savono  �m  �r   � m   � ��                                                                                      @ alis    �  blintz                     �J�rH+   -BrainVoyager QX.app                                             @��u�        ����  	                BrainVoyager QX_2.6     �K/�      ���.     -  &z  =blintz:Applications: BrainVoyager QX_2.6: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.6/BrainVoyager QX.app  / ��   �   l  � ��k�j�i�k  �j  �i    !"! l  � ��h#$�h  # @ : Delete the untitled files that BrainVoyager leaves behind   $ �%% t   D e l e t e   t h e   u n t i t l e d   f i l e s   t h a t   B r a i n V o y a g e r   l e a v e s   b e h i n d" &�g& O   �3'(' k   �2)) *+* r   � �,-, c   � �./. 4   � ��f0
�f 
psxf0 o   � ��e�e 0 
run_folder  / m   � ��d
�d 
alis- o      �c�c 0 thepath thePath+ 121 r   �343 l  �5�b�a5 6  �676 n   � 898 2   � �`
�` 
file9 4   � ��_:
�_ 
cfol: l  � �;�^�]; o   � ��\�\ 0 thepath thePath�^  �]  7 E  <=< 1  �[
�[ 
pnam= m  	>> �??  u n t i t l e d�b  �a  4 o      �Z�Z 0 thefiles  2 @�Y@ X  2A�XBA I &-�WC�V
�W .coredeloobj        obj C J  &)DD E�UE o  &'�T�T "0 thecurrentvalue theCurrentValue�U  �V  �X "0 thecurrentvalue theCurrentValueB o  �S�S 0 thefiles  �Y  ( m   � �FF�                                                                                  MACS  alis    b  blintz                     �J�rH+   �|
Finder.app                                                      F��R        ����  	                CoreServices    �K/�      �͒     �| Y� Y�  0blintz:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    b l i n t z  &System/Library/CoreServices/Finder.app  / ��  �g  �� 0 i   � m   D E�R�R  � I  E J�QG�P
�Q .corecnte****       ****G o   E F�O�O 0 file_groups  �P  ��  ��  ��       �NHI�N  H �M
�M .aevtodocnull  �    alisI �L �K�JJK�I
�L .aevtodocnull  �    alis�K 0 dropped_folder  �J  J �H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�H 0 dropped_folder  �G 0 	thescript 	theScript�F 0 thepath thePath�E 0 returned_items  �D 0 file_groups  �C 0 i  �B 0 variable  �A 0 
final_list  �@ 0 source_file  �? 0 	file_name  �> 0 	save_path  �= 0 fmr_filename  �< 0 save_folder  �; 0 
run_folder  �: 0 thefiles  �9 "0 thecurrentvalue theCurrentValueK - �8�7�6�5 9�4�3�2 d f�1 ��0�/�.�-�, ��+�*�)�(�'�&�%�$�#�"�!� ����F���L�>��
�8 .miscactvnull��� ��� null
�7 
rtyp
�6 
ctxt
�5 .earsffdralis        afdr
�4 
alis
�3 
psxp
�2 
strq
�1 .sysoexecTEXT���     TEXT
�0 
ascr
�/ 
txdl
�. 
citm
�- .corecnte****       ****
�, 
cobj�+ �* �) 
�( 
ffSf
�' 
SkVl
�& 
NSRs�% @
�$ 
NSCs�# 
�" .BVQXcFMMnull��� ��� null
�! 
docu
�  
siFl
� .BVQXsiDcnull���     docu
� 
savo
� savono  
� .coreclosnull���     obj 
� 
psxf
� 
cfol
� 
fileL  
� 
pnam
� 
kocl
� .coredeloobj        obj �I9� *j UO)��l �%�&�,�,E�O��,�&�,E�O�%�%�%j E�O���,FO��-E�O �k�j kh �a �/E�Oa ��,FO��-E�O�a k/E�O�a l/E�O�a m/E�O�a a /E�O�a a /E�O�a a /E�O� ?*a �a ja a a a a  O*a a /a �l  O*a �/a !a "l #UOa $ I*a %�/�&E�O*a &�/a '-a ([a ),\Za *@1E�O �[a +a l kh �kvj ,[OY��U[OY�ascr  ��ޭ