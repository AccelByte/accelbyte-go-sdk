# [v0.81.0]

### BREAKING CHANGE

- Enum constants have been renamed to include the associated parameter name for better clarity and maintainability.
  The previous constants are now marked for deprecation and will be removed in a future release.
  Action Required: Please update your code to use the new constants going forward.

   ```diff
   - const AdminListAchievementsListOrderConstant = "listOrder"
   + const AdminListAchievementsSortByListOrderConstant = "listOrder"
     //                         ^^^^^^
   ```

### platform

- `ImportStoreByCSVParams` `Notes` field type changed from `string` to `*string`.

### dsartifact

- Service support removed.

### dslogmanager

- Service support removed.

### dsmc

- Service support removed.

### qosm

- Service support removed.

### sessionhistory

- Brought back service support but only for a few endpoints.

[v0.81.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.80.0..v0.81.0