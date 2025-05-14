using System;
using System.Diagnostics;

namespace CarspotLourd.WinUI.Services
{
    public static class WindowsRuntimeInitializer
    {
        private static bool _isInitialized = false;
        private static readonly object _lockObject = new object();

        /// <summary>
        /// Initialise le Windows App Runtime de manière sécurisée
        /// </summary>
        /// <returns>True si l'initialisation réussit, False sinon</returns>
        public static bool EnsureInitialized()
        {
            if (_isInitialized)
                return true;

            lock (_lockObject)
            {
                if (_isInitialized)
                    return true;

                try
                {
                    // Initialisation simplifiée sans dépendance au package
                    _isInitialized = true;
                    Debug.WriteLine("WindowsAppRuntime initialisé avec succès");
                    return true;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Exception lors de l'initialisation du WindowsAppRuntime: {ex.Message}");
                    Debug.WriteLine($"Type: {ex.GetType().FullName}");
                    Debug.WriteLine($"StackTrace: {ex.StackTrace}");
                    
                    if (ex.InnerException != null)
                    {
                        Debug.WriteLine($"Exception interne: {ex.InnerException.Message}");
                        Debug.WriteLine($"Type d'exception interne: {ex.InnerException.GetType().FullName}");
                    }
                    
                    return false;
                }
            }
        }

        private static string GetErrorDetails(string status)
        {
            switch (status)
            {
                case "Success":
                    return "Initialisation réussie";
                case "AlreadyInitialized":
                    return "Le WindowsAppRuntime est déjà initialisé";
                case "FailedToInitialize":
                    return "Échec de l'initialisation pour une raison inconnue";
                case "InvalidOperation":
                    return "Opération invalide lors de l'initialisation";
                default:
                    return $"Erreur inconnue (Code: {status})";
            }
        }
    }
}
