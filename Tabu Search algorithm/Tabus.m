model = CreateModel();
start_time = cputime;
CostFunction = @(tour) TourLength(tour, model);
ActionList = CreatePermActionList(model.n);
nAction = numel(ActionList);

MaxIt = 300; TL = round(0.5 * nAction);
empty_individual.Position = [];
empty_individual.Cost = [];
sol = empty_individual;
sol.Position = randperm(model.n);
sol.Cost = CostFunction(sol.Position);
BestSol = sol;
BestCost = zeros(MaxIt,1);
TC = zeros(nAction,1);

for it = 1:MaxIt
    bestnewsol.Cost = inf;
    for i = 1:nAction
        if TC(i) == 0
            newsol.Position = DoAction(sol.Position, ActionList{i});
            newsol.Cost = CostFunction(newsol.Position);
            newsol.ActionIndex = i;
            if newsol.Cost <= bestnewsol.Cost
                bestnewsol = newsol;
            end
        end
    end
    sol = bestnewsol;
    for i = 1:nAction
        if i == bestnewsol.ActionIndex
            TC(i) = TL;
        else
            TC(i) = max(TC(i)-1, 0);
        end
    end
    if sol.Cost <= BestSol.Cost
        BestSol = sol;
    end
    BestCost(it) = BestSol.Cost;
    fprintf('Iteration %d: Best Cost = %f\n', it, BestCost(it));
    PlotSolution(BestSol, model);
    pause(0.01);
end
fprintf('\nComputed Time = %f\n', cputime - start_time);