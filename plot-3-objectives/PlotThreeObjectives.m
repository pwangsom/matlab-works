
function PlotThreeObjectives (set)
   
    figure(1);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel('Cost');
    ylabel('Makespan');
    zlabel('Data Movement');
    view(120,20);
    %view(0,90); % cost, makespan
    %view(0,0); % cost, data
    %view(90,0); % makespan, data
    grid on;
    
    figure(2);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel('Cost');
    ylabel('Makespan');
    zlabel('Data Movement');
    view(0,90); % cost, makespan
    grid on;
    
    figure(3);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel('Cost');
    ylabel('Makespan');
    zlabel('Data Movement');
    view(0,0); % cost, data
    grid on;
    
    figure(4);
    scatter3(set(:,1),set(:,2),set(:,3),set(:,4),set(:,5:7),'*');
    xlabel('Cost');
    ylabel('Makespan');
    zlabel('Data Movement');
    view(90,0); % makespan, data
    grid on;

end