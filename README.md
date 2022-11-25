# ScoreSaber Audit

This is currently a very rough repo containing mostly technical information.
The audit process is still ongoing so please be patient.

## To-do

- [ ] Organise DLLs into their target game version
  - [x] Organise based on ModSaber data
  - [x] Organise based on BeatMods data
  - [ ] De-alias game versions
  - [ ] Verify versions are correct
- [ ] Grab dependency DLLs
  - [ ] Game Version DLLs
  - [ ] Mod DLLs
  - [ ] Strip dependency DLLs for hosting on the repo
- [ ] Deobfuscate
  - [ ] Deobfuscate all DLLs
  - [ ] Ensure deobfuscation was successfull
  - [ ] Create `.cs` files for all deobfuscated DLLs
- [ ] Generate diffs
  - [ ] Using `.cs` files from previous step generate `.diff` files for each incremental version
