   M S B A M L   `   `   `  ����C  ?dozoCRUD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:dozoCRUD.PagesdozoCRUD.Pages  5          dozoCRUD.Pages.work   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:dozoCRUD.Pages     5        N� Title$
  work��5	      .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $��50 �6   6*   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��	BDWorkers��5         AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ФИО��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6J   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *fio+6Z     5      $ 
Логин��6%   $
 auto 6N    64   �� *login+6^     5      $ Пароль��6%   $
 auto 6R    65   �� *
password+6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Дата��6)      CellTemplate 5      �� 5      .R�5      �� .+�5   "   �� ��6,   �� *data+ �� StringFormat$ {0:dd/MM/yyyy}��6b   �� 5   "   ��6,   �� *time+6D   5      5      5        5       5       �� 5!      .R�5"      �� $	��100��6$   ��5#   "   �� 5$   &   	 �� Path$	 photo�6.   
 �� TargetNullValue
 5%   *   ��5&   .   /img/dozopravka.png��6O   5(   '   5*      5+      5-        5.      $
 auto 6)    5/      �� 50      .R�51      �� $��BntEdit��6%   -   5        $	��150��51   G   .��6S   Редактировать6b   52      54        55      $
 auto 6)    56      �� 57      .R�58      �� $��BntDell��6%   -   5        $	��150��58   C   .��6O   Удалить6X   59      5;      5>      �� 5@   
   $��1��6    �� Orientation$ 
Horizontal=�6"   .+�5A      �� -   5        .��5A   !   Добавить6+   5C      5D      5E      