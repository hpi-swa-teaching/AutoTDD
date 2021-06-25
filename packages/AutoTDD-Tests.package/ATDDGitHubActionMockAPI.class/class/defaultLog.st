as yet unclassified
defaultLog 

	^ '2021-05-23T12:55:50.4524854Z ##[section]Starting: Request a runner to run this job
2021-05-23T12:55:51.7380274Z Can''t find any online and idle self-hosted runner in current repository that matches the required labels: ''ubuntu-latest''
2021-05-23T12:55:51.7380383Z Can''t find any online and idle self-hosted runner in current repository''s account/organization that matches the required labels: ''ubuntu-latest''
2021-05-23T12:55:51.7380604Z Found online and idle hosted runner in current repository''s account/organization that matches the required labels: ''ubuntu-latest''
2021-05-23T12:55:51.8412613Z ##[section]Finishing: Request a runner to run this job
2021-05-23T12:55:59.0861274Z Current runner version: ''2.278.0''
2021-05-23T12:55:59.0886032Z ##[group]Operating System
2021-05-23T12:55:59.0886752Z Ubuntu
2021-05-23T12:55:59.0887149Z 20.04.2
2021-05-23T12:55:59.0887484Z LTS
2021-05-23T12:55:59.0887898Z ##[endgroup]
2021-05-23T12:55:59.0888382Z ##[group]Virtual Environment
2021-05-23T12:55:59.0888930Z Environment: ubuntu-20.04
2021-05-23T12:55:59.0889371Z Version: 20210517.1
2021-05-23T12:55:59.0890223Z Included Software: https://github.com/actions/virtual-environments/blob/ubuntu20/20210517.1/images/linux/Ubuntu2004-README.md
2021-05-23T12:55:59.0891394Z Image Release: https://github.com/actions/virtual-environments/releases/tag/ubuntu20%2F20210517.1
2021-05-23T12:55:59.0892112Z ##[endgroup]
2021-05-23T12:55:59.0893694Z ##[group]GITHUB_TOKEN Permissions
2021-05-23T12:55:59.0894679Z Actions: write
2021-05-23T12:55:59.0895100Z Checks: write
2021-05-23T12:55:59.0895573Z Contents: write
2021-05-23T12:55:59.0895997Z Deployments: write
2021-05-23T12:55:59.0896524Z Issues: write
2021-05-23T12:55:59.0896975Z Metadata: read
2021-05-23T12:55:59.0897439Z Packages: write
2021-05-23T12:55:59.0897890Z PullRequests: write
2021-05-23T12:55:59.0898432Z RepositoryProjects: write
2021-05-23T12:55:59.0898945Z SecurityEvents: write
2021-05-23T12:55:59.0899428Z Statuses: write
2021-05-23T12:55:59.0899910Z ##[endgroup]
2021-05-23T12:55:59.0902443Z Prepare workflow directory
2021-05-23T12:55:59.1418872Z Prepare all required actions
2021-05-23T12:55:59.1428171Z Getting action download info
2021-05-23T12:55:59.5693735Z Download action repository ''actions/checkout@v2''
2021-05-23T12:56:01.2880188Z Download action repository ''hpi-swa/setup-smalltalkCI@v1''
2021-05-23T12:56:01.7154539Z ##[group]Run actions/checkout@v2
2021-05-23T12:56:01.7155166Z with:
2021-05-23T12:56:01.7155680Z   repository: hpi-swa-teaching/AutoTDD
2021-05-23T12:56:01.7156611Z   token: ***
2021-05-23T12:56:01.7157029Z   ssh-strict: true
2021-05-23T12:56:01.7157558Z   persist-credentials: true
2021-05-23T12:56:01.7158048Z   clean: true
2021-05-23T12:56:01.7158493Z   fetch-depth: 1
2021-05-23T12:56:01.7158904Z   lfs: false
2021-05-23T12:56:01.7159326Z   submodules: false
2021-05-23T12:56:01.7159913Z ##[endgroup]
2021-05-23T12:56:01.9101512Z Syncing repository: hpi-swa-teaching/AutoTDD
2021-05-23T12:56:01.9112695Z ##[group]Getting Git version info
2021-05-23T12:56:01.9113765Z Working directory is ''/home/runner/work/AutoTDD/AutoTDD''
2021-05-23T12:56:01.9157245Z [command]/usr/bin/git version
2021-05-23T12:56:01.9280613Z git version 2.31.1
2021-05-23T12:56:01.9291576Z ##[endgroup]
2021-05-23T12:56:01.9297071Z Deleting the contents of ''/home/runner/work/AutoTDD/AutoTDD''
2021-05-23T12:56:01.9300718Z ##[group]Initializing the repository
2021-05-23T12:56:01.9303689Z [command]/usr/bin/git init /home/runner/work/AutoTDD/AutoTDD
2021-05-23T12:56:01.9378904Z hint: Using ''master'' as the name for the initial branch. This default branch name
2021-05-23T12:56:01.9379950Z hint: is subject to change. To configure the initial branch name to use in all
2021-05-23T12:56:01.9380930Z hint: of your new repositories, which will suppress this warning, call:
2021-05-23T12:56:01.9381638Z hint: 
2021-05-23T12:56:01.9382490Z hint: 	git config --global init.defaultBranch <name>
2021-05-23T12:56:01.9383180Z hint: 
2021-05-23T12:56:01.9385153Z hint: Names commonly chosen instead of ''master'' are ''main'', ''trunk'' and
2021-05-23T12:56:01.9386139Z hint: ''development''. The just-created branch can be renamed via this command:
2021-05-23T12:56:01.9386807Z hint: 
2021-05-23T12:56:01.9387410Z hint: 	git branch -m <name>
2021-05-23T12:56:01.9393675Z Initialized empty Git repository in /home/runner/work/AutoTDD/AutoTDD/.git/
2021-05-23T12:56:01.9403256Z [command]/usr/bin/git remote add origin https://github.com/hpi-swa-teaching/AutoTDD
2021-05-23T12:56:01.9452274Z ##[endgroup]
2021-05-23T12:56:01.9453122Z ##[group]Disabling automatic garbage collection
2021-05-23T12:56:01.9455976Z [command]/usr/bin/git config --local gc.auto 0
2021-05-23T12:56:01.9495598Z ##[endgroup]
2021-05-23T12:56:01.9499382Z ##[group]Setting up auth
2021-05-23T12:56:01.9504844Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2021-05-23T12:56:01.9539240Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp ''core\.sshCommand'' && git config --local --unset-all ''core.sshCommand'' || :
2021-05-23T12:56:01.9896035Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2021-05-23T12:56:01.9932682Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp ''http\.https\:\/\/github\.com\/\.extraheader'' && git config --local --unset-all ''http.https://github.com/.extraheader'' || :
2021-05-23T12:56:02.0126218Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2021-05-23T12:56:02.0168601Z ##[endgroup]
2021-05-23T12:56:02.0169342Z ##[group]Fetching the repository
2021-05-23T12:56:02.0176919Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --progress --no-recurse-submodules --depth=1 origin +415b531472fdaa5ba51412f757f055e1e11ac926:refs/remotes/pull/62/merge
2021-05-23T12:56:02.5074486Z remote: Enumerating objects: 1412, done.        
2021-05-23T12:56:02.5075221Z remote: Counting objects:   0% (1/1412)        
2021-05-23T12:56:02.5075798Z remote: Counting objects:   1% (15/1412)        
2021-05-23T12:56:02.5076395Z remote: Counting objects:   2% (29/1412)        
2021-05-23T12:56:02.5076969Z remote: Counting objects:   3% (43/1412)        
2021-05-23T12:56:02.5077545Z remote: Counting objects:   4% (57/1412)        
2021-05-23T12:56:02.5078266Z remote: Counting objects:   5% (71/1412)        
2021-05-23T12:56:02.5078854Z remote: Counting objects:   6% (85/1412)        
2021-05-23T12:56:02.5079432Z remote: Counting objects:   7% (99/1412)        
2021-05-23T12:56:02.5081484Z remote: Counting objects:   8% (113/1412)        
2021-05-23T12:56:02.5082010Z remote: Counting objects:   9% (128/1412)        
2021-05-23T12:56:02.5082498Z remote: Counting objects:  10% (142/1412)        
2021-05-23T12:56:02.5085985Z remote: Counting objects:  11% (156/1412)        
2021-05-23T12:56:02.5086660Z remote: Counting objects:  12% (170/1412)        
2021-05-23T12:56:02.5087139Z remote: Counting objects:  13% (184/1412)        
2021-05-23T12:56:02.5087724Z remote: Counting objects:  14% (198/1412)        
2021-05-23T12:56:02.5088311Z remote: Counting objects:  15% (212/1412)        
2021-05-23T12:56:02.5088876Z remote: Counting objects:  16% (226/1412)        
2021-05-23T12:56:02.5089519Z remote: Counting objects:  17% (241/1412)        
2021-05-23T12:56:02.5090186Z remote: Counting objects:  18% (255/1412)        
2021-05-23T12:56:02.5090772Z remote: Counting objects:  19% (269/1412)        
2021-05-23T12:56:02.5091351Z remote: Counting objects:  20% (283/1412)        
2021-05-23T12:56:02.5091914Z remote: Counting objects:  21% (297/1412)        
2021-05-23T12:56:02.5092493Z remote: Counting objects:  22% (311/1412)        
2021-05-23T12:56:02.5093085Z remote: Counting objects:  23% (325/1412)        
2021-05-23T12:56:02.5093647Z remote: Counting objects:  24% (339/1412)        
2021-05-23T12:56:02.5094231Z remote: Counting objects:  25% (353/1412)        
2021-05-23T12:56:02.5094794Z remote: Counting objects:  26% (368/1412)        
2021-05-23T12:56:02.5095576Z remote: Counting objects:  27% (382/1412)        
2021-05-23T12:56:02.5096285Z remote: Counting objects:  28% (396/1412)        
2021-05-23T12:56:02.5096855Z remote: Counting objects:  29% (410/1412)        
2021-05-23T12:56:02.5097440Z remote: Counting objects:  30% (424/1412)        
2021-05-23T12:56:02.5098015Z remote: Counting objects:  31% (438/1412)        
2021-05-23T12:56:02.5098593Z remote: Counting objects:  32% (452/1412)        
2021-05-23T12:56:02.5099173Z remote: Counting objects:  33% (466/1412)        
2021-05-23T12:56:02.5099734Z remote: Counting objects:  34% (481/1412)        
2021-05-23T12:56:02.5100313Z remote: Counting objects:  35% (495/1412)        
2021-05-23T12:56:02.5101052Z remote: Counting objects:  36% (509/1412)        
2021-05-23T12:56:02.5101622Z remote: Counting objects:  37% (523/1412)        
2021-05-23T12:56:02.5102200Z remote: Counting objects:  38% (537/1412)        
2021-05-23T12:56:02.5102770Z remote: Counting objects:  39% (551/1412)        
2021-05-23T12:56:02.5103350Z remote: Counting objects:  40% (565/1412)        
2021-05-23T12:56:02.5103928Z remote: Counting objects:  41% (579/1412)        
2021-05-23T12:56:02.5104494Z remote: Counting objects:  42% (594/1412)        
2021-05-23T12:56:02.5105070Z remote: Counting objects:  43% (608/1412)        
2021-05-23T12:56:02.5105641Z remote: Counting objects:  44% (622/1412)        
2021-05-23T12:56:02.5106218Z remote: Counting objects:  45% (636/1412)        
2021-05-23T12:56:02.5106794Z remote: Counting objects:  46% (650/1412)        
2021-05-23T12:56:02.5107357Z remote: Counting objects:  47% (664/1412)        
2021-05-23T12:56:02.5107934Z remote: Counting objects:  48% (678/1412)        
2021-05-23T12:56:02.5108504Z remote: Counting objects:  49% (692/1412)        
2021-05-23T12:56:02.5109077Z remote: Counting objects:  50% (706/1412)        
2021-05-23T12:56:02.5109653Z remote: Counting objects:  51% (721/1412)        
2021-05-23T12:56:02.5110210Z remote: Counting objects:  52% (735/1412)        
2021-05-23T12:56:02.5110787Z remote: Counting objects:  53% (749/1412)        
2021-05-23T12:56:02.5111362Z remote: Counting objects:  54% (763/1412)        
2021-05-23T12:56:02.5111923Z remote: Counting objects:  55% (777/1412)        
2021-05-23T12:56:02.5112495Z remote: Counting objects:  56% (791/1412)        
2021-05-23T12:56:02.5113130Z remote: Counting objects:  57% (805/1412)        
2021-05-23T12:56:02.5113729Z remote: Counting objects:  58% (819/1412)        
2021-05-23T12:56:02.5114305Z remote: Counting objects:  59% (834/1412)        
2021-05-23T12:56:02.5114865Z remote: Counting objects:  60% (848/1412)        
2021-05-23T12:56:02.5115446Z remote: Counting objects:  61% (862/1412)        
2021-05-23T12:56:02.5116272Z remote: Counting objects:  62% (876/1412)        
2021-05-23T12:56:02.5116833Z remote: Counting objects:  63% (890/1412)        
2021-05-23T12:56:02.5117407Z remote: Counting objects:  64% (904/1412)        
2021-05-23T12:56:02.5117980Z remote: Counting objects:  65% (918/1412)        
2021-05-23T12:56:02.5118543Z remote: Counting objects:  66% (932/1412)        
2021-05-23T12:56:02.5119117Z remote: Counting objects:  67% (947/1412)        
2021-05-23T12:56:02.5119800Z remote: Counting objects:  68% (961/1412)        
2021-05-23T12:56:02.5131126Z remote: Counting objects:  69% (975/1412)        
2021-05-23T12:56:02.5174119Z remote: Counting objects:  70% (989/1412)        
2021-05-23T12:56:02.5174820Z remote: Counting objects:  71% (1003/1412)        
2021-05-23T12:56:02.5175424Z remote: Counting objects:  72% (1017/1412)        
2021-05-23T12:56:02.5176008Z remote: Counting objects:  73% (1031/1412)        
2021-05-23T12:56:02.5176595Z remote: Counting objects:  74% (1045/1412)        
2021-05-23T12:56:02.5177193Z remote: Counting objects:  75% (1059/1412)        
2021-05-23T12:56:02.5177765Z remote: Counting objects:  76% (1074/1412)        
2021-05-23T12:56:02.5178346Z remote: Counting objects:  77% (1088/1412)        
2021-05-23T12:56:02.5178912Z remote: Counting objects:  78% (1102/1412)        
2021-05-23T12:56:02.5179495Z remote: Counting objects:  79% (1116/1412)        
2021-05-23T12:56:02.5180075Z remote: Counting objects:  80% (1130/1412)        
2021-05-23T12:56:02.5180642Z remote: Counting objects:  81% (1144/1412)        
2021-05-23T12:56:02.5181218Z remote: Counting objects:  82% (1158/1412)        
2021-05-23T12:56:02.5181803Z remote: Counting objects:  83% (1172/1412)        
2021-05-23T12:56:02.5182371Z remote: Counting objects:  84% (1187/1412)        
2021-05-23T12:56:02.5182951Z remote: Counting objects:  85% (1201/1412)        
2021-05-23T12:56:02.5183512Z remote: Counting objects:  86% (1215/1412)        
2021-05-23T12:56:02.5184090Z remote: Counting objects:  87% (1229/1412)        
2021-05-23T12:56:02.5184835Z remote: Counting objects:  88% (1243/1412)        
2021-05-23T12:56:02.5185403Z remote: Counting objects:  89% (1257/1412)        
2021-05-23T12:56:02.5185981Z remote: Counting objects:  90% (1271/1412)        
2021-05-23T12:56:02.5186547Z remote: Counting objects:  91% (1285/1412)        
2021-05-23T12:56:02.5187122Z remote: Counting objects:  92% (1300/1412)        
2021-05-23T12:56:02.5187697Z remote: Counting objects:  93% (1314/1412)        
2021-05-23T12:56:02.5188259Z remote: Counting objects:  94% (1328/1412)        
2021-05-23T12:56:02.5188833Z remote: Counting objects:  95% (1342/1412)        
2021-05-23T12:56:02.5189406Z remote: Counting objects:  96% (1356/1412)        
2021-05-23T12:56:02.5189985Z remote: Counting objects:  97% (1370/1412)        
2021-05-23T12:56:02.5190564Z remote: Counting objects:  98% (1384/1412)        
2021-05-23T12:56:02.5191128Z remote: Counting objects:  99% (1398/1412)        
2021-05-23T12:56:02.5191703Z remote: Counting objects: 100% (1412/1412)        
2021-05-23T12:56:02.5192304Z remote: Counting objects: 100% (1412/1412), done.        
2021-05-23T12:56:02.5192907Z remote: Compressing objects:   0% (1/1118)        
2021-05-23T12:56:02.5193524Z remote: Compressing objects:   1% (12/1118)        
2021-05-23T12:56:02.5194120Z remote: Compressing objects:   2% (23/1118)        
2021-05-23T12:56:02.5194732Z remote: Compressing objects:   3% (34/1118)        
2021-05-23T12:56:02.5195341Z remote: Compressing objects:   4% (45/1118)        
2021-05-23T12:56:02.5195937Z remote: Compressing objects:   5% (56/1118)        
2021-05-23T12:56:02.5196624Z remote: Compressing objects:   6% (68/1118)        
2021-05-23T12:56:02.5197250Z remote: Compressing objects:   7% (79/1118)        
2021-05-23T12:56:02.5197855Z remote: Compressing objects:   8% (90/1118)        
2021-05-23T12:56:02.5198468Z remote: Compressing objects:   9% (101/1118)        
2021-05-23T12:56:02.5199070Z remote: Compressing objects:  10% (112/1118)        
2021-05-23T12:56:02.5199821Z remote: Compressing objects:  11% (123/1118)        
2021-05-23T12:56:02.5200442Z remote: Compressing objects:  12% (135/1118)        
2021-05-23T12:56:02.5201047Z remote: Compressing objects:  13% (146/1118)        
2021-05-23T12:56:02.5201659Z remote: Compressing objects:  14% (157/1118)        
2021-05-23T12:56:02.5202254Z remote: Compressing objects:  15% (168/1118)        
2021-05-23T12:56:02.5202868Z remote: Compressing objects:  16% (179/1118)        
2021-05-23T12:56:02.5203484Z remote: Compressing objects:  17% (191/1118)        
2021-05-23T12:56:02.5204081Z remote: Compressing objects:  18% (202/1118)        
2021-05-23T12:56:02.5204700Z remote: Compressing objects:  19% (213/1118)        
2021-05-23T12:56:02.5205300Z remote: Compressing objects:  20% (224/1118)        
2021-05-23T12:56:02.5205915Z remote: Compressing objects:  21% (235/1118)        
2021-05-23T12:56:02.5206525Z remote: Compressing objects:  22% (246/1118)        
2021-05-23T12:56:02.5207119Z remote: Compressing objects:  23% (258/1118)        
2021-05-23T12:56:02.5207735Z remote: Compressing objects:  24% (269/1118)        
2021-05-23T12:56:02.5208349Z remote: Compressing objects:  25% (280/1118)        
2021-05-23T12:56:02.5208945Z remote: Compressing objects:  26% (291/1118)        
2021-05-23T12:56:02.5209550Z remote: Compressing objects:  27% (302/1118)        
2021-05-23T12:56:02.5210145Z remote: Compressing objects:  28% (314/1118)        
2021-05-23T12:56:02.5210755Z remote: Compressing objects:  29% (325/1118)        
2021-05-23T12:56:02.5211369Z remote: Compressing objects:  30% (336/1118)        
2021-05-23T12:56:02.5211978Z remote: Compressing objects:  31% (347/1118)        
2021-05-23T12:56:02.5212587Z remote: Compressing objects:  32% (358/1118)        
2021-05-23T12:56:02.5213186Z remote: Compressing objects:  33% (369/1118)        
2021-05-23T12:56:02.5214044Z remote: Compressing objects:  34% (381/1118)        
2021-05-23T12:56:02.5214667Z remote: Compressing objects:  35% (392/1118)        
2021-05-23T12:56:02.5215374Z remote: Compressing objects:  36% (403/1118)        
2021-05-23T12:56:02.5215991Z remote: Compressing objects:  37% (414/1118)        
2021-05-23T12:56:02.5216599Z remote: Compressing objects:  38% (425/1118)        
2021-05-23T12:56:02.5217194Z remote: Compressing objects:  39% (437/1118)        
2021-05-23T12:56:02.5217806Z remote: Compressing objects:  40% (448/1118)        
2021-05-23T12:56:02.5218401Z remote: Compressing objects:  41% (459/1118)        
2021-05-23T12:56:02.5219012Z remote: Compressing objects:  42% (470/1118)        
2021-05-23T12:56:02.5219624Z remote: Compressing objects:  43% (481/1118)        
2021-05-23T12:56:02.5220226Z remote: Compressing objects:  44% (492/1118)        
2021-05-23T12:56:02.5220838Z remote: Compressing objects:  45% (504/1118)        
2021-05-23T12:56:02.5221434Z remote: Compressing objects:  46% (515/1118)        
2021-05-23T12:56:02.5222044Z remote: Compressing objects:  47% (526/1118)        
2021-05-23T12:56:02.5222652Z remote: Compressing objects:  48% (537/1118)        
2021-05-23T12:56:02.5223256Z remote: Compressing objects:  49% (548/1118)        
2021-05-23T12:56:02.5223867Z remote: Compressing objects:  50% (559/1118)        
2021-05-23T12:56:02.5224473Z remote: Compressing objects:  51% (571/1118)        
2021-05-23T12:56:02.5225071Z remote: Compressing objects:  52% (582/1118)        
2021-05-23T12:56:02.5225679Z remote: Compressing objects:  53% (593/1118)        
2021-05-23T12:56:02.5226274Z remote: Compressing objects:  54% (604/1118)        
2021-05-23T12:56:02.5226884Z remote: Compressing objects:  55% (615/1118)        
2021-05-23T12:56:02.5227553Z remote: Compressing objects:  56% (627/1118)        
2021-05-23T12:56:02.5228164Z remote: Compressing objects:  57% (638/1118)        
2021-05-23T12:56:02.5228774Z remote: Compressing objects:  58% (649/1118)        
2021-05-23T12:56:02.5229370Z remote: Compressing objects:  59% (660/1118)        
2021-05-23T12:56:02.5229976Z remote: Compressing objects:  60% (671/1118)        
2021-05-23T12:56:02.5230592Z remote: Compressing objects:  61% (682/1118)        
2021-05-23T12:56:02.5231183Z remote: Compressing objects:  62% (694/1118)        
2021-05-23T12:56:02.5231787Z remote: Compressing objects:  63% (705/1118)        
2021-05-23T12:56:02.5232379Z remote: Compressing objects:  64% (716/1118)        
2021-05-23T12:56:02.5232988Z remote: Compressing objects:  65% (727/1118)        
2021-05-23T12:56:02.5233596Z remote: Compressing objects:  66% (738/1118)        
2021-05-23T12:56:02.5234191Z remote: Compressing objects:  67% (750/1118)        
2021-05-23T12:56:02.5234804Z remote: Compressing objects:  68% (761/1118)        
2021-05-23T12:56:02.5235424Z remote: Compressing objects:  69% (772/1118)        
2021-05-23T12:56:02.5236021Z remote: Compressing objects:  70% (783/1118)        
2021-05-23T12:56:02.5236630Z remote: Compressing objects:  71% (794/1118)        
2021-05-23T12:56:02.5237223Z remote: Compressing objects:  72% (805/1118)        
2021-05-23T12:56:02.5237837Z remote: Compressing objects:  73% (817/1118)        
2021-05-23T12:56:02.5238458Z remote: Compressing objects:  74% (828/1118)        
2021-05-23T12:56:02.5239054Z remote: Compressing objects:  75% (839/1118)        
2021-05-23T12:56:02.5239790Z remote: Compressing objects:  76% (850/1118)        
2021-05-23T12:56:02.5240401Z remote: Compressing objects:  77% (861/1118)        
2021-05-23T12:56:02.5241019Z remote: Compressing objects:  78% (873/1118)        
2021-05-23T12:56:02.5241633Z remote: Compressing objects:  79% (884/1118)        
2021-05-23T12:56:02.5242225Z remote: Compressing objects:  80% (895/1118)        
2021-05-23T12:56:02.5242844Z remote: Compressing objects:  81% (906/1118)        
2021-05-23T12:56:02.5243453Z remote: Compressing objects:  82% (917/1118)        
2021-05-23T12:56:02.5244078Z remote: Compressing objects:  83% (928/1118)        
2021-05-23T12:56:02.5244688Z remote: Compressing objects:  84% (940/1118)        
2021-05-23T12:56:02.5245288Z remote: Compressing objects:  85% (951/1118)        
2021-05-23T12:56:02.5245990Z remote: Compressing objects:  86% (962/1118)        
2021-05-23T12:56:02.5246598Z remote: Compressing objects:  87% (973/1118)        
2021-05-23T12:56:02.5247202Z remote: Compressing objects:  88% (984/1118)        
2021-05-23T12:56:02.5247816Z remote: Compressing objects:  89% (996/1118)        
2021-05-23T12:56:02.5248415Z remote: Compressing objects:  90% (1007/1118)        
2021-05-23T12:56:02.5249028Z remote: Compressing objects:  91% (1018/1118)        
2021-05-23T12:56:02.5249639Z remote: Compressing objects:  92% (1029/1118)        
2021-05-23T12:56:02.5250240Z remote: Compressing objects:  93% (1040/1118)        
2021-05-23T12:56:02.5250890Z remote: Compressing objects:  94% (1051/1118)        
2021-05-23T12:56:02.5251491Z remote: Compressing objects:  95% (1063/1118)        
2021-05-23T12:56:02.5252134Z remote: Compressing objects:  96% (1074/1118)        
2021-05-23T12:56:02.5252738Z remote: Compressing objects:  97% (1085/1118)        
2021-05-23T12:56:02.5253349Z remote: Compressing objects:  98% (1096/1118)        
2021-05-23T12:56:02.5253954Z remote: Compressing objects:  99% (1107/1118)        
2021-05-23T12:56:02.5254565Z remote: Compressing objects: 100% (1118/1118)        
2021-05-23T12:56:02.5255194Z remote: Compressing objects: 100% (1118/1118), done.        
2021-05-23T12:56:02.5255769Z Receiving objects:   0% (1/1412)
2021-05-23T12:56:02.5256308Z Receiving objects:   1% (15/1412)
2021-05-23T12:56:02.5256840Z Receiving objects:   2% (29/1412)
2021-05-23T12:56:02.5257358Z Receiving objects:   3% (43/1412)
2021-05-23T12:56:02.5257889Z Receiving objects:   4% (57/1412)
2021-05-23T12:56:02.5258493Z Receiving objects:   5% (71/1412)
2021-05-23T12:56:02.5259050Z Receiving objects:   6% (85/1412)
2021-05-23T12:56:02.5259584Z Receiving objects:   7% (99/1412)
2021-05-23T12:56:02.5260100Z Receiving objects:   8% (113/1412)
2021-05-23T12:56:02.5260636Z Receiving objects:   9% (128/1412)
2021-05-23T12:56:02.5261160Z Receiving objects:  10% (142/1412)
2021-05-23T12:56:02.5261692Z Receiving objects:  11% (156/1412)
2021-05-23T12:56:02.5262234Z Receiving objects:  12% (170/1412)
2021-05-23T12:56:02.5262756Z Receiving objects:  13% (184/1412)
2021-05-23T12:56:02.5263292Z Receiving objects:  14% (198/1412)
2021-05-23T12:56:02.5263814Z Receiving objects:  15% (212/1412)
2021-05-23T12:56:02.5264347Z Receiving objects:  16% (226/1412)
2021-05-23T12:56:02.5264882Z Receiving objects:  17% (241/1412)
2021-05-23T12:56:02.5265407Z Receiving objects:  18% (255/1412)
2021-05-23T12:56:02.5265944Z Receiving objects:  19% (269/1412)
2021-05-23T12:56:02.5266462Z Receiving objects:  20% (283/1412)
2021-05-23T12:56:02.5267002Z Receiving objects:  21% (297/1412)
2021-05-23T12:56:02.5267532Z Receiving objects:  22% (311/1412)
2021-05-23T12:56:02.5268050Z Receiving objects:  23% (325/1412)
2021-05-23T12:56:02.5268578Z Receiving objects:  24% (339/1412)
2021-05-23T12:56:02.5269099Z Receiving objects:  25% (353/1412)
2021-05-23T12:56:02.5269633Z Receiving objects:  26% (368/1412)
2021-05-23T12:56:02.5270161Z Receiving objects:  27% (382/1412)
2021-05-23T12:56:02.5270686Z Receiving objects:  28% (396/1412)
2021-05-23T12:56:02.5271217Z Receiving objects:  29% (410/1412)
2021-05-23T12:56:02.5271736Z Receiving objects:  30% (424/1412)
2021-05-23T12:56:02.5272268Z Receiving objects:  31% (438/1412)
2021-05-23T12:56:02.5272796Z Receiving objects:  32% (452/1412)
2021-05-23T12:56:02.5273315Z Receiving objects:  33% (466/1412)
2021-05-23T12:56:02.5273848Z Receiving objects:  34% (481/1412)
2021-05-23T12:56:02.5274469Z Receiving objects:  35% (495/1412)
2021-05-23T12:56:02.5274987Z Receiving objects:  36% (509/1412)
2021-05-23T12:56:02.5275510Z Receiving objects:  37% (523/1412)
2021-05-23T12:56:02.5276018Z Receiving objects:  38% (537/1412)
2021-05-23T12:56:02.5276533Z Receiving objects:  39% (551/1412)
2021-05-23T12:56:02.5277041Z Receiving objects:  40% (565/1412)
2021-05-23T12:56:02.5277559Z Receiving objects:  41% (579/1412)
2021-05-23T12:56:02.5278077Z Receiving objects:  42% (594/1412)
2021-05-23T12:56:02.5278582Z Receiving objects:  43% (608/1412)
2021-05-23T12:56:02.5279178Z Receiving objects:  44% (622/1412)
2021-05-23T12:56:02.5279822Z Receiving objects:  45% (636/1412)
2021-05-23T12:56:02.5280353Z Receiving objects:  46% (650/1412)
2021-05-23T12:56:02.5280873Z Receiving objects:  47% (664/1412)
2021-05-23T12:56:02.5281377Z Receiving objects:  48% (678/1412)
2021-05-23T12:56:02.5281900Z Receiving objects:  49% (692/1412)
2021-05-23T12:56:02.5282407Z Receiving objects:  50% (706/1412)
2021-05-23T12:56:02.5282925Z Receiving objects:  51% (721/1412)
2021-05-23T12:56:02.5283445Z Receiving objects:  52% (735/1412)
2021-05-23T12:56:02.5283963Z Receiving objects:  53% (749/1412)
2021-05-23T12:56:02.5284486Z Receiving objects:  54% (763/1412)
2021-05-23T12:56:02.5284997Z Receiving objects:  55% (777/1412)
2021-05-23T12:56:02.5285516Z Receiving objects:  56% (791/1412)
2021-05-23T12:56:02.5286207Z Receiving objects:  57% (805/1412)
2021-05-23T12:56:02.5286728Z Receiving objects:  58% (819/1412)
2021-05-23T12:56:02.5287262Z Receiving objects:  59% (834/1412)
2021-05-23T12:56:02.5287789Z Receiving objects:  60% (848/1412)
2021-05-23T12:56:02.5288322Z Receiving objects:  61% (862/1412)
2021-05-23T12:56:02.5288854Z Receiving objects:  62% (876/1412)
2021-05-23T12:56:02.5289370Z Receiving objects:  63% (890/1412)
2021-05-23T12:56:02.5290172Z Receiving objects:  64% (904/1412)
2021-05-23T12:56:02.5290693Z Receiving objects:  65% (918/1412)
2021-05-23T12:56:02.5291227Z Receiving objects:  66% (932/1412)
2021-05-23T12:56:02.5291764Z Receiving objects:  67% (947/1412)
2021-05-23T12:56:02.5292280Z Receiving objects:  68% (961/1412)
2021-05-23T12:56:02.5292884Z Receiving objects:  69% (975/1412)
2021-05-23T12:56:02.5293420Z Receiving objects:  70% (989/1412)
2021-05-23T12:56:02.5293958Z Receiving objects:  71% (1003/1412)
2021-05-23T12:56:02.5294497Z Receiving objects:  72% (1017/1412)
2021-05-23T12:56:02.5295018Z Receiving objects:  73% (1031/1412)
2021-05-23T12:56:02.5295556Z Receiving objects:  74% (1045/1412)
2021-05-23T12:56:02.5296083Z Receiving objects:  75% (1059/1412)
2021-05-23T12:56:02.5296632Z Receiving objects:  76% (1074/1412)
2021-05-23T12:56:02.5297174Z Receiving objects:  77% (1088/1412)
2021-05-23T12:56:02.5297700Z Receiving objects:  78% (1102/1412)
2021-05-23T12:56:02.5298240Z Receiving objects:  79% (1116/1412)
2021-05-23T12:56:02.5298761Z Receiving objects:  80% (1130/1412)
2021-05-23T12:56:02.5299297Z Receiving objects:  81% (1144/1412)
2021-05-23T12:56:02.5299833Z Receiving objects:  82% (1158/1412)
2021-05-23T12:56:02.5300355Z Receiving objects:  83% (1172/1412)
2021-05-23T12:56:02.5300887Z Receiving objects:  84% (1187/1412)
2021-05-23T12:56:02.5301418Z Receiving objects:  85% (1201/1412)
2021-05-23T12:56:02.5301955Z Receiving objects:  86% (1215/1412)
2021-05-23T12:56:02.5302488Z Receiving objects:  87% (1229/1412)
2021-05-23T12:56:02.5303012Z Receiving objects:  88% (1243/1412)
2021-05-23T12:56:02.5303546Z Receiving objects:  89% (1257/1412)
2021-05-23T12:56:02.5304068Z Receiving objects:  90% (1271/1412)
2021-05-23T12:56:02.5304610Z Receiving objects:  91% (1285/1412)
2021-05-23T12:56:02.5305142Z Receiving objects:  92% (1300/1412)
2021-05-23T12:56:02.5305662Z Receiving objects:  93% (1314/1412)
2021-05-23T12:56:02.5306200Z Receiving objects:  94% (1328/1412)
2021-05-23T12:56:02.5306725Z Receiving objects:  95% (1342/1412)
2021-05-23T12:56:02.5307262Z Receiving objects:  96% (1356/1412)
2021-05-23T12:56:02.5307802Z Receiving objects:  97% (1370/1412)
2021-05-23T12:56:02.5308326Z Receiving objects:  98% (1384/1412)
2021-05-23T12:56:02.5308863Z Receiving objects:  99% (1398/1412)
2021-05-23T12:56:02.5310018Z remote: Total 1412 (delta 211), reused 973 (delta 97), pack-reused 0        
2021-05-23T12:56:02.5310675Z Receiving objects: 100% (1412/1412)
2021-05-23T12:56:02.5311272Z Receiving objects: 100% (1412/1412), 278.59 KiB | 6.48 MiB/s, done.
2021-05-23T12:56:02.5311839Z Resolving deltas:   0% (0/211)
2021-05-23T12:56:02.5312364Z Resolving deltas:   1% (3/211)
2021-05-23T12:56:02.5312882Z Resolving deltas:   2% (5/211)
2021-05-23T12:56:02.5313503Z Resolving deltas:   3% (7/211)
2021-05-23T12:56:02.5314023Z Resolving deltas:   4% (9/211)
2021-05-23T12:56:02.5314532Z Resolving deltas:   5% (11/211)
2021-05-23T12:56:02.5315057Z Resolving deltas:   6% (13/211)
2021-05-23T12:56:02.5315579Z Resolving deltas:   7% (15/211)
2021-05-23T12:56:02.5316090Z Resolving deltas:   8% (17/211)
2021-05-23T12:56:02.5316616Z Resolving deltas:   9% (19/211)
2021-05-23T12:56:02.5317127Z Resolving deltas:  10% (22/211)
2021-05-23T12:56:02.5317654Z Resolving deltas:  11% (24/211)
2021-05-23T12:56:02.5318174Z Resolving deltas:  12% (26/211)
2021-05-23T12:56:02.5318687Z Resolving deltas:  13% (28/211)
2021-05-23T12:56:02.5319210Z Resolving deltas:  14% (30/211)
2021-05-23T12:56:02.5319844Z Resolving deltas:  15% (32/211)
2021-05-23T12:56:02.5320367Z Resolving deltas:  16% (34/211)
2021-05-23T12:56:02.5320884Z Resolving deltas:  17% (36/211)
2021-05-23T12:56:02.5321393Z Resolving deltas:  18% (38/211)
2021-05-23T12:56:02.5321914Z Resolving deltas:  19% (41/211)
2021-05-23T12:56:02.5322432Z Resolving deltas:  20% (43/211)
2021-05-23T12:56:02.5322954Z Resolving deltas:  21% (45/211)
2021-05-23T12:56:02.5323474Z Resolving deltas:  22% (47/211)
2021-05-23T12:56:02.5323986Z Resolving deltas:  23% (49/211)
2021-05-23T12:56:02.5324508Z Resolving deltas:  24% (51/211)
2021-05-23T12:56:02.5325012Z Resolving deltas:  25% (53/211)
2021-05-23T12:56:02.5325535Z Resolving deltas:  26% (55/211)
2021-05-23T12:56:02.5326057Z Resolving deltas:  27% (57/211)
2021-05-23T12:56:02.5326563Z Resolving deltas:  28% (60/211)
2021-05-23T12:56:02.5327084Z Resolving deltas:  29% (62/211)
2021-05-23T12:56:02.5327670Z Resolving deltas:  30% (64/211)
2021-05-23T12:56:02.5328210Z Resolving deltas:  31% (66/211)
2021-05-23T12:56:02.5328730Z Resolving deltas:  32% (68/211)
2021-05-23T12:56:02.5329238Z Resolving deltas:  33% (70/211)
2021-05-23T12:56:02.5329761Z Resolving deltas:  34% (72/211)
2021-05-23T12:56:02.5330269Z Resolving deltas:  35% (74/211)
2021-05-23T12:56:02.5330792Z Resolving deltas:  36% (76/211)
2021-05-23T12:56:02.5331321Z Resolving deltas:  37% (79/211)
2021-05-23T12:56:02.5331827Z Resolving deltas:  38% (81/211)
2021-05-23T12:56:02.5332351Z Resolving deltas:  39% (83/211)
2021-05-23T12:56:02.5332863Z Resolving deltas:  40% (85/211)
2021-05-23T12:56:02.5333382Z Resolving deltas:  41% (87/211)
2021-05-23T12:56:02.5333903Z Resolving deltas:  42% (89/211)
2021-05-23T12:56:02.5334410Z Resolving deltas:  43% (91/211)
2021-05-23T12:56:02.5334930Z Resolving deltas:  44% (93/211)
2021-05-23T12:56:02.5335438Z Resolving deltas:  45% (95/211)
2021-05-23T12:56:02.5335961Z Resolving deltas:  46% (98/211)
2021-05-23T12:56:02.5336489Z Resolving deltas:  47% (100/211)
2021-05-23T12:56:02.5337001Z Resolving deltas:  48% (102/211)
2021-05-23T12:56:02.5337525Z Resolving deltas:  49% (104/211)
2021-05-23T12:56:02.5338037Z Resolving deltas:  50% (106/211)
2021-05-23T12:56:02.5338570Z Resolving deltas:  51% (108/211)
2021-05-23T12:56:02.5339100Z Resolving deltas:  52% (110/211)
2021-05-23T12:56:02.5339624Z Resolving deltas:  53% (112/211)
2021-05-23T12:56:02.5340155Z Resolving deltas:  54% (114/211)
2021-05-23T12:56:02.5340669Z Resolving deltas:  55% (117/211)
2021-05-23T12:56:02.5341195Z Resolving deltas:  56% (119/211)
2021-05-23T12:56:02.5341722Z Resolving deltas:  57% (121/211)
2021-05-23T12:56:02.5342237Z Resolving deltas:  58% (123/211)
2021-05-23T12:56:02.5342761Z Resolving deltas:  59% (125/211)
2021-05-23T12:56:02.5343279Z Resolving deltas:  60% (127/211)
2021-05-23T12:56:02.5343806Z Resolving deltas:  61% (129/211)
2021-05-23T12:56:02.5344337Z Resolving deltas:  62% (131/211)
2021-05-23T12:56:02.5344861Z Resolving deltas:  63% (133/211)
2021-05-23T12:56:02.5345386Z Resolving deltas:  64% (136/211)
2021-05-23T12:56:02.5345898Z Resolving deltas:  65% (138/211)
2021-05-23T12:56:02.5346427Z Resolving deltas:  66% (140/211)
2021-05-23T12:56:02.5346953Z Resolving deltas:  67% (142/211)
2021-05-23T12:56:02.5347493Z Resolving deltas:  68% (144/211)
2021-05-23T12:56:02.5348016Z Resolving deltas:  69% (146/211)
2021-05-23T12:56:02.5348625Z Resolving deltas:  70% (148/211)
2021-05-23T12:56:02.5349155Z Resolving deltas:  71% (150/211)
2021-05-23T12:56:02.5349666Z Resolving deltas:  72% (152/211)
2021-05-23T12:56:02.5350194Z Resolving deltas:  73% (155/211)
2021-05-23T12:56:02.5350746Z Resolving deltas:  74% (157/211)
2021-05-23T12:56:02.5351261Z Resolving deltas:  75% (159/211)
2021-05-23T12:56:02.5351787Z Resolving deltas:  76% (161/211)
2021-05-23T12:56:02.5352297Z Resolving deltas:  77% (163/211)
2021-05-23T12:56:02.5352826Z Resolving deltas:  78% (165/211)
2021-05-23T12:56:02.5353353Z Resolving deltas:  79% (167/211)
2021-05-23T12:56:02.5353873Z Resolving deltas:  80% (169/211)
2021-05-23T12:56:02.5354335Z Resolving deltas:  81% (171/211)
2021-05-23T12:56:02.5354758Z Resolving deltas:  82% (174/211)
2021-05-23T12:56:02.5355285Z Resolving deltas:  83% (176/211)
2021-05-23T12:56:02.5355814Z Resolving deltas:  84% (178/211)
2021-05-23T12:56:02.5356364Z Resolving deltas:  85% (180/211)
2021-05-23T12:56:02.5356896Z Resolving deltas:  86% (182/211)
2021-05-23T12:56:02.5357415Z Resolving deltas:  87% (184/211)
2021-05-23T12:56:02.5357941Z Resolving deltas:  88% (186/211)
2021-05-23T12:56:02.5358467Z Resolving deltas:  89% (188/211)
2021-05-23T12:56:02.5358975Z Resolving deltas:  90% (190/211)
2021-05-23T12:56:02.5359596Z Resolving deltas:  91% (193/211)
2021-05-23T12:56:02.5360118Z Resolving deltas:  92% (195/211)
2021-05-23T12:56:02.5360641Z Resolving deltas:  93% (197/211)
2021-05-23T12:56:02.5361171Z Resolving deltas:  94% (199/211)
2021-05-23T12:56:02.5361682Z Resolving deltas:  95% (201/211)
2021-05-23T12:56:02.5362206Z Resolving deltas:  96% (203/211)
2021-05-23T12:56:02.5362794Z Resolving deltas:  97% (205/211)
2021-05-23T12:56:02.5363334Z Resolving deltas:  98% (207/211)
2021-05-23T12:56:02.5363860Z Resolving deltas:  99% (209/211)
2021-05-23T12:56:02.5364373Z Resolving deltas: 100% (211/211)
2021-05-23T12:56:02.5364916Z Resolving deltas: 100% (211/211), done.
2021-05-23T12:56:02.5365928Z From https://github.com/hpi-swa-teaching/AutoTDD
2021-05-23T12:56:02.5366980Z  * [new ref]         415b531472fdaa5ba51412f757f055e1e11ac926 -> pull/62/merge
2021-05-23T12:56:02.5367753Z ##[endgroup]
2021-05-23T12:56:02.5368319Z ##[group]Determining the checkout info
2021-05-23T12:56:02.5368883Z ##[endgroup]
2021-05-23T12:56:02.5369402Z ##[group]Checking out the ref
2021-05-23T12:56:02.5370251Z [command]/usr/bin/git checkout --progress --force refs/remotes/pull/62/merge
2021-05-23T12:56:02.5371143Z Note: switching to ''refs/remotes/pull/62/merge''.
2021-05-23T12:56:02.5371577Z 
2021-05-23T12:56:02.5372341Z You are in ''detached HEAD'' state. You can look around, make experimental
2021-05-23T12:56:02.5373130Z changes and commit them, and you can discard any commits you make in this
2021-05-23T12:56:02.5373873Z state without impacting any branches by switching back to a branch.
2021-05-23T12:56:02.5374346Z 
2021-05-23T12:56:02.5374922Z If you want to create a new branch to retain commits you create, you may
2021-05-23T12:56:02.5375808Z do so (now or later) by using -c with the switch command. Example:
2021-05-23T12:56:02.5376264Z 
2021-05-23T12:56:02.5376904Z   git switch -c <new-branch-name>
2021-05-23T12:56:02.5377309Z 
2021-05-23T12:56:02.5377773Z Or undo this operation with:
2021-05-23T12:56:02.5378146Z 
2021-05-23T12:56:02.5378691Z   git switch -
2021-05-23T12:56:02.5379029Z 
2021-05-23T12:56:02.5379664Z Turn off this advice by setting config variable advice.detachedHead to false
2021-05-23T12:56:02.5380194Z 
2021-05-23T12:56:02.5381027Z HEAD is now at 415b531 Merge dc6c473f47063ba74f1422634bddcd7414cac3fe into a494b197266a04d59fcbcbc3d6dcba2a184cf366
2021-05-23T12:56:02.5381915Z ##[endgroup]
2021-05-23T12:56:02.5382601Z [command]/usr/bin/git log -1 --format=''%H''
2021-05-23T12:56:02.5383415Z ''415b531472fdaa5ba51412f757f055e1e11ac926''
2021-05-23T12:56:02.5484183Z ##[group]Run hpi-swa/setup-smalltalkCI@v1
2021-05-23T12:56:02.5484668Z with:
2021-05-23T12:56:02.5485113Z   smalltalk-image: Squeak64-trunk
2021-05-23T12:56:02.5485687Z   smalltalkCI-source: hpi-swa/smalltalkCI
2021-05-23T12:56:02.5486340Z   smalltalkCI-branch: master
2021-05-23T12:56:02.5486777Z ##[endgroup]
2021-05-23T12:56:03.2893419Z Downloading and extracting smalltalkCI...
2021-05-23T12:56:03.2896176Z [command]/usr/bin/tar xz --warning=no-unknown-keyword -C /home/runner/.smalltalkCI-temp -f /home/runner/work/_temp/8ddf7305-8457-4409-a162-c79baeebd4b7
2021-05-23T12:56:03.2897474Z [command]/usr/bin/sudo apt-get update
2021-05-23T12:56:03.2898437Z Hit:1 http://azure.archive.ubuntu.com/ubuntu focal InRelease
2021-05-23T12:56:03.2899812Z Get:2 http://azure.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
2021-05-23T12:56:03.2901211Z Get:3 http://azure.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
2021-05-23T12:56:03.2902468Z Get:4 https://packages.microsoft.com/ubuntu/20.04/prod focal InRelease [10.5 kB]
2021-05-23T12:56:03.2903946Z Hit:5 https://download.mono-project.com/repo/ubuntu stable-focal InRelease
2021-05-23T12:56:03.2946520Z Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
2021-05-23T12:56:03.3726674Z Get:7 http://azure.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [988 kB]
2021-05-23T12:56:03.3957352Z Get:8 http://azure.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [224 kB]
2021-05-23T12:56:03.3977844Z Get:9 http://azure.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [13.4 kB]
2021-05-23T12:56:03.3983585Z Get:10 http://azure.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [226 kB]
2021-05-23T12:56:03.3997453Z Get:11 http://azure.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 c-n-f Metadata [436 B]
2021-05-23T12:56:03.4000115Z Get:12 http://azure.archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [777 kB]
2021-05-23T12:56:03.4060970Z Get:13 http://azure.archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [167 kB]
2021-05-23T12:56:03.4074478Z Get:14 http://azure.archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [17.5 kB]
2021-05-23T12:56:03.4077315Z Get:15 http://azure.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [21.7 kB]
2021-05-23T12:56:03.4081707Z Get:16 http://azure.archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [5564 B]
2021-05-23T12:56:03.4084278Z Get:17 http://azure.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [604 B]
2021-05-23T12:56:03.4367370Z Hit:18 http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu focal InRelease
2021-05-23T12:56:03.5843724Z Get:19 https://packages.microsoft.com/ubuntu/20.04/prod focal/main amd64 Packages [73.7 kB]
2021-05-23T12:56:03.9547263Z Get:20 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [664 kB]
2021-05-23T12:56:04.2411670Z Get:21 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [134 kB]
2021-05-23T12:56:04.2504901Z Get:22 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [7668 B]
2021-05-23T12:56:04.2513825Z Get:23 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [207 kB]
2021-05-23T12:56:04.2644004Z Get:24 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [30.7 kB]
2021-05-23T12:56:04.2674641Z Get:25 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 c-n-f Metadata [440 B]
2021-05-23T12:56:04.2677609Z Get:26 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [578 kB]
2021-05-23T12:56:04.3263025Z Get:27 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [90.1 kB]
2021-05-23T12:56:04.3314551Z Get:28 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [11.3 kB]
2021-05-23T12:56:04.3329419Z Get:29 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [19.9 kB]
2021-05-23T12:56:04.3341413Z Get:30 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [4316 B]
2021-05-23T12:56:04.3348270Z Get:31 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [528 B]
2021-05-23T12:56:07.9367389Z Fetched 4601 kB in 1s (3375 kB/s)
2021-05-23T12:56:08.5780159Z Reading package lists...
2021-05-23T12:56:08.5956255Z [command]/usr/bin/sudo apt-get install -qq --no-install-recommends libpulse0
2021-05-23T12:56:09.3481626Z Selecting previously unselected package libasyncns0:amd64.
2021-05-23T12:56:09.3639284Z (Reading database ... 
2021-05-23T12:56:09.3640837Z (Reading database ... 5%
2021-05-23T12:56:09.3641974Z (Reading database ... 10%
2021-05-23T12:56:09.3642966Z (Reading database ... 15%
2021-05-23T12:56:09.3644004Z (Reading database ... 20%
2021-05-23T12:56:09.3644846Z (Reading database ... 25%
2021-05-23T12:56:09.3645717Z (Reading database ... 30%
2021-05-23T12:56:09.3646559Z (Reading database ... 35%
2021-05-23T12:56:09.3647345Z (Reading database ... 40%
2021-05-23T12:56:09.3648335Z (Reading database ... 45%
2021-05-23T12:56:09.3649188Z (Reading database ... 50%
2021-05-23T12:56:09.4055510Z (Reading database ... 55%
2021-05-23T12:56:09.4220464Z (Reading database ... 60%
2021-05-23T12:56:09.4516898Z (Reading database ... 65%
2021-05-23T12:56:09.4856653Z (Reading database ... 70%
2021-05-23T12:56:09.5253479Z (Reading database ... 75%
2021-05-23T12:56:09.5901940Z (Reading database ... 80%
2021-05-23T12:56:09.6329140Z (Reading database ... 85%
2021-05-23T12:56:09.6880739Z (Reading database ... 90%
2021-05-23T12:56:09.7824237Z (Reading database ... 95%
2021-05-23T12:56:09.7825823Z (Reading database ... 100%
2021-05-23T12:56:09.7827528Z (Reading database ... 228858 files and directories currently installed.)
2021-05-23T12:56:09.7901752Z Preparing to unpack .../libasyncns0_0.8-6_amd64.deb ...
2021-05-23T12:56:09.7977011Z Unpacking libasyncns0:amd64 (0.8-6) ...
2021-05-23T12:56:09.8241180Z Selecting previously unselected package libflac8:amd64.
2021-05-23T12:56:09.8402807Z Preparing to unpack .../libflac8_1.3.3-1build1_amd64.deb ...
2021-05-23T12:56:09.8416978Z Unpacking libflac8:amd64 (1.3.3-1build1) ...
2021-05-23T12:56:09.8721272Z Selecting previously unselected package libvorbisenc2:amd64.
2021-05-23T12:56:09.8879296Z Preparing to unpack .../libvorbisenc2_1.3.6-2ubuntu1_amd64.deb ...
2021-05-23T12:56:09.8890476Z Unpacking libvorbisenc2:amd64 (1.3.6-2ubuntu1) ...
2021-05-23T12:56:09.9201274Z Selecting previously unselected package libsndfile1:amd64.
2021-05-23T12:56:09.9358588Z Preparing to unpack .../libsndfile1_1.0.28-7_amd64.deb ...
2021-05-23T12:56:09.9370437Z Unpacking libsndfile1:amd64 (1.0.28-7) ...
2021-05-23T12:56:09.9801076Z Selecting previously unselected package libpulse0:amd64.
2021-05-23T12:56:09.9949971Z Preparing to unpack .../libpulse0_1%3a13.99.1-1ubuntu3.10_amd64.deb ...
2021-05-23T12:56:10.0017213Z Unpacking libpulse0:amd64 (1:13.99.1-1ubuntu3.10) ...
2021-05-23T12:56:10.0652480Z Setting up libflac8:amd64 (1.3.3-1build1) ...
2021-05-23T12:56:10.0684406Z Setting up libasyncns0:amd64 (0.8-6) ...
2021-05-23T12:56:10.0731149Z Setting up libvorbisenc2:amd64 (1.3.6-2ubuntu1) ...
2021-05-23T12:56:10.0770192Z Setting up libsndfile1:amd64 (1.0.28-7) ...
2021-05-23T12:56:10.0797775Z Setting up libpulse0:amd64 (1:13.99.1-1ubuntu3.10) ...
2021-05-23T12:56:10.0882832Z Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
2021-05-23T12:56:12.3612246Z ##[group]Run smalltalkci -s Squeak64-trunk
2021-05-23T12:56:12.3612824Z [36;1msmalltalkci -s Squeak64-trunk[0m
2021-05-23T12:56:12.3649462Z shell: /usr/bin/bash -e {0}
2021-05-23T12:56:12.3649793Z env:
2021-05-23T12:56:12.3650171Z   SMALLTALK_CI_HOME: /home/runner/.smalltalkCI
2021-05-23T12:56:12.3650693Z   SMALLTALK_CI_VM: /home/runner/.smalltalkCI/_builds/vm
2021-05-23T12:56:12.3651232Z   SMALLTALK_CI_CACHE: /home/runner/.smalltalkCI/_cache
2021-05-23T12:56:12.3651761Z   SMALLTALK_CI_VMS: /home/runner/.smalltalkCI/_cache/vms
2021-05-23T12:56:12.3652386Z   SMALLTALK_CI_CHANGES: /home/runner/.smalltalkCI/_builds/TravisCI.changes
2021-05-23T12:56:12.3653065Z   SMALLTALK_CI_IMAGE: /home/runner/.smalltalkCI/_builds/TravisCI.image
2021-05-23T12:56:12.3653679Z   SMALLTALK_CI_BUILD_BASE: /home/runner/.smalltalkCI/_builds
2021-05-23T12:56:12.3654320Z   SMALLTALK_CI_BUILD: /home/runner/.smalltalkCI/_builds
2021-05-23T12:56:12.3655679Z   GITHUB_TOKEN: ***
2021-05-23T12:56:12.3656040Z ##[endgroup]
2021-05-23T12:56:12.3852169Z [1m[34mPreparing folders...[0m
2021-05-23T12:56:12.3873913Z [1m[34mBuild folder already exists at /home/runner/.smalltalkCI/_builds.[0m
2021-05-23T12:56:12.5825319Z [1m[34mRaising real-time priority for OpenSmalltalk VMs with threaded heartbeat...[0m
2021-05-23T12:56:12.7570181Z Previous limits: soft=0; hard=0
2021-05-23T12:56:12.7571152Z New limits: soft=2; hard=2
2021-05-23T12:56:12.7644389Z [0m[34m > Time to run: 0.179s[0m
2021-05-23T12:56:12.7645316Z [1m[34mStarting Squeak build...[0m
2021-05-23T12:56:12.7678683Z [1m[34mDownloading Squeak64-trunk image...[0m
2021-05-23T12:56:14.0914827Z [0m[34m > Time to run: 1.321s[0m
2021-05-23T12:56:14.1149691Z [1m[34mDownloading virtual machine...[0m
2021-05-23T12:56:14.6365006Z [0m[34m > Time to run: 0.519s[0m
2021-05-23T12:56:14.6378512Z [1m[34mExtracting virtual machine...[0m
2021-05-23T12:56:14.7111188Z [1m[34mCog VM Information[0m
2021-05-23T12:56:14.7233367Z 5.0-202101260417  Tue Jan 26 04:21:47 UTC 2021 clang [Production Spur 64-bit VM]
2021-05-23T12:56:14.7236771Z CoInterpreter VMMaker.oscog-eem.2940 uuid: 29171f50-756f-4560-8488-ced65f2d4841 Jan 26 2021
2021-05-23T12:56:14.7238166Z StackToRegisterMappingCogit VMMaker.oscog-eem.2940 uuid: 29171f50-756f-4560-8488-ced65f2d4841 Jan 26 2021
2021-05-23T12:56:14.7240255Z VM: 202101260417 https://github.com/OpenSmalltalk/opensmalltalk-vm.git
2021-05-23T12:56:14.7241072Z Date: Mon Jan 25 20:17:24 2021 CommitHash: 010c20e
2021-05-23T12:56:14.7242422Z Plugins: 202101260417 https://github.com/OpenSmalltalk/opensmalltalk-vm.git
2021-05-23T12:56:14.7243752Z Linux travis-job-d4e7eb79-94f0-45b6-a055-aeda054d0983 4.15.0-1077-gcp #87~16.04.1-Ubuntu SMP Sat Jun 6 01:51:20 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
2021-05-23T12:56:14.7245416Z plugin path: /home/runner/.smalltalkCI/_cache/vms/Squeak64-trunk/sqcogspur64linuxht/lib/squeak/5.0-202101260417 [default: /home/runner/.smalltalkCI/_cache/vms/Squeak64-trunk/sqcogspur64linuxht/lib/squeak/5.0-202101260417/]
2021-05-23T12:56:14.7294823Z [0m[34m > Time to run: 0.017s[0m
2021-05-23T12:56:14.7329023Z [1m[34mPreparing Squeak64-trunk image for CI...[0m
2021-05-23T12:56:32.0257972Z ....[0m[34m > Time to run: 17.290s[0m
2021-05-23T12:56:35.3674076Z [1m[34mImage Information[0m
2021-05-23T12:56:35.3679375Z Image
2021-05-23T12:56:35.3680643Z -----
2021-05-23T12:56:35.3681173Z /home/runner/.smalltalkCI/_builds/TravisCI.image
2021-05-23T12:56:35.3681765Z Squeak6.0alpha
2021-05-23T12:56:35.3682195Z latest update: #20532
2021-05-23T12:56:35.3682691Z Current Change Set: HomeProject
2021-05-23T12:56:35.3683178Z Image format 68021 (64 bit)
2021-05-23T12:56:35.3683678Z Preferred bytecode set: SistaV1
2021-05-23T12:56:35.3684026Z 
2021-05-23T12:56:35.3684240Z 
2021-05-23T12:56:35.3684556Z  > Done in 1ms.
2021-05-23T12:56:35.3685147Z [1m[34mLoading project...[0m
2021-05-23T12:56:38.9542728Z 
2021-05-23T12:56:38.9545893Z Fetched -> BaselineOfAutoTDD-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9547410Z (ATDDBrowser is Undeclared) 
2021-05-23T12:56:38.9549152Z Loaded -> BaselineOfAutoTDD-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9551468Z Fetched -> BaselineOfAutoTDD-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9553729Z Loaded -> BaselineOfAutoTDD-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9555188Z Loading baseline of BaselineOfAutoTDD...
2021-05-23T12:56:38.9561426Z Fetched -> JSON-ul.35 --- http://www.squeaksource.com/JSON --- http://www.squeaksource.com/JSON
2021-05-23T12:56:38.9563922Z Fetched -> AutoTDD-Dummy-Success-Tests-swi.6 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9566447Z Fetched -> AutoTDD-Dummy-Failure-Tests-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9568863Z Fetched -> AutoTDD-Dummy-Error-Tests-swi.4 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9571981Z Fetched -> AutoTDD-Dummy-Category-be.9 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9574317Z Fetched -> AutoTDD-Exceptions-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9576435Z Fetched -> AutoTDD-Core-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9578449Z Fetched -> AutoTDD-GUI-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9580605Z Fetched -> AutoTDD-Dummy-Setting-Tests-swi.5 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9582794Z Fetched -> AutoTDD-Tests-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages
2021-05-23T12:56:38.9590808Z Loaded -> JSON-ul.35 --- http://www.squeaksource.com/JSON --- /home/runner/.smalltalkCI/_builds/package-cache
2021-05-23T12:56:38.9591861Z (ATDDBrowserTests is Undeclared) 
2021-05-23T12:56:38.9593227Z Loaded -> AutoTDD-Dummy-Success-Tests-swi.6 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:38.9595124Z Loaded -> AutoTDD-Dummy-Failure-Tests-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:38.9596928Z Loaded -> AutoTDD-Dummy-Error-Tests-swi.4 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:38.9597986Z (ATDDBrowserTests is Undeclared) 
2021-05-23T12:56:38.9599206Z Loaded -> AutoTDD-Dummy-Category-be.9 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:38.9600990Z Loaded -> AutoTDD-Exceptions-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:38.9602311Z ATDDLocalTestRunner>>buildTestSuiteFromClasses:(testSuite is shadowed)
2021-05-23T12:56:38.9603220Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9603791Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9604347Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9604915Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9605462Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9606032Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9606583Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9607309Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9607864Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9608464Z (ATDDSoundPlayer is Undeclared) 
2021-05-23T12:56:38.9609039Z (ATDDBrowser is Undeclared) 
2021-05-23T12:56:38.9609596Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9610142Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9610709Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9611271Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9611816Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9612379Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9612926Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9613483Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9614027Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9614588Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9615171Z (ATDDSoundPlayer is Undeclared) 
2021-05-23T12:56:38.9615842Z (ATDDBrowser is Undeclared) 
2021-05-23T12:56:38.9616386Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9616950Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9617496Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9618058Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9618608Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9619168Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9619731Z (ATDDOverview is Undeclared) 
2021-05-23T12:56:38.9620312Z (ATDDSoundPlayer is Undeclared) 
2021-05-23T12:56:38.9620902Z (ATDDBrowser is Undeclared) 
2021-05-23T12:56:40.8029107Z Loaded -> AutoTDD-Core-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:40.8030669Z Loaded -> AutoTDD-GUI-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:40.8032304Z Loaded -> AutoTDD-Dummy-Setting-Tests-swi.5 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:40.8033891Z ATDDBrowserTests>>testAddButtonAddsNewWatcherToList(preTestWatchers is shadowed)
2021-05-23T12:56:40.8035235Z ATDDTravisStatusTest>>testPauseResumeRun(travisStatus is shadowed)
2021-05-23T12:56:40.8036668Z Loaded -> AutoTDD-Tests-cypress.1 --- filetree:///home/runner/work/AutoTDD/AutoTDD/packages [:] --- cache
2021-05-23T12:56:40.8037880Z Evaluated -> baseline [BaselineOfAutoTDD] >> postLoad
2021-05-23T12:56:40.8038504Z ...finished baseline
2021-05-23T12:56:40.8038921Z  > Done in 5434ms.
2021-05-23T12:56:41.3581803Z [1m[34mTesting project...[0m
2021-05-23T12:56:41.3769497Z Running suite "Squeak64-trunk" with 69 tests.
2021-05-23T12:57:07.1408974Z ..........................................................Access denied...........Finished running suite: Squeak64-trunk
2021-05-23T12:57:07.8932725Z 
2021-05-23T12:57:07.8933268Z  > Done in 26535ms.
2021-05-23T12:57:07.9105441Z 
2021-05-23T12:57:07.9106558Z [1m[34m###################################################
2021-05-23T12:57:07.9107148Z [1m[34m# Squeak64-trunk                                  #
2021-05-23T12:57:07.9107832Z [1m[34m# 69 Tests with 0 Failures and 0 Errors in 25.76s #
2021-05-23T12:57:07.9108419Z [1m[34m###################################################
2021-05-23T12:57:07.9108834Z [0m
2021-05-23T12:57:07.9109233Z (69 tests passed)
2021-05-23T12:57:07.9109601Z [1m
2021-05-23T12:57:07.9109980Z ATDDTravisRepositoryTest
2021-05-23T12:57:07.9111495Z [0m[32m ✓[0m #testInitialization (0ms)[0m
2021-05-23T12:57:07.9112115Z [32m ✓[0m #testValidateSlug (1ms)[0m
2021-05-23T12:57:07.9112549Z [1m
2021-05-23T12:57:07.9112882Z ATDDTestRunnerTests
2021-05-23T12:57:07.9113481Z [0m[32m ✓[0m #testActiveAccessors (0ms)[0m
2021-05-23T12:57:07.9114087Z [32m ✓[0m #testConfigAccessors (0ms)[0m
2021-05-23T12:57:07.9114685Z [32m ✓[0m #testInitialization (0ms)[0m
2021-05-23T12:57:07.9115229Z [32m ✓[0m #testRunTests (0ms)[0m
2021-05-23T12:57:07.9116070Z [32m ✓[0m #testRunTestsThrowsSubclassResponsibility (0ms)[0m
2021-05-23T12:57:07.9117002Z [32m ✓[0m #testStatusAccessors (0ms)[0m
2021-05-23T12:57:07.9117625Z [32m ✓[0m #testStatusConsistency (0ms)[0m
2021-05-23T12:57:07.9118550Z [32m ✓[0m #testStatusMustBeASymbol (0ms)[0m
2021-05-23T12:57:07.9119061Z [1m
2021-05-23T12:57:07.9119456Z ATDDLocalTestRunnerTests
2021-05-23T12:57:07.9120215Z [0m[32m ✓[0m #testAddTestResult (45ms)[0m
2021-05-23T12:57:07.9120869Z [32m ✓[0m #testBuildEmptyTestSuite (30ms)[0m
2021-05-23T12:57:07.9121500Z [32m ✓[0m #testInitialization (30ms)[0m
2021-05-23T12:57:07.9122126Z [32m ✓[0m #testProgressAccessors (30ms)[0m
2021-05-23T12:57:07.9122795Z [32m ✓[0m #testProgressSettingNil (30ms)[0m
2021-05-23T12:57:07.9123409Z [32m ✓[0m #testRunTestSuite (47ms)[0m
2021-05-23T12:57:07.9123945Z [32m ✓[0m #testRunTests (47ms)[0m
2021-05-23T12:57:07.9124470Z [32m ✓[0m #testStatusSetter (53ms)[0m
2021-05-23T12:57:07.9125021Z [32m ✓[0m #testTestResult (40ms)[0m
2021-05-23T12:57:07.9125643Z [32m ✓[0m #testTestResultsAccessors (27ms)[0m
2021-05-23T12:57:07.9126497Z [32m ✓[0m #testTestResultsSettingNil (27ms)[0m
2021-05-23T12:57:07.9127201Z [32m ✓[0m #testTestSuiteAccessors (27ms)[0m
2021-05-23T12:57:07.9127904Z [32m ✓[0m #testTestSuiteSettingNil (27ms)[0m
2021-05-23T12:57:07.9128601Z [32m ✓[0m #testUpdateWatcherStatus (42ms)[0m
2021-05-23T12:57:07.9129270Z [32m ✓[0m #testWatcherAccessors (40ms)[0m
2021-05-23T12:57:07.9129737Z [1m
2021-05-23T12:57:07.9130077Z ATDDTravisClientTest
2021-05-23T12:57:07.9130642Z [0m[32m ✓[0m #testApiConnect (396ms)[0m
2021-05-23T12:57:07.9131192Z [32m ✓[0m #testInitialization (3ms)[0m
2021-05-23T12:57:07.9131744Z [32m ✓[0m #testTravisPro (0ms)[0m
2021-05-23T12:57:07.9132146Z [1m
2021-05-23T12:57:07.9132527Z ATDDNullTestRunnerTests
2021-05-23T12:57:07.9133143Z [0m[32m ✓[0m #testInitialization (0ms)[0m
2021-05-23T12:57:07.9133692Z [32m ✓[0m #testSingleton (0ms)[0m
2021-05-23T12:57:07.9134085Z [1m
2021-05-23T12:57:07.9134464Z ATDDWatcherResultsTests
2021-05-23T12:57:07.9135053Z [0m[32m ✓[0m #testHistoryEmpty (28ms)[0m
2021-05-23T12:57:07.9135648Z [32m ✓[0m #testHistoryFilling (2071ms)[0m
2021-05-23T12:57:07.9136441Z [32m ✓[0m #testHistoryPassingFailingErroring (3095ms)[0m
2021-05-23T12:57:07.9137156Z [32m ✓[0m #testRunButton (1049ms)[0m
2021-05-23T12:57:07.9137687Z [32m ✓[0m #testTestsEmpty (1048ms)[0m
2021-05-23T12:57:07.9138207Z [32m ✓[0m #testTestsMixed (1053ms)[0m
2021-05-23T12:57:07.9138935Z [32m ✓[0m #testTestsPassingFailingErroring (3094ms)[0m
2021-05-23T12:57:07.9139519Z [1m
2021-05-23T12:57:07.9139870Z ATDDTravisStatusTest
2021-05-23T12:57:07.9140381Z [0m[32m ✓[0m #testAttach (18ms)[0m
2021-05-23T12:57:07.9140908Z [32m ✓[0m #testConfiguration (448ms)[0m
2021-05-23T12:57:07.9141490Z [32m ✓[0m #testPauseResumeRun (2918ms)[0m
2021-05-23T12:57:07.9141947Z [1m
2021-05-23T12:57:07.9142252Z ATDDWatcherTests
2021-05-23T12:57:07.9142742Z [0m[32m ✓[0m #testAttach (19ms)[0m
2021-05-23T12:57:07.9143531Z [32m ✓[0m #testLocalProgressIsZeroPercentString (18ms)[0m
2021-05-23T12:57:07.9144204Z [1m
2021-05-23T12:57:07.9144520Z ATDDBrowserTests
2021-05-23T12:57:07.9145268Z [0m[32m ✓[0m #testAddButtonAddsNewWatcherToList (214ms)[0m
2021-05-23T12:57:07.9146243Z [32m ✓[0m #testChangingWatchedCategoriesWork (1189ms)[0m
2021-05-23T12:57:07.9147011Z [32m ✓[0m #testEditButtonWorks (245ms)[0m
2021-05-23T12:57:07.9147750Z [32m ✓[0m #testOverviewButtonIntegration (174ms)[0m
2021-05-23T12:57:07.9148678Z [32m ✓[0m #testPauseAllButtonPausesAllWatchers (751ms)[0m
2021-05-23T12:57:07.9149729Z [32m ✓[0m #testPauseButtonPausesSelectedWatcher (361ms)[0m
2021-05-23T12:57:07.9150793Z [32m ✓[0m #testResumeAllButtonResumesAllWatchers (738ms)[0m
2021-05-23T12:57:07.9151898Z [32m ✓[0m #testResumeButtonResumesSelectedWatcher (487ms)[0m
2021-05-23T12:57:07.9152895Z [32m ✓[0m #testRunAllButtonRunsEverything (1286ms)[0m
2021-05-23T12:57:07.9153789Z [32m ✓[0m #testRunButtonRunsSelectedWatcher (1288ms)[0m
2021-05-23T12:57:07.9154628Z [32m ✓[0m #testTravisInfoButtonWorks (1181ms)[0m
2021-05-23T12:57:07.9155382Z [32m ✓[0m #testWatcherInfoButtonWorks (340ms)[0m
2021-05-23T12:57:07.9156288Z [32m ✓[0m #testWatcherResultsButtonWorks (279ms)[0m
2021-05-23T12:57:07.9156858Z [1m
2021-05-23T12:57:07.9157183Z ATDDOverviewTests
2021-05-23T12:57:07.9157815Z [0m[32m ✓[0m #testIndicatorChangesOnRun (67ms)[0m
2021-05-23T12:57:07.9158648Z [32m ✓[0m #testIndicatorOpensResultWindows (76ms)[0m
2021-05-23T12:57:07.9159433Z [32m ✓[0m #testMessageChangesOnRun (66ms)[0m
2021-05-23T12:57:07.9160159Z [1m
2021-05-23T12:57:07.9160507Z ATDDSoundPlayerTest
2021-05-23T12:57:07.9161042Z [0m[32m ✓[0m #testLoadAbsent (0ms)[0m
2021-05-23T12:57:07.9161544Z [32m ✓[0m #testMuting (1ms)[0m
2021-05-23T12:57:07.9162179Z [32m ✓[0m #testWatcherChangePlaysSound (1034ms)[0m
2021-05-23T12:57:07.9162725Z [1m
2021-05-23T12:57:07.9163146Z ATDDTravisStatusResultsTests
2021-05-23T12:57:07.9164008Z [0m[32m ✓[0m #testCommitsPassingFailingErroring (66ms)[0m
2021-05-23T12:57:07.9166570Z [32m ✓[0m #testHistoryPassingFailingErroring (58ms)[0m
2021-05-23T12:57:07.9168006Z [32m ✓[0m #testMultipleTestingInstances (56ms)[0m
2021-05-23T12:57:07.9168646Z [1m
2021-05-23T12:57:07.9169102Z ATDDWorldIntegrationTests
2021-05-23T12:57:07.9169892Z [0m[32m ✓[0m #testWorldMenuIntegration (0ms)[0m
2021-05-23T12:57:07.9170472Z [1m
2021-05-23T12:57:07.9170870Z ATDDTravisParserTest
2021-05-23T12:57:07.9171516Z [0m[32m ✓[0m #testBuildHistory (2ms)[0m
2021-05-23T12:57:07.9172140Z [32m ✓[0m #testBuildMatrix (0ms)[0m
2021-05-23T12:57:07.9172802Z [32m ✓[0m #testCurrentBuildState (2ms)[0m
2021-05-23T12:57:07.9503859Z [32m ✓[0m #testEmptyCurrentBuildState (0ms)[0m
2021-05-23T12:57:07.9504392Z 
2021-05-23T12:57:07.9504599Z 
2021-05-23T12:57:07.9505316Z [1m[32m  Executed 69 Tests with 0 Failures and 0 Errors in 25.76s.[0m
2021-05-23T12:57:07.9505723Z 
2021-05-23T12:57:08.0503527Z 
2021-05-23T12:57:08.0504276Z 
2021-05-23T12:57:08.0505805Z [1m[34mUploading coverage results to Coveralls...[0m
2021-05-23T12:57:09.9262207Z {"message":"Job #868680028.11","url":"https://coveralls.io/jobs/80662200"}
2021-05-23T12:57:09.9349866Z Post job cleanup.
2021-05-23T12:57:10.0172665Z [command]/usr/bin/git version
2021-05-23T12:57:10.0240175Z git version 2.31.1
2021-05-23T12:57:10.0246603Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2021-05-23T12:57:10.0283402Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp ''core\.sshCommand'' && git config --local --unset-all ''core.sshCommand'' || :
2021-05-23T12:57:10.0481481Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2021-05-23T12:57:10.0510739Z http.https://github.com/.extraheader
2021-05-23T12:57:10.0517544Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2021-05-23T12:57:10.0549686Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp ''http\.https\:\/\/github\.com\/\.extraheader'' && git config --local --unset-all ''http.https://github.com/.extraheader'' || :
2021-05-23T12:57:10.0816054Z Cleaning up orphan processes
'