# ScoreSaber Audit

> **Warning**  
> This is currently a very rough repo containing mostly technical information.
> The audit process is still ongoing so please be patient.

> **Note**  
> This repo contains assemblies derived from Unity, Unity Dependencies, and Beat Saber.  
> These assemblies have been stripped, so no code is present inside them, only the class and method signatures, in order to comply with copyright law.
>
> This repo also contains redistributions of several OSS licenced plugins and libraries for Beat Saber.
> You can find their licences in the [Licenses](https://github.com/bsmg/scoresaber-audit/tree/main/Licenses) directory.

## To-do

- [ ] Organise DLLs into their target game version
  - [x] Organise based on ModSaber data
  - [x] Organise based on BeatMods data
  - [x] De-alias game versions
  - [ ] Verify versions are correct
- [ ] Grab dependency DLLs
  - [ ] Game Version DLLs
  - [ ] Mod DLLs
  - [x] Strip dependency DLLs for hosting on the repo
- [ ] Deobfuscate
  - [ ] Deobfuscate all DLLs
  - [ ] Ensure deobfuscation was successfull
  - [ ] Create `.cs` files for all deobfuscated DLLs
- [ ] Generate diffs
  - [ ] Using `.cs` files from previous step generate `.diff` files for each incremental version
