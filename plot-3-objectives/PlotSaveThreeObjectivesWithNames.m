function PlotSaveThreeObjectivesWithNames (set, dest_folder, dest_file, obj1, obj2, obj3)
   
    format_file = '.tif';
   
    f1 = figure(1);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel(obj1);
    ylabel(obj2);
    zlabel(obj3);
    view(120,20); % 3D
    grid on;
    
    dest_pics = char(strcat(dest_folder, dest_file, '_1_3D_CMD', format_file));
    saveas(f1, dest_pics);
    
    f2 = figure(2);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel(obj1);
    ylabel(obj2);
    zlabel(obj3);
    view(0,90); % cost, makespan
    grid on;
    
    dest_pics = char(strcat(dest_folder, dest_file, '_2_2D_CM', format_file));
    saveas(f2, dest_pics);
    
    f3 = figure(3);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel(obj1);
    ylabel(obj2);
    zlabel(obj3);
    view(0,0); % cost, data
    grid on;
    
    dest_pics = char(strcat(dest_folder, dest_file, '_3_2D_CD', format_file));
    saveas(f3, dest_pics);
    
    f4 = figure(4);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel(obj1);
    ylabel(obj2);
    zlabel(obj3);
    view(90,0); % makespan, data
    grid on;
    
    dest_pics = char(strcat(dest_folder, dest_file, '_4_2D_MD', format_file));
    saveas(f4, dest_pics);

end