classdef View < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        MyBalance              matlab.ui.Figure
        BalanceEditFieldLabel  matlab.ui.control.Label
        ViewBalance            matlab.ui.control.NumericEditField
        RMBEditFieldLabel      matlab.ui.control.Label
        ViewRMB                matlab.ui.control.NumericEditField
        WithdrawButton         matlab.ui.control.Button
        DepositButton          matlab.ui.control.Button
        controlObj
        modelObj
    end
    
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.controlObj=Controller(app,app.modelObj);
            app.attatchToController(app.controlObj);
            app.modelObj.addlistener('balanceChanged',@app.updateBalance);
        end
    end
    methods (Access = private)
        function attatchToController(app,controller)   % (5)
           funcH = @controller.callback_withDrawButton;
           addlistener(app.WithdrawButton,'ButtonPushed',funcH)

           funcH = @controller.callback_depositButton;
           addlistener(app.DepositButton,'ButtonPushed',funcH)        
        end
        function updateBalance(app,src,data)           % (7)  
            app.ViewBalance.Value = app.modelObj.balance;
        end
    end
    
    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create MyBalance
            app.MyBalance = uifigure;
            app.MyBalance.Position = [100 100 234 129];
            app.MyBalance.Name = 'ÕË»§';

            % Create BalanceEditFieldLabel
            app.BalanceEditFieldLabel = uilabel(app.MyBalance);
            app.BalanceEditFieldLabel.HorizontalAlignment = 'right';
            app.BalanceEditFieldLabel.Position = [37 91 49 22];
            app.BalanceEditFieldLabel.Text = 'Balance';

            % Create ViewBalance
            app.ViewBalance = uieditfield(app.MyBalance, 'numeric');
            app.ViewBalance.Position = [101 91 100 22];

            % Create RMBEditFieldLabel
            app.RMBEditFieldLabel = uilabel(app.MyBalance);
            app.RMBEditFieldLabel.HorizontalAlignment = 'right';
            app.RMBEditFieldLabel.Position = [54 54 32 22];
            app.RMBEditFieldLabel.Text = 'RMB';

            % Create ViewRMB
            app.ViewRMB = uieditfield(app.MyBalance, 'numeric');
            app.ViewRMB.Position = [101 54 100 22];

            % Create WithdrawButton
            app.WithdrawButton = uibutton(app.MyBalance, 'push');
            app.WithdrawButton.ButtonPushedFcn = createCallbackFcn(app, @WithdrawButtonPushed, true);
            app.WithdrawButton.Position = [37 15 65 22];
            app.WithdrawButton.Text = 'Withdraw';

            % Create DepositButton
            app.DepositButton = uibutton(app.MyBalance, 'push');
            app.DepositButton.ButtonPushedFcn = createCallbackFcn(app, @DepositButtonPushed, true);
            app.DepositButton.Position = [130 15 71 22];
            app.DepositButton.Text = 'Deposit';
        end
    end

    methods (Access = public)

        % Construct app
        function app = View(modelObj)
            app.modelObj=modelObj;

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.MyBalance)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.MyBalance)
        end
    end
end