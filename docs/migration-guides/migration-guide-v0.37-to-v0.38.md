<a name="v0.38.0"></a>

## [v0.38.0] - 2023-2-13

### BREAKING CHANGE

Following changes in OpenAPI spec:

1. In match2 service, due to fixing an issue in backend, the following model has been renamed and some of the field type has been changed.
    - (match2-sdk-/pkg/match2clientmodels/api_match_rule_set.go) match2clientmodels.APIMatchRuleSet -> (match2-sdk-/pkg/match2clientmodels/api_rule_set_payload.go) match2clientmodels.APIRuleSetPayload 