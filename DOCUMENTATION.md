# 📦 BaptWinget - Documentation Complète

## 📋 Table des matières
- [Vue d'ensemble](#vue-densemble)
- [Prérequis](#prérequis)
- [Installation](#installation)
- [Structure du projet](#structure-du-projet)
- [Catégories de logiciels](#catégories-de-logiciels)
- [Utilisation](#utilisation)
- [Personnalisation](#personnalisation)
- [Dépannage](#dépannage)
- [Crédits](#crédits)

---

## 🎯 Vue d'ensemble

**BaptWinget** est un outil d'automatisation pour Windows qui permet d'installer et de configurer rapidement un ensemble de logiciels via WinGet (Windows Package Manager). Il permet également de désinstaller automatiquement les applications préinstallées inutiles (bloatware) de Windows.

### Fonctionnalités principales
- ✅ Installation automatique de logiciels par catégories
- ❌ Désinstallation du bloatware Windows
- 🎮 Catégorie Gaming (Steam, Discord, Ubisoft Connect)
- 🛠️ Catégorie Utilitaires (Notepad++, VLC, 7zip, etc.)
- 💼 Catégorie Professionnelle (Teams, FileZilla, FortiClient VPN, etc.)
- 🖥️ Installation personnalisée (navigateurs, clients, etc.)
- 🔧 Installation optionnelle des drivers CPU et GPU

---

## ⚙️ Prérequis

### Obligatoire
- **Windows 10/11**
- **WinGet** doit être installé sur votre système

### Installation de WinGet
Si WinGet n'est pas installé, téléchargez-le depuis le Microsoft Store :
- [Installer WinGet](https://www.microsoft.com/fr-fr/p/programme-dinstallation-dapplication/9nblggh4nns1?activetab=pivot:overviewtab)

Ou utilisez PowerShell :
```powershell
Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
```

### Vérifier que WinGet est installé
```powershell
winget --version
```

---

## 🚀 Installation

### Méthode 1 : Installation automatique (Recommandée)

1. **Téléchargez** le fichier `Installation.bat`
2. **Exécutez-le en tant qu'administrateur** (clic droit → "Exécuter en tant qu'administrateur")
3. Le script va :
   - Télécharger automatiquement la dernière version du projet depuis GitHub
   - Extraire les fichiers dans un dossier temporaire
   - Lancer l'installation
   - Nettoyer les fichiers temporaires

### Méthode 2 : Installation manuelle

1. **Clonez** le dépôt ou téléchargez le ZIP :
```bash
git clone https://github.com/bapt-git/BaptWinget.git
```

2. **Ouvrez PowerShell** en tant qu'administrateur

3. **Naviguez** vers le dossier du projet :
```powershell
cd chemin\vers\BaptWinget
```

4. **Autorisez** l'exécution des scripts :
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

5. **Lancez** le script principal :
```powershell
.\Default.ps1
```

---

## 📁 Structure du projet

```
BaptWinget/
│
├── Installation.bat           # Script d'installation automatique
├── Default.ps1               # Script principal qui orchestre tout
├── Drivers.ps1               # Détection et installation des drivers
├── README.md                 # Description courte du projet
│
├── Games/                    # Catégorie Gaming
│   ├── Games.ps1            # Script d'installation
│   └── Game.txt             # Liste des logiciels de gaming
│
├── Utils/                    # Catégorie Utilitaires
│   ├── Utils.ps1            # Script d'installation
│   └── Utils.txt            # Liste des utilitaires
│
├── Pro/                      # Catégorie Professionnelle
│   ├── Pro.ps1              # Script d'installation
│   └── pro.txt              # Liste des logiciels pro
│
├── Bapt/                     # Catégorie Personnalisée
│   ├── Bapt.ps1             # Script d'installation
│   └── Bapt.txt             # Liste des logiciels perso
│
└── Uninstall/                # Désinstallation du bloatware
    ├── Uninstal.ps1         # Script de désinstallation
    └── Uninstall.txt        # Liste des bloatwares à supprimer
```

---

## 📦 Catégories de logiciels

### 🎮 Gaming (`Games/`)
Applications pour les joueurs PC.

| Logiciel | ID WinGet | Description |
|----------|-----------|-------------|
| Steam | `Valve.Steam` | Plateforme de distribution de jeux |
| Discord | `Discord.Discord` | Communication vocale et textuelle |
| Ubisoft Connect | `Ubisoft.Connect` | Lanceur de jeux Ubisoft |

### 🛠️ Utilitaires (`Utils/`)
Outils essentiels pour une utilisation quotidienne.

| Logiciel | ID WinGet | Description |
|----------|-----------|-------------|
| Notepad++ | `Notepad++.Notepad++` | Éditeur de texte avancé |
| Foxit Reader | `Foxit.FoxitReader` | Lecteur PDF léger |
| 7-Zip | `7zip.7zip` | Gestionnaire d'archives |
| VLC | `VideoLAN.VLC` | Lecteur multimédia universel |

### 💼 Professionnels (`Pro/`)
Logiciels pour un usage professionnel.

| Logiciel | ID WinGet | Description |
|----------|-----------|-------------|
| FileZilla | `TimKosse.FileZilla.Client` | Client FTP/SFTP |
| FortiClient VPN | `Fortinet.FortiClientVPN` | Client VPN d'entreprise |
| Microsoft Teams | `Microsoft.Teams` | Outil de collaboration |
| Java Runtime | `Oracle.JavaRuntimeEnvironment` | Environnement d'exécution Java |
| Greenshot | `Greenshot.Greenshot` | Outil de capture d'écran |

### 🖥️ Personnalisé (`Bapt/`)
Logiciels personnalisés selon vos préférences.

| Logiciel | ID WinGet | Description |
|----------|-----------|-------------|
| Vivaldi | `VivaldiTechnologies.Vivaldi` | Navigateur web personnalisable |
| Signal | `Signal.Signal` | Messagerie sécurisée |
| Deezer | `Deezer.Deezer` | Service de streaming musical |
| Firefox | `Mozilla.Firefox` | Navigateur web open source |
| ONLYOFFICE | `ONLYOFFICE.DesktopEditors` | Suite bureautique |

### ❌ Désinstallation (`Uninstall/`)
Liste des applications Windows préinstallées qui seront supprimées (bloatware). Inclut notamment :
- Applications Microsoft inutiles (3D Builder, Alarmes, Cartes, etc.)
- Jeux préinstallés (Candy Crush, Minecraft UWP, etc.)
- Applications tierces (Facebook, Twitter, Netflix, etc.)
- Applications HP préinstallées (sur les PC HP)
- Applications Xbox (si non utilisées)

**Total** : Plus de 70 applications peuvent être désinstallées

### 🔧 Drivers (`Drivers.ps1`)
Installation automatique des assistants de drivers selon votre matériel.

**Détection automatique :**
- **CPU Intel** → Installe Intel Driver & Support Assistant
- **CPU AMD** → Message d'information (pas d'assistant disponible via WinGet)
- **GPU NVIDIA** → Installe GeForce Experience
- **GPU AMD** → Message d'information (pas d'assistant disponible via WinGet)

---

## 🎯 Utilisation

### Flux d'exécution standard

Lorsque vous lancez `Default.ps1` ou `Installation.bat`, voici ce qui se passe :

1. **Installation des logiciels Gaming** (confirmation requise)
   - Le script demande : *"Installer les logiciels par défaut de gaming ? (y/n)"*
   - Si oui, installe Steam, Discord et Ubisoft Connect

2. **Installation des Utilitaires** (confirmation requise)
   - Le script demande : *"Installer les utilitaires ? (y/n)"*
   - Si oui, installe Notepad++, VLC, 7-Zip et Foxit Reader

3. **Installation des logiciels Professionnels** (confirmation requise)
   - Le script demande : *"Installer les logiciels professionnels ? (y/n)"*
   - Si oui, installe FileZilla, FortiClient VPN, Teams, Java et Greenshot

4. **Installation des logiciels Personnalisés** (confirmation requise)
   - Le script demande : *"Installer les logiciels personnalisés ? (y/n)"*
   - Si oui, installe Vivaldi, Signal, Deezer, Firefox et ONLYOFFICE

5. **Désinstallation du bloatware** (confirmation requise)
   - Le script demande : *"Désinstaller les applications inutiles ? (y/n)"*
   - Si oui, supprime automatiquement plus de 70 applications préinstallées

6. **Installation des Drivers** (optionnel)
   - Le script demande : *"Installation Drivers CPU et GPU ? (y/n)"*
   - Si oui, détecte automatiquement le matériel et installe les assistants appropriés

### Réponses attendues
- **`y`** ou **`Y`** → Oui, installer/désinstaller
- **`n`** ou **`N`** → Non, passer cette étape

---

## 🛠️ Personnalisation

### Ajouter des logiciels

Pour ajouter des logiciels à une catégorie, modifiez le fichier `.txt` correspondant :

1. **Trouvez l'ID WinGet** du logiciel :
```powershell
winget search "nom_du_logiciel"
```

2. **Ajoutez l'ID** à la fin du fichier `.txt` approprié :
   - `Games/Game.txt` pour les jeux
   - `Utils/Utils.txt` pour les utilitaires
   - `Pro/pro.txt` pour les logiciels pro
   - `Bapt/Bapt.txt` pour vos logiciels perso

**Exemple** : Ajouter Visual Studio Code aux Utilitaires
```txt
# Dans Utils/Utils.txt
Notepad++.Notepad++
Foxit.FoxitReader
7zip.7zip
VideoLAN.VLC
Microsoft.VisualStudioCode
```

### Retirer des logiciels

Supprimez simplement la ligne correspondante dans le fichier `.txt`, ou commentez-la avec `#` :

```txt
# Discord.Discord   ← Cette ligne sera ignorée
```

### Créer une nouvelle catégorie

1. **Créez un nouveau dossier** (ex: `Dev/`)
2. **Créez un fichier de liste** (ex: `Dev.txt`)
3. **Créez un script PowerShell** (ex: `Dev.ps1`) :

```powershell
$dev = "0"

while ($dev -ne "y" -and $dev -ne "n") {
    $dev = Read-Host "Installer les logiciels de développement ? (y/n) "
    if ($dev -eq "y") {
        foreach ($line in Get-Content $PSScriptRoot\Dev.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e           
        }
    }
}
```

4. **Ajoutez l'appel** dans `Default.ps1` :
```powershell
#Dev script
.\Dev\Dev.ps1
```

### Modifier la liste de désinstallation

Le fichier `Uninstall/Uninstall.txt` contient la liste des applications à supprimer. Vous pouvez :

- **Retirer** une application de la liste si vous souhaitez la conserver
- **Ajouter** de nouvelles applications en ajoutant leur nom ou pattern

**Note** : Les entrées avec `*` sont des wildcards (ex: `*facebook*` supprime toutes les apps contenant "facebook")

---

## 🔍 Dépannage

### WinGet ne fonctionne pas
**Erreur** : `winget : Le terme 'winget' n'est pas reconnu...`

**Solution** :
1. Installez WinGet depuis le Microsoft Store
2. Redémarrez PowerShell
3. Vérifiez avec : `winget --version`

### Erreur d'exécution de script PowerShell
**Erreur** : `Impossible de charger le fichier [...] car l'exécution de scripts est désactivée`

**Solution** :
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
```

### Installation échoue pour un logiciel spécifique
**Solution** :
1. Vérifiez que l'ID WinGet est correct :
```powershell
winget search "nom_du_logiciel"
```
2. Essayez d'installer manuellement :
```powershell
winget install --id <ID_EXACT> -e
```
3. Si l'erreur persiste, commentez la ligne dans le fichier `.txt`

### Le script se ferme immédiatement
**Solution** :
- Exécutez en tant qu'administrateur
- Utilisez PowerShell (pas l'invite de commandes standard)

### Certaines applications ne se désinstallent pas
**Solution** :
- Certaines applications système peuvent nécessiter des droits supplémentaires
- Vérifiez dans les Paramètres Windows → Applications si elles sont toujours présentes
- Désinstallez manuellement si nécessaire

### L'assistant de drivers ne s'installe pas
**Solution** :
- Vérifiez que votre matériel est bien détecté :
```powershell
Get-WmiObject -Class Win32_Processor | Select-Object -Property Name
Get-WmiObject -Class Win32_VideoController | Select-Object -Property Description
```
- Les drivers AMD ne sont actuellement pas disponibles via WinGet

---

## 📊 Commandes utiles WinGet

### Rechercher un logiciel
```powershell
winget search "nom_du_logiciel"
```

### Lister les logiciels installés
```powershell
winget list
```

### Mettre à jour un logiciel
```powershell
winget upgrade --id <ID_LOGICIEL>
```

### Mettre à jour tous les logiciels
```powershell
winget upgrade --all
```

### Désinstaller un logiciel
```powershell
winget uninstall --id <ID_LOGICIEL>
```

### Voir les détails d'un logiciel
```powershell
winget show --id <ID_LOGICIEL>
```

---

## 🎓 Comprendre le fonctionnement

### Architecture des scripts

Chaque script de catégorie (`Games.ps1`, `Utils.ps1`, etc.) suit la même logique :

1. **Demande de confirmation** à l'utilisateur
2. **Lecture du fichier** `.txt` ligne par ligne
3. **Ignorer les commentaires** (lignes commençant par `#`)
4. **Installation via WinGet** de chaque logiciel

**Code type** :
```powershell
$variable = "0"

while ($variable -ne "y" -and $variable -ne "n") {
    $variable = Read-Host "Message de confirmation ? (y/n) "
    if ($variable -eq "y") {
        foreach ($line in Get-Content $PSScriptRoot\fichier.txt) {
            if ($line.contains("#")) {
                continue
            }
            winget install --id $line -e           
        }
    }
}
```

### Installation.bat expliqué

Le fichier `Installation.bat` automatise tout le processus :

1. Crée un dossier temporaire (`c:\users\%username%\tempwinget`)
2. Télécharge la dernière version depuis GitHub
3. Extrait le ZIP avec un script VBS intégré
4. Change la politique d'exécution PowerShell temporairement
5. Lance `Default.ps1`
6. Nettoie les fichiers temporaires
7. Affiche un message de fin

---

## 🤝 Contribuer

Vous souhaitez améliorer BaptWinget ? N'hésitez pas à :

1. **Fork** le projet
2. **Créer une branche** pour votre fonctionnalité
3. **Commit** vos modifications
4. **Push** vers votre fork
5. **Ouvrir une Pull Request**

### Idées d'améliorations
- [ ] Ajouter plus de catégories (Développement, Créatif, etc.)
- [ ] Interface graphique (GUI)
- [ ] Export/Import de configurations personnalisées
- [ ] Support des drivers AMD via d'autres méthodes
- [ ] Logs d'installation détaillés
- [ ] Mode silencieux (sans confirmation)
- [ ] Rollback en cas d'erreur

---

## 📜 Licence

Ce projet est libre d'utilisation. Vous pouvez le modifier et le distribuer librement.

---

## 👏 Crédits

- **Auteur** : Baptiste (bapt-git)
- **Inspiration** : Alejandro Barrachina Argudo (ALK222)
- **Outil utilisé** : [WinGet (Windows Package Manager)](https://github.com/microsoft/winget-cli)

---

## 📞 Support

Pour toute question ou problème :
- Ouvrez une **issue** sur GitHub
- Consultez la section [Dépannage](#dépannage)
- Vérifiez la [documentation WinGet officielle](https://learn.microsoft.com/fr-fr/windows/package-manager/)

---

## 📅 Historique des versions

### Version actuelle
- Installation automatisée par catégories
- Désinstallation du bloatware Windows
- Support des drivers Intel et NVIDIA
- Interface en ligne de commande interactive

---

**Dernière mise à jour** : Octobre 2025

Profitez de BaptWinget pour configurer vos PC Windows rapidement ! 🚀
