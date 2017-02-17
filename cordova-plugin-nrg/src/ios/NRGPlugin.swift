import Cordova

@objc(NRGPlugin) class NRGPlugin : CDVPlugin {
    @objc(startGame:)
    func startGame(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK
        )
        /* UIAlertController is iOS 8 or newer only. */
        let toastController: UIAlertController =
            UIAlertController(
                title: "",
                message: "NRG: Plugin works",
                preferredStyle: .alert
        )
        
        self.viewController?.present(
            toastController,
            animated: true,
            completion: nil
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
            toastController.dismiss(
                animated: true,
                completion: nil
            )
        }
        
        pluginResult = CDVPluginResult(
            status: CDVCommandStatus_OK,
            messageAs: "NRG: Plugin works"
        )
        
   //     let appDelegate = UIApplication.shared.delegate as! AppDelegate
   //     appDelegate.startGame()
        
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
    }
}
