   M S B A M L   `   `   `  ����K  GKolokwium.numer1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Kolokwium.numer1Kolokwium.numer1  5   	   !    Kolokwium.numer1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Kolokwium.numer1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��EmployerDataGrid��5   )      AutoGenerateColumns .     
IsReadOnly . $��0��5      $��0��5      $��2��5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Employee��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 5   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   $   �� *ENAME+5   %     5       $	 Job��6%   $ * 5"   %    5!   %   �� *JOB+5"   %     5#      $ Department Name��6%   $ 2* 5%   %    5$   $   �� *
DEPT.DNAME+5%   %     5&      $ Salary��6%   $ * 5(   %    5'   #   �� *SAL+5(   %   5,      �� 5.   
   $��1��6   $��12(�6   .��6+   Szukaj63   �� 5/   
   -   5        	 ��Name$	 SearchTextBox��50      $��2��5/      $��0,5.4,10.2,4.6q�6   .��50   )   51      �� 52   
   -   5        
 ��Name$
 SearchButton��54      $��3��52      $
��Left=�53      $��
0,0.4,0,19q�6,   $��2��6@   $	��183��6Q   .��55      Szukaj6   �� 56   
   -   5        $
 ShowAllButton��58      $��3��56      $��Right=�57      $��0,0.4,10.2,19q�6-   $��2��6D   $	��178��6U   .��59      Pokaż wszystkich6$   �� 5;   
   $��1��6   $��1��6   $��12(�6-   .��6;   Edytuj Pracowników6O   �� 5<   
   $��2��6   $��1��6   $��12(�6-   .��6;   Name6A   �� 5=   
   -   5        $	 NameTextBox��5>      $��2��5=      $��1��6   $��73.8,5.4,-0.4,5.2q�6/   5>   )   �� 5?   
   $��3��6   $��1��6   $��12(�6-   .��6;   Job6@   �� 5@   
   -   5        $	 
JobTextBox��5A      $��3��5@      $��1��6   $��73.8,4.8,-0.4,4.8q�6/   5A   (   �� 5C   
   -   5        $
 SaveChangesButton��5E      $��4��5C      $��1��6   $��Right=�5D      $��0,0.2,-0.4,0q�6-   $��88��6C   .��5F      Zapisz zmiany6!   5H      5I      