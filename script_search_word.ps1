##### Un script qui pour vous permet de trouver des fichiers contenant un mot cpécifique.##### 
# Comment ça marche?
# 1.Précisez le mot que vous recherchez (dans notre cas c'est un Tibidou )
# 2.Précisez le chemin en format: C:\Dossier\dosier ou \\serveur\Dossier\Dossier
#           (dans notre cas C:\Temp\log)  
# 3.Spécifiez le format de fichier dans laequel vous souhaitez rechercher
#           (dans notre cas tous les fichiers avec extension txt: *.txt) 
 
$searchWords = 'Tibidou'

Foreach ($sw in $searchWords)
{
    Get-Childitem -Path "C:\Temp\log" -Recurse -include "*.txt" | 
    Select-String -Pattern "$sw" | 
    Select-Object Filename,LineNumber,@{n='SearchWord';e={$sw}}
}
