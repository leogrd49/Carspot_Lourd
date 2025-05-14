using Microsoft.UI.Xaml;
using System;
using System.Diagnostics;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace CarspotLourd.WinUI;

/// <summary>
/// Provides application-specific behavior to supplement the default Application class.
/// </summary>
public partial class App : MauiWinUIApplication
{
    /// <summary>
    /// Initializes the singleton application object.  This is the first line of authored code
    /// executed, and as such is the logical equivalent of main() or WinMain().
    /// </summary>
    public App()
    {
        try
        {
            // Initialisation Windows App Runtime simplifiée
            this.InitializeComponent();
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"Erreur lors de l'initialisation de l'application: {ex.Message}");
            Debug.WriteLine($"Exception de type: {ex.GetType().FullName}");
            if (ex.InnerException != null)
            {
                Debug.WriteLine($"Exception interne: {ex.InnerException.Message}");
                Debug.WriteLine($"Type d'exception interne: {ex.InnerException.GetType().FullName}");
            }
            throw;
        }
    }

    protected override MauiApp CreateMauiApp() => MauiProgram.CreateMauiApp();
}