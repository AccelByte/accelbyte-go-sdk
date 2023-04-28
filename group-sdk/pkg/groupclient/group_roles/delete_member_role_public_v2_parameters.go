// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// NewDeleteMemberRolePublicV2Params creates a new DeleteMemberRolePublicV2Params object
// with the default values initialized.
func NewDeleteMemberRolePublicV2Params() *DeleteMemberRolePublicV2Params {
	var ()
	return &DeleteMemberRolePublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteMemberRolePublicV2ParamsWithTimeout creates a new DeleteMemberRolePublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteMemberRolePublicV2ParamsWithTimeout(timeout time.Duration) *DeleteMemberRolePublicV2Params {
	var ()
	return &DeleteMemberRolePublicV2Params{

		timeout: timeout,
	}
}

// NewDeleteMemberRolePublicV2ParamsWithContext creates a new DeleteMemberRolePublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteMemberRolePublicV2ParamsWithContext(ctx context.Context) *DeleteMemberRolePublicV2Params {
	var ()
	return &DeleteMemberRolePublicV2Params{

		Context: ctx,
	}
}

// NewDeleteMemberRolePublicV2ParamsWithHTTPClient creates a new DeleteMemberRolePublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteMemberRolePublicV2ParamsWithHTTPClient(client *http.Client) *DeleteMemberRolePublicV2Params {
	var ()
	return &DeleteMemberRolePublicV2Params{
		HTTPClient: client,
	}
}

/*DeleteMemberRolePublicV2Params contains all the parameters to send to the API endpoint
for the delete member role public v2 operation typically these are written to a http.Request
*/
type DeleteMemberRolePublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsRemoveRoleFromMemberRequestV1
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*MemberRoleID
	  member Role ID

	*/
	MemberRoleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithTimeout(timeout time.Duration) *DeleteMemberRolePublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithContext(ctx context.Context) *DeleteMemberRolePublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithHTTPClient(client *http.Client) *DeleteMemberRolePublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithBody(body *groupclientmodels.ModelsRemoveRoleFromMemberRequestV1) *DeleteMemberRolePublicV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetBody(body *groupclientmodels.ModelsRemoveRoleFromMemberRequestV1) {
	o.Body = body
}

// WithGroupID adds the groupID to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithGroupID(groupID string) *DeleteMemberRolePublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithMemberRoleID adds the memberRoleID to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithMemberRoleID(memberRoleID string) *DeleteMemberRolePublicV2Params {
	o.SetMemberRoleID(memberRoleID)
	return o
}

// SetMemberRoleID adds the memberRoleId to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetMemberRoleID(memberRoleID string) {
	o.MemberRoleID = memberRoleID
}

// WithNamespace adds the namespace to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) WithNamespace(namespace string) *DeleteMemberRolePublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete member role public v2 params
func (o *DeleteMemberRolePublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteMemberRolePublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param memberRoleId
	if err := r.SetPathParam("memberRoleId", o.MemberRoleID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
