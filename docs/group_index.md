# Group Service Index

&nbsp;

## Operations

### Configuration Wrapper:  [Configuration](../services-api/pkg/service/group/configuration.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/group/v1/admin/namespaces/{namespace}/configuration` | GET | ListGroupConfigurationAdminV1Short | [ListGroupConfigurationAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [ListGroupConfigurationAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration` | POST | CreateGroupConfigurationAdminV1Short | [CreateGroupConfigurationAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [CreateGroupConfigurationAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/initiate` | POST | InitiateGroupConfigurationAdminV1Short | [InitiateGroupConfigurationAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [InitiateGroupConfigurationAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}` | GET | GetGroupConfigurationAdminV1Short | [GetGroupConfigurationAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [GetGroupConfigurationAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}` | DELETE | DeleteGroupConfigurationV1Short | [DeleteGroupConfigurationV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [DeleteGroupConfigurationV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}` | PATCH | UpdateGroupConfigurationAdminV1Short | [UpdateGroupConfigurationAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [UpdateGroupConfigurationAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}` | PUT | UpdateGroupConfigurationGlobalRuleAdminV1Short | [UpdateGroupConfigurationGlobalRuleAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [UpdateGroupConfigurationGlobalRuleAdminV1Short](../services-api/pkg/service/group/configuration.go) |
| `/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}` | DELETE | DeleteGroupConfigurationGlobalRuleAdminV1Short | [DeleteGroupConfigurationGlobalRuleAdminV1Short](../group-sdk/pkg/groupclient/configuration/configuration_client.go) | [DeleteGroupConfigurationGlobalRuleAdminV1Short](../services-api/pkg/service/group/configuration.go) |

### Group Wrapper:  [Group](../services-api/pkg/service/group/group.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/group/v1/admin/namespaces/{namespace}/groups` | GET | GetGroupListAdminV1Short | [GetGroupListAdminV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [GetGroupListAdminV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/admin/namespaces/{namespace}/groups/{groupId}` | GET | GetSingleGroupAdminV1Short | [GetSingleGroupAdminV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [GetSingleGroupAdminV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/admin/namespaces/{namespace}/groups/{groupId}` | DELETE | DeleteGroupAdminV1Short | [DeleteGroupAdminV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [DeleteGroupAdminV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups` | GET | GetGroupListPublicV1Short | [GetGroupListPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [GetGroupListPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups` | POST | CreateNewGroupPublicV1Short | [CreateNewGroupPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [CreateNewGroupPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}` | GET | GetSingleGroupPublicV1Short | [GetSingleGroupPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [GetSingleGroupPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}` | PUT | UpdateSingleGroupV1Short | [UpdateSingleGroupV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [UpdateSingleGroupV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}` | DELETE | DeleteGroupPublicV1Short | [DeleteGroupPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [DeleteGroupPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}` | PATCH | UpdatePatchSingleGroupPublicV1Short | [UpdatePatchSingleGroupPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [UpdatePatchSingleGroupPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom` | PUT | UpdateGroupCustomAttributesPublicV1Short | [UpdateGroupCustomAttributesPublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [UpdateGroupCustomAttributesPublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom` | PUT | UpdateGroupCustomRulePublicV1Short | [UpdateGroupCustomRulePublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [UpdateGroupCustomRulePublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}` | PUT | UpdateGroupPredefinedRulePublicV1Short | [UpdateGroupPredefinedRulePublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [UpdateGroupPredefinedRulePublicV1Short](../services-api/pkg/service/group/group.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}` | DELETE | DeleteGroupPredefinedRulePublicV1Short | [DeleteGroupPredefinedRulePublicV1Short](../group-sdk/pkg/groupclient/group/group_client.go) | [DeleteGroupPredefinedRulePublicV1Short](../services-api/pkg/service/group/group.go) |

### Group Member Wrapper:  [GroupMember](../services-api/pkg/service/group/groupMember.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/group/v1/admin/namespaces/{namespace}/groups/{groupId}/members` | GET | GetGroupMembersListAdminV1Short | [GetGroupMembersListAdminV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [GetGroupMembersListAdminV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept` | POST | AcceptGroupInvitationPublicV1Short | [AcceptGroupInvitationPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [AcceptGroupInvitationPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject` | POST | RejectGroupInvitationPublicV1Short | [RejectGroupInvitationPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [RejectGroupInvitationPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/join` | POST | JoinGroupV1Short | [JoinGroupV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [JoinGroupV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel` | POST | CancelGroupJoinRequestV1Short | [CancelGroupJoinRequestV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [CancelGroupJoinRequestV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/members` | GET | GetGroupMembersListPublicV1Short | [GetGroupMembersListPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [GetGroupMembersListPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/leave` | POST | LeaveGroupPublicV1Short | [LeaveGroupPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [LeaveGroupPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/users/{userId}` | GET | GetUserGroupInformationPublicV1Short | [GetUserGroupInformationPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [GetUserGroupInformationPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/users/{userId}/invite` | POST | InviteGroupPublicV1Short | [InviteGroupPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [InviteGroupPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/users/{userId}/join/accept` | POST | AcceptGroupJoinRequestPublicV1Short | [AcceptGroupJoinRequestPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [AcceptGroupJoinRequestPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/users/{userId}/join/reject` | POST | RejectGroupJoinRequestPublicV1Short | [RejectGroupJoinRequestPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [RejectGroupJoinRequestPublicV1Short](../services-api/pkg/service/group/groupMember.go) |
| `/group/v1/public/namespaces/{namespace}/users/{userId}/kick` | POST | KickGroupMemberPublicV1Short | [KickGroupMemberPublicV1Short](../group-sdk/pkg/groupclient/group_member/group_member_client.go) | [KickGroupMemberPublicV1Short](../services-api/pkg/service/group/groupMember.go) |

### Group Roles Wrapper:  [GroupRoles](../services-api/pkg/service/group/groupRoles.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/group/v1/admin/namespaces/{namespace}/roles` | GET | GetMemberRolesListAdminV1Short | [GetMemberRolesListAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [GetMemberRolesListAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/admin/namespaces/{namespace}/roles` | POST | CreateMemberRoleAdminV1Short | [CreateMemberRoleAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [CreateMemberRoleAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}` | GET | GetSingleMemberRoleAdminV1Short | [GetSingleMemberRoleAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [GetSingleMemberRoleAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}` | DELETE | DeleteMemberRoleAdminV1Short | [DeleteMemberRoleAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [DeleteMemberRoleAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}` | PATCH | UpdateMemberRoleAdminV1Short | [UpdateMemberRoleAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [UpdateMemberRoleAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions` | PUT | UpdateMemberRolePermissionAdminV1Short | [UpdateMemberRolePermissionAdminV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [UpdateMemberRolePermissionAdminV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/public/namespaces/{namespace}/roles` | GET | GetMemberRolesListPublicV1Short | [GetMemberRolesListPublicV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [GetMemberRolesListPublicV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members` | POST | UpdateMemberRolePublicV1Short | [UpdateMemberRolePublicV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [UpdateMemberRolePublicV1Short](../services-api/pkg/service/group/groupRoles.go) |
| `/group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members` | DELETE | DeleteMemberRolePublicV1Short | [DeleteMemberRolePublicV1Short](../group-sdk/pkg/groupclient/group_roles/group_roles_client.go) | [DeleteMemberRolePublicV1Short](../services-api/pkg/service/group/groupRoles.go) |

### Member Request Wrapper:  [MemberRequest](../services-api/pkg/service/group/memberRequest.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request` | GET | GetGroupJoinRequestPublicV1Short | [GetGroupJoinRequestPublicV1Short](../group-sdk/pkg/groupclient/member_request/member_request_client.go) | [GetGroupJoinRequestPublicV1Short](../services-api/pkg/service/group/memberRequest.go) |
| `/group/v1/public/namespaces/{namespace}/users/me/invite/request` | GET | GetGroupInvitationRequestPublicV1Short | [GetGroupInvitationRequestPublicV1Short](../group-sdk/pkg/groupclient/member_request/member_request_client.go) | [GetGroupInvitationRequestPublicV1Short](../services-api/pkg/service/group/memberRequest.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AssignRoleToMemberRequestV1` | [ModelsAssignRoleToMemberRequestV1 ](../group-sdk/pkg/groupclientmodels/models_assign_role_to_member_request_v1.go) |
| `models.CreateGroupConfigurationRequestV1` | [ModelsCreateGroupConfigurationRequestV1 ](../group-sdk/pkg/groupclientmodels/models_create_group_configuration_request_v1.go) |
| `models.CreateGroupConfigurationResponseV1` | [ModelsCreateGroupConfigurationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_create_group_configuration_response_v1.go) |
| `models.CreateMemberRoleRequestV1` | [ModelsCreateMemberRoleRequestV1 ](../group-sdk/pkg/groupclientmodels/models_create_member_role_request_v1.go) |
| `models.CreateMemberRoleResponseV1` | [ModelsCreateMemberRoleResponseV1 ](../group-sdk/pkg/groupclientmodels/models_create_member_role_response_v1.go) |
| `models.GetGroupConfigurationResponseV1` | [ModelsGetGroupConfigurationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_group_configuration_response_v1.go) |
| `models.GetGroupMemberListResponseV1` | [ModelsGetGroupMemberListResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_group_member_list_response_v1.go) |
| `models.GetGroupsListResponseV1` | [ModelsGetGroupsListResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_groups_list_response_v1.go) |
| `models.GetMemberRequestsListResponseV1` | [ModelsGetMemberRequestsListResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_member_requests_list_response_v1.go) |
| `models.GetMemberRoleResponseV1` | [ModelsGetMemberRoleResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_member_role_response_v1.go) |
| `models.GetMemberRolesListResponseV1` | [ModelsGetMemberRolesListResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_member_roles_list_response_v1.go) |
| `models.GetUserGroupInformationResponseV1` | [ModelsGetUserGroupInformationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_get_user_group_information_response_v1.go) |
| `models.GroupMember` | [ModelsGroupMember ](../group-sdk/pkg/groupclientmodels/models_group_member.go) |
| `models.GroupResponseV1` | [ModelsGroupResponseV1 ](../group-sdk/pkg/groupclientmodels/models_group_response_v1.go) |
| `models.GroupRule` | [ModelsGroupRule ](../group-sdk/pkg/groupclientmodels/models_group_rule.go) |
| `models.GroupRule.groupCustomRule` | [ModelsGroupRuleGroupCustomRule ](../group-sdk/pkg/groupclientmodels/models_group_rule_group_custom_rule.go) |
| `models.JoinGroupResponseV1` | [ModelsJoinGroupResponseV1 ](../group-sdk/pkg/groupclientmodels/models_join_group_response_v1.go) |
| `models.KickGroupMemberResponseV1` | [ModelsKickGroupMemberResponseV1 ](../group-sdk/pkg/groupclientmodels/models_kick_group_member_response_v1.go) |
| `models.LeaveGroupResponseV1` | [ModelsLeaveGroupResponseV1 ](../group-sdk/pkg/groupclientmodels/models_leave_group_response_v1.go) |
| `models.ListConfigurationResponseV1` | [ModelsListConfigurationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_list_configuration_response_v1.go) |
| `models.MemberRequestGroupResponseV1` | [ModelsMemberRequestGroupResponseV1 ](../group-sdk/pkg/groupclientmodels/models_member_request_group_response_v1.go) |
| `models.MemberRequestResponseV1` | [ModelsMemberRequestResponseV1 ](../group-sdk/pkg/groupclientmodels/models_member_request_response_v1.go) |
| `models.Pagination` | [ModelsPagination ](../group-sdk/pkg/groupclientmodels/models_pagination.go) |
| `models.PublicCreateNewGroupRequestV1` | [ModelsPublicCreateNewGroupRequestV1 ](../group-sdk/pkg/groupclientmodels/models_public_create_new_group_request_v1.go) |
| `models.RemoveRoleFromMemberRequestV1` | [ModelsRemoveRoleFromMemberRequestV1 ](../group-sdk/pkg/groupclientmodels/models_remove_role_from_member_request_v1.go) |
| `models.RolePermission` | [ModelsRolePermission ](../group-sdk/pkg/groupclientmodels/models_role_permission.go) |
| `models.Rule` | [ModelsRule ](../group-sdk/pkg/groupclientmodels/models_rule.go) |
| `models.RuleInformation` | [ModelsRuleInformation ](../group-sdk/pkg/groupclientmodels/models_rule_information.go) |
| `models.UpdateGroupConfigurationGlobalRulesRequestV1` | [ModelsUpdateGroupConfigurationGlobalRulesRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_configuration_global_rules_request_v1.go) |
| `models.UpdateGroupConfigurationRequestV1` | [ModelsUpdateGroupConfigurationRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_configuration_request_v1.go) |
| `models.UpdateGroupConfigurationResponseV1` | [ModelsUpdateGroupConfigurationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_configuration_response_v1.go) |
| `models.UpdateGroupCustomAttributesRequestV1` | [ModelsUpdateGroupCustomAttributesRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_custom_attributes_request_v1.go) |
| `models.UpdateGroupCustomRuleRequestV1` | [ModelsUpdateGroupCustomRuleRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_custom_rule_request_v1.go) |
| `models.UpdateGroupPredefinedRuleRequestV1` | [ModelsUpdateGroupPredefinedRuleRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_predefined_rule_request_v1.go) |
| `models.UpdateGroupRequestV1` | [ModelsUpdateGroupRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_group_request_v1.go) |
| `models.UpdateGroupRequestV1.customAttributes` | [ModelsUpdateGroupRequestV1CustomAttributes ](../group-sdk/pkg/groupclientmodels/models_update_group_request_v1_custom_attributes.go) |
| `models.UpdateMemberRolePermissionsRequestV1` | [ModelsUpdateMemberRolePermissionsRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_member_role_permissions_request_v1.go) |
| `models.UpdateMemberRoleRequestV1` | [ModelsUpdateMemberRoleRequestV1 ](../group-sdk/pkg/groupclientmodels/models_update_member_role_request_v1.go) |
| `models.UpdateMemberRoleResponseV1` | [ModelsUpdateMemberRoleResponseV1 ](../group-sdk/pkg/groupclientmodels/models_update_member_role_response_v1.go) |
| `models.UserInvitationResponseV1` | [ModelsUserInvitationResponseV1 ](../group-sdk/pkg/groupclientmodels/models_user_invitation_response_v1.go) |
| `response.ErrorResponse` | [ResponseErrorResponse ](../group-sdk/pkg/groupclientmodels/response_error_response.go) |
