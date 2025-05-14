namespace CarspotLourd
{
    public partial class App : Application
    {
        public App()
        {
            // Ajouter un gestionnaire global d'exceptions non gérées
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            
            InitializeComponent();

            // Utiliser directement MainPage au lieu de AppShell
            MainPage = new MainPage();
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            Exception ex = e.ExceptionObject as Exception;
            string errorMessage = ex?.ToString() ?? "Exception inconnue";
            System.Diagnostics.Debug.WriteLine($"Exception non gérée: {errorMessage}");
            
            // Si l'exception contient une exception interne, affichons également ses détails
            if (ex?.InnerException != null)
            {
                System.Diagnostics.Debug.WriteLine($"Exception interne: {ex.InnerException.Message}");
                System.Diagnostics.Debug.WriteLine($"Stack trace interne: {ex.InnerException.StackTrace}");
            }
        }
    }
}
